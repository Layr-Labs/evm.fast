import Flapjack.Pancake.Proofs.PanToTarget.PanInstalled

namespace InitE
open Flapjack Flapjack.Pancake.Proofs.PanToTarget

theorem panInstalled_intro {width : Nat} [NeZero width] {S Q : Type} (bytes : List (BitVec 8))
    (cbspace : Nat) (bitmaps : List (BitVec width)) (dataSp : Nat)
    (ffiNames : Option (List HolFfiName)) (regs : Nat × Nat) (mc : MachineConfig width S Q)
    (shmemExtra : List Compiler.Backend.LabToTarget.ShmemInfoNum) (ms : S)
    (pMem : BitVec width → WordLocW width) (pDom sdm' : BitVec width → Prop) (t : AsmState width) (m : BitVec width → WordLocW width)
    (bitmapPtr : BitVec width) (bitmapsDm sdm : BitVec width → Bool)
    (h :
let bytesInWord := Compiler.Backend.StackRemove.bytesInWord width
    let heapStackDm : BitVec width → Bool :=
      fun w => decide (t.regs regs.1 ≤ w ∧ w < t.regs regs.2)
    (∀ a, pDom a → m a = pMem a) ∧
    goodInitState mc ms bytes cbspace t m (fun w => heapStackDm w || bitmapsDm w) sdm ∧
    sdm' = (fun a => sdm a = true ∧ holByteAligned a = true) ∧
    holByteAligned (t.regs regs.1) = true ∧
    holByteAligned (t.regs regs.2) = true ∧
    holByteAligned bitmapPtr = true ∧
    t.regs regs.1 ≤ t.regs regs.2 ∧
    1024 * bytesInWord ≤ t.regs regs.2 - t.regs regs.1 ∧
    (∀ w, ¬ (heapStackDm w = true ∧ bitmapsDm w = true)) ∧
    m (t.regs regs.1) = .word bitmapPtr ∧
    m (t.regs regs.1 + bytesInWord) =
      .word (bitmapPtr + bytesInWord * BitVec.ofNat width bitmaps.length) ∧
    m (t.regs regs.1 + 2 * bytesInWord) =
      .word (bitmapPtr + bytesInWord * BitVec.ofNat width dataSp +
        bytesInWord * BitVec.ofNat width bitmaps.length) ∧
    m (t.regs regs.1 + 3 * bytesInWord) =
      .word (mc.target.getPc ms + BitVec.ofNat width bytes.length) ∧
    m (t.regs regs.1 + 4 * bytesInWord) =
      .word (mc.target.getPc ms + BitVec.ofNat width cbspace + BitVec.ofNat width bytes.length) ∧
    SetSep.star (Misc.wordList bitmapPtr (bitmaps.map WordLocW.word))
      (Misc.wordListExists (bitmapPtr + bytesInWord * BitVec.ofNat width bitmaps.length) dataSp)
      (SetSep.fun2Set (m, fun a => holByteAligned a = true ∧ bitmapsDm a = true)) ∧
    ffiNames = some mc.ffiNames ∧
    (∀ i, mmioPcsMinIndex mc.ffiNames = some i →
      shmemExtra.map (fun rec => (mc.target.getPc ms).toNat + rec.entryPc) =
          (mc.ffiEntryPcs.map BitVec.toNat).drop i ∧
        mc.mmioInfo = List.zip ((List.range shmemExtra.length).map (fun index => index + i))
          (shmemExtra.map fun rec => (rec.nbytes,
            Compiler.Encoders.Asm.HolAddr.addr rec.addrReg (BitVec.ofNat width rec.addrOff),
            rec.reg, BitVec.ofNat width rec.exitPc + mc.target.getPc ms)) ∧
        cbspace + bytes.length + Compiler.Backend.LabToTarget.ffiOffset * (i + 3) < 2 ^ width)) :
    panInstalled bytes cbspace bitmaps dataSp ffiNames regs mc shmemExtra ms pMem pDom sdm' := by
  exact ⟨t,m,bitmapPtr,bitmapsDm,sdm,h⟩

theorem panInstalled_metadata_congr {width : Nat} [NeZero width] {S Q : Type}
    (bytes : List (BitVec 8)) (cbspace : Nat) (bitmaps : List (BitVec width)) (dataSp : Nat)
    (ffiNames ffiNames2 : Option (List HolFfiName)) (regs regs2 : Nat × Nat)
    (mc : MachineConfig width S Q) (shmemExtra shmemExtra2 : List Compiler.Backend.LabToTarget.ShmemInfoNum)
    (ms : S) (pMem pMem2 : BitVec width → WordLocW width)
    (pDom pDom2 sdm sdm2 : BitVec width → Prop)
    (hn : ffiNames = ffiNames2) (hr : regs = regs2) (hx : shmemExtra = shmemExtra2)
    (hm : pMem = pMem2) (hd : pDom = pDom2) (hs : sdm = sdm2)
    (h : panInstalled bytes cbspace bitmaps dataSp ffiNames2 regs2 mc shmemExtra2 ms pMem2 pDom2 sdm2) :
    panInstalled bytes cbspace bitmaps dataSp ffiNames regs mc shmemExtra ms pMem pDom sdm := by
  cases hn; cases hr; cases hx; cases hm; cases hd; cases hs
  exact h

end InitE
