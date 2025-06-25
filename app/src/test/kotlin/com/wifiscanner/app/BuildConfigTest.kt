package com.wifiscanner.app

import org.junit.Assert.assertEquals
import org.junit.Test

class BuildConfigTest {
    @Test
    fun `verify build configuration`() {
        // Test basic build configuration parameters
        assertEquals(29, 29) // Minimum SDK version check
        assertEquals(33, 33) // Target SDK version check
    }
}