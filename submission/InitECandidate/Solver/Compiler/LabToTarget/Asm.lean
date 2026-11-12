import InitECandidate.Solver.Compiler.LabToTarget.Common
import Flapjack.Compiler.Backend.LabToTarget.CompileCorrect.Asm

/-!
# Bounded `Asm` cases: `Asmi (Inst i)` and `Asmi (JumpReg r)`

Flapjack's `compileCorrect_asmInst` and `compileCorrect_jumpReg`
(`Flapjack/Compiler/Backend/LabToTarget/CompileCorrect/Asm.lean`) restated for
`CompileCorrectForB`. The proofs are Flapjack's with the bounded line simulation
(`stepNopOfLine_bounded`, `stepOfLine_bounded`) and the bounded composition step.
-/

namespace InitECandidate.Solver.Compiler.LabToTarget

open Flapjack Flapjack.Compiler.Encoders Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Encoders.AsmSem Flapjack.Compiler.Encoders.AsmProps
open Flapjack.Compiler.Backend.LabSem Flapjack.Compiler.Backend.Semantics.TargetProps
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.LabLang Flapjack.Compiler.Backend.LabToTarget
open InitECandidate.Solver.EncoderBound

set_option autoImplicit false

/-- Bounded `compileCorrect_asmInst`. -/
theorem compileCorrectB_asmInst {width : Nat} [NeZero width] {S Q F : Type}
    {bound : HolAsm width → Nat} {q L : Nat}
    (s1 : LabSem.State width Config F) (i : HolInst width) (bytes : List (BitVec 8)) (n : Nat)
    (hclock : s1.clock ≠ 0) (hfetch : asmFetch s1 = some (.asm (.asmi (.inst i)) bytes n))
    (ih : ¬ (asmInst i s1).failed →
      CompileCorrectForB bound q L S Q (incPc (decClock (asmInst i s1)))) :
    CompileCorrectForB bound q L S Q s1 := by
  rintro res mc s2 code2 labs t1 ms1 p ⟨ht, hev, hres, hec, hrel, hcost⟩
  rw [evaluate] at hev
  simp only [hclock, ↓reduceIte, hfetch] at hev
  by_cases hf : (asmInst i s1).failed = true
  · simp only [hf, ↓reduceIte, Prod.mk.injEq] at hev; exact absurd hev.1.symm hres
  · simp only [hf, Bool.false_eq_true, ↓reduceIte] at hev
    obtain ⟨bytes', len', hok, hmem, hpos, hdis⟩ :=
      fetchedAsmLine hrel hfetch (by intro op re a h; cases h)
    simp only [lineOk, cbwToAsmHOL] at hok
    obtain ⟨htf, hout, hpost⟩ := instLemma i s1 mc code2 labs p t1 ms1 bytes' ms1
      ⟨hf, hrel, hpos⟩
    obtain ⟨l, ms2, hlq, hl⟩ := stepNopOfLine_bounded bound q hcost.2.1 s1.ffi hrel hec
      (.inst i) bytes' hmem hok.1 hok.2.2 hdis
      (by simpa [asmUpd, AsmSem.updPc] using htf)
      (fun a ha => by simpa [asmUpd, AsmSem.updPc] using hout a ha) (by intro x h; cases h)
    have hrel1 := (instLemma i s1 mc code2 labs p t1 ms1 bytes' ms2 ⟨hf, hrel, hpos⟩).2.2
      (hl 0).2.2.1
    have hrel' := stateRel_shiftInterfer _ _ _ _ _ _ _ l hrel1
    obtain ⟨hpc, hcode, hcl, hffi, hio, hiofp, hcc, hccfp, -⟩ := asmInstConsts i s1
    exact compileCorrect_step_bounded (s1' := incPc (decClock (asmInst i s1))) ht hec hcost
      hclock (fun k => ⟨(hl k).1, (hl k).2.1⟩) (lineSteps_le hcost hpos hlq)
      ⟨by simp [incPc, decClock, hcl], hffi, hio, hiofp, hcc, hccfp⟩ hrel' hev hres (ih hf)

/-- Bounded `compileCorrect_jumpReg`. -/
theorem compileCorrectB_jumpReg {width : Nat} [NeZero width] {S Q F : Type}
    {bound : HolAsm width → Nat} {q L : Nat}
    (s1 : LabSem.State width Config F) (r : Nat) (bytes : List (BitVec 8)) (n : Nat)
    (hclock : s1.clock ≠ 0) (hfetch : asmFetch s1 = some (.asm (.asmi (.jumpReg r)) bytes n))
    (ih : ∀ n1 n2 pc, s1.regs r = .loc n1 n2 → locToPc n1 n2 s1.code = some pc →
      CompileCorrectForB bound q L S Q (updPc pc (decClock s1))) :
    CompileCorrectForB bound q L S Q s1 := by
  rintro res mc s2 code2 labs t1 ms1 p ⟨ht, hev, hres, hec, hrel, hcost⟩
  rw [evaluate] at hev
  simp only [hclock, ↓reduceIte, hfetch] at hev
  cases hr : s1.regs r with
  | word _ => simp only [hr, Prod.mk.injEq] at hev; exact absurd hev.1.symm hres
  | loc n1 n2 =>
    simp only [hr] at hev
    cases hpc : locToPc n1 n2 s1.code with
    | none => simp only [hpc, Prod.mk.injEq] at hev; exact absurd hev.1.symm hres
    | some pc =>
      simp only [hpc] at hev
      obtain ⟨-, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -,
        c28, c29, c30, c31, -, -, -, -, -, -, -, ht1f, -, -, -, -, -, c45, -⟩ := id hrel
      have hreg : t1.regs r = p + BitVec.ofNat width (posVal pc 0 code2) := by
        have := c30 r
        rw [hr] at this
        simp only [wordLocVal, c28 n1 n2 pc hpc, Option.some.injEq] at this
        exact this.symm
      obtain ⟨bytes', len', hok, hmem, hpos, hdis⟩ :=
        fetchedAsmLine hrel hfetch (by intro op re a h; cases h)
      simp only [lineOk, cbwToAsmHOL] at hok
      have hal := stateRel_aligned_target hrel (encoderCorrect_of_bounded hec) pc
      obtain ⟨l, ms2, hlq, hl⟩ := stepOfLine_bounded bound q hcost.2.1 s1.ffi hrel hec _ bytes'
        hmem hok.1 hok.2.2 hdis
        (by simp [asmUpd, AsmSem.updPc, AsmSem.assertState, AsmSem.readReg, hreg, c45, hal, ht1f])
      have htrel := (hl 0).2.2.1
      simp only [asmUpd, AsmSem.updPc, AsmSem.assertState, AsmSem.readReg, hreg, c45, hal,
        Bool.not_true, Bool.false_or, ht1f] at htrel
      have hrel' := stateRel_shiftInterfer _ _ _ _ _ _ _ l
        (stateRel_frame hrel s1.regs s1.fpRegs s1.memory pc (s1.clock - 1) t1.regs t1.fpRegs
          t1.mem _ htrel c30 c29 (fun x hx => (c31 x hx).2.2) (fun _ _ => rfl) rfl)
      exact compileCorrect_step_bounded (s1' := LabSem.updPc pc (decClock s1)) ht hec hcost hclock
        (fun k => ⟨(hl k).1, (hl k).2.1⟩) (lineSteps_le hcost hpos hlq)
        ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩ hrel' hev hres (ih n1 n2 pc hr hpc)

end InitECandidate.Solver.Compiler.LabToTarget
