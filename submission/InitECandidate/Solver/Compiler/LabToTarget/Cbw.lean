import InitECandidate.Solver.Compiler.LabToTarget.Common
import Flapjack.Compiler.Backend.LabToTarget.CompileCorrect.Cbw

/-!
# Bounded `Asm (Cbw r1 r2)` case

Flapjack's `compileCorrect_cbw`
(`Flapjack/Compiler/Backend/LabToTarget/CompileCorrect/Cbw.lean`) restated for
`CompileCorrectForB`; the proof is Flapjack's with `stepNopOfLineMem_bounded` and the
bounded composition step.
-/

namespace InitECandidate.Solver.Compiler.LabToTarget

open Flapjack Flapjack.Compiler.Encoders Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Encoders.AsmSem Flapjack.Compiler.Encoders.AsmProps
open Flapjack.Compiler.Backend.LabSem Flapjack.Compiler.Backend.Semantics.TargetProps
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.LabLang Flapjack.Compiler.Backend.LabToTarget
open InitECandidate.Solver.EncoderBound

set_option autoImplicit false

/-- Bounded `compileCorrect_cbw`. -/
theorem compileCorrectB_cbw {width : Nat} [NeZero width] {S Q F : Type}
    {bound : HolAsm width → Nat} {q L : Nat}
    (s1 : LabSem.State width Config F) (r1 r2 : Nat)
    (bytes : List (BitVec 8)) (n : Nat)
    (hclock : s1.clock ≠ 0) (hfetch : asmFetch s1 = some (.asm (.cbw r1 r2) bytes n))
    (ih : ∀ w1 w2 newCb, s1.regs r1 = .word w1 → s1.regs r2 = .word w2 →
      wordSemBufferWrite s1.codeBuffer w1 (w2.setWidth 8) = some newCb →
      CompileCorrectForB bound q L S Q (incPc (decClock { s1 with codeBuffer := newCb }))) :
    CompileCorrectForB bound q L S Q s1 := by
  rintro res mc s2 code2 labs t1 ms1 p ⟨ht, hev, hres, hec, hrel, hcost⟩
  rw [evaluate] at hev
  simp only [hclock, ↓reduceIte, hfetch] at hev
  cases hr1 : s1.regs r1 with
  | loc _ _ => simp only [hr1] at hev; exact absurd (Prod.mk.inj hev).1.symm hres
  | word w1 =>
  cases hr2 : s1.regs r2 with
  | loc _ _ => simp only [hr1, hr2] at hev; exact absurd (Prod.mk.inj hev).1.symm hres
  | word w2 =>
  simp only [hr1, hr2] at hev
  cases hbw : wordSemBufferWrite s1.codeBuffer w1 (w2.setWidth 8) with
  | none => simp only [hbw] at hev; exact absurd (Prod.mk.inj hev).1.symm hres
  | some newCb =>
  simp only [hbw] at hev
  have hbw' := hbw
  simp only [wordSemBufferWrite] at hbw'
  split at hbw'
  case isFalse => cases hbw'
  case isTrue hcond =>
  cases hbw'
  obtain ⟨haddr, hsp⟩ := hcond
  have haddr' : w1 = s1.codeBuffer.position + BitVec.ofNat width s1.codeBuffer.buffer.length := by
    rw [← haddr]; simp
  obtain ⟨-, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -,
    -, -, c30, -, c32, -, c34, -, c36, -, -, ht1f, -, htpc, -, -, -, -, -, c47, -⟩ := id hrel
  have htr1 : t1.regs r1 = w1 := by
    have := c30 r1; rw [hr1] at this; simpa [wordLocVal] using this.symm
  have htr2 : t1.regs r2 = w2 := by
    have := c30 r2; rw [hr2] at this; simpa [wordLocVal] using this.symm
  have hw0 := c32 0 hsp
  simp only [Nat.add_zero] at hw0
  obtain ⟨bytes', len', hok, hmem, hpos, hdis⟩ :=
    fetchedAsmLine hrel hfetch (by intro op re a h; cases h)
  simp only [lineOk, cbwToAsmHOL] at hok
  have hA : AsmSem.addrHOL (.addr r1 0#width) t1 = w1 := by
    simp [AsmSem.addrHOL, AsmSem.readReg, htr1]
  have hdom : t1.memDomain w1 := haddr' ▸ hw0.1
  have hupd : AsmSem.instUpd (.mem .store8 r2 (.addr r1 0#width)) t1 =
      { t1 with mem := fun x => if x = w1 then w2.setWidth 8 else t1.mem x } := by
    simp only [AsmSem.instUpd, AsmSem.memOp, asm_memStore_eq, hA,
      holLOG2_one, holAligned_zero, Nat.sub_self, BitVec.add_zero, ite_self, rmwOk,
      hdom, decide_true, Bool.and_true, wmwMem, AsmSem.readReg, htr2]
    simp [AsmSem.assertState, ht1f]
  have hupd' : AsmSem.instUpd (.mem .store8 r2 (.addr r1 (0 : BitVec width))) t1 =
      { t1 with mem := fun x => if x = w1 then w2.setWidth 8 else t1.mem x } := hupd
  -- the line itself is below the code-buffer address
  have hbound := posVal_bound (s1.pc + 1) 0 code2 _ labs _ 0 c47
  rw [hpos] at hbound
  have hb2 : bytesInMemHOL (p + BitVec.ofNat width (posVal s1.pc 0 code2)) bytes'
      (fun x => if x = w1 then w2.setWidth 8 else t1.mem x) t1.memDomain
      (fun a => s1.memDomain a = true) := by
    refine bytesInMem_update _ _ _ _ _ _ _ ⟨fun k hk => ?_, hmem⟩
    rw [haddr', c34, BitVec.add_assoc, BitVec.add_assoc, ← BitVec.ofNat_add, ← BitVec.ofNat_add]
    exact add_ofNat_ne p _ _ (by omega) (by omega) (by omega)
  obtain ⟨l, ms2, hlq, hl⟩ := stepNopOfLineMem_bounded bound q hcost.2.1 s1.ffi hrel hec _ bytes'
    hmem hok.1 hok.2.2 hdis
    (by simp [asmUpd, AsmSem.updPc, hupd, ht1f])
    (by
      simp only [asmUpd, AsmSem.updPc, hupd']
      rw [htpc]; exact bytesInMem_impliesMemory _ _ _ _ _ hb2)
    (by intro x h; cases h)
  have htrel := (hl 0).2.2.1
  simp only [asmUpd, AsmSem.updPc, hupd', haddr'] at htrel
  have hrel1 := stateRel_cbw hrel (w2.setWidth 8) hsp _ htrel
    (by rw [htpc, BitVec.add_assoc, ← BitVec.ofNat_add, hpos])
  have hrel' := stateRel_shiftInterfer _ _ _ _ _ _ _ l hrel1
  exact compileCorrect_step_bounded (s1' := incPc (decClock { s1 with
      codeBuffer := ⟨s1.codeBuffer.position, s1.codeBuffer.buffer ++ [w2.setWidth 8],
        s1.codeBuffer.spaceLeft - 1⟩ })) ht hec hcost hclock
    (fun k => ⟨(hl k).1, (hl k).2.1⟩) (lineSteps_le hcost hpos hlq)
    ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩ hrel' hev hres (ih w1 w2 _ hr1 hr2 hbw)

end InitECandidate.Solver.Compiler.LabToTarget
