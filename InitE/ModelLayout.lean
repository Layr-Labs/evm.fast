import InitE.Parameters
import Guest.Model

namespace InitE

theorem source_input_layout :
    Guest.inputAddr = BitVec.ofNat 64 inputStart ∧
    Guest.inputArenaSize = BitVec.ofNat 64 inputSize ∧
    Guest.maxInputBytes = inputSize - 16 := by decide

theorem source_work_layout :
    Guest.heapBase = BitVec.ofNat 64 sourceBase ∧
    Guest.scratchBase = BitVec.ofNat 64 scratchStart ∧
    Guest.heapEnd = BitVec.ofNat 64 heapEnd ∧
    Guest.outputAddr = BitVec.ofNat 64 outputStart := by decide

theorem startup_bitmap_end :
    Guest.startupHeaders[1]?.getD 0 =
      Guest.startupHeaders[0]?.getD 0 + BitVec.ofNat 64 (8 * 4603) := by decide

theorem startup_first_word : Guest.guestInitialMemory Guest.heapBase =
    some (.word 0xa0020018) := by rfl

theorem startup_last_word : Guest.guestInitialMemory (Guest.heapBase + 32) =
    some (.word 0x800f1000) := by rfl

end InitE
