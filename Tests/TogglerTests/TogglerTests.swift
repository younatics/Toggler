//
//  TogglerTests.swift
//  TogglerTests
//
//  Deterministic tests for the single-selection toggle group. These run
//  headlessly on the simulator using a lightweight Togglable stub.
//

import XCTest
@testable import Toggler

@MainActor
final class TogglerTests: XCTestCase {

    func testDefaultSelectsGivenIndex() {
        let a = ToggleStub(), b = ToggleStub(), c = ToggleStub()
        _ = Toggler(default: 1, togglers: [a, b, c])
        XCTAssertFalse(a.isOn)
        XCTAssertTrue(b.isOn)
        XCTAssertFalse(c.isOn)
    }

    func testOnSelectsExactlyOne() {
        let a = ToggleStub(), b = ToggleStub()
        let toggler = Toggler(default: 0, togglers: [a, b])
        toggler.on(toggle: b)
        XCTAssertFalse(a.isOn)
        XCTAssertTrue(b.isOn)
    }

    func testOnAtIndexSelectsExactlyOne() {
        let a = ToggleStub(), b = ToggleStub(), c = ToggleStub()
        let toggler = Toggler(default: 0, togglers: [a, b, c])
        toggler.onAt(index: 2)
        XCTAssertFalse(a.isOn)
        XCTAssertFalse(b.isOn)
        XCTAssertTrue(c.isOn)
    }

    func testAddExtendsGroup() {
        let a = ToggleStub()
        var toggler = Toggler(default: 0, togglers: [a])
        let b = ToggleStub()
        toggler.add(toggle: b)
        toggler.on(toggle: b)
        XCTAssertFalse(a.isOn)
        XCTAssertTrue(b.isOn)
    }
}

@MainActor
private final class ToggleStub: Togglable {
    private(set) var isOn = false
    func selectedToggle(select: Bool) { isOn = select }
}
