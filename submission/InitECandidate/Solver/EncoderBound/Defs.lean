import Flapjack.RiscV.CorrectnessEncoding.Complete
import Batteries.Tactic.OpenPrivate

/-!
# Bounded encoder correctness: definitions

`encoderCorrectBounded t bound` is Flapjack's `encoderCorrect t`
(`Flapjack/Compiler/Encoders/AsmProps/EncoderCorrect.lean`) with the existential
step witness `n` additionally bounded by `bound i`. The body is unchanged.

For the RISC-V target the witness `n` of `asserts n ...` is the number of
machine `next` steps minus one, and every per-constructor proof of Flapjack
picks `n ≤ (riscvAst i).length - 1`, so `riscvStepBound i + 1` is the number of
emitted machine instructions (`(riscvEnc i).length / 4`); no NOP padding exists
in the RISC-V lowering.
-/

namespace InitECandidate.Solver.EncoderBound

open Flapjack Flapjack.RiscV.L3 Flapjack.Compiler.Encoders.Asm
  Flapjack.Compiler.Encoders.AsmSem Flapjack.Compiler.Encoders.AsmProps
  Flapjack.Compiler.Encoders.RiscV.Target Flapjack.RiscV.TargetProof

set_option autoImplicit false

/-- Flapjack's `encoderCorrect` with the step witness bounded by `bound i`. -/
noncomputable def encoderCorrectBounded {width : Nat} [NeZero width] {β γ : Type}
    (t : HolAsmTarget width β γ) (bound : HolAsm width → Nat) : Prop :=
  targetOk t ∧
    ∀ (s1 : AsmState width) (i : HolAsm width) (s2 : AsmState width) (ms : β),
      asmStep t.config s1 i s2 ∧ targetStateRel t s1 ms →
      ∃ n : Nat, n ≤ bound i ∧ ∀ env : Nat → β → β,
        interferenceOk env (t.proj s1.memDomain) →
        let pcs := allPcs (t.config.encode i).length s1.pc
        asserts n (fun k s => env (n - k) (t.next s)) ms
            (fun ms' => t.stateOk ms' = true ∧
              (∀ pc, pc ∈ pcs 0 → t.getByte ms' pc = t.getByte ms pc) ∧
              t.getPc ms' ∈ pcs t.config.codeAlignment)
            (fun ms' => targetStateRel t s2 ms') ∧
          asserts2 (n + 1) (fun k => env (n + 1 - k)) t.next ms
            (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x → t.getByte ms1 x = t.getByte ms2 x)

/-- Forgetting the bound recovers Flapjack's `encoderCorrect`. -/
theorem encoderCorrect_of_bounded {width : Nat} [NeZero width] {β γ : Type}
    {t : HolAsmTarget width β γ} {bound : HolAsm width → Nat}
    (h : encoderCorrectBounded t bound) : encoderCorrect t := by
  refine ⟨h.1, fun s1 i s2 ms hs => ?_⟩
  obtain ⟨n, -, hn⟩ := h.2 s1 i s2 ms hs
  exact ⟨n, hn⟩

/-- A bound can always be weakened pointwise. -/
theorem encoderCorrectBounded_mono {width : Nat} [NeZero width] {β γ : Type}
    {t : HolAsmTarget width β γ} {b b' : HolAsm width → Nat}
    (h : encoderCorrectBounded t b) (le : ∀ i, b i ≤ b' i) :
    encoderCorrectBounded t b' := by
  refine ⟨h.1, fun s1 i s2 ms hs => ?_⟩
  obtain ⟨n, hb, hn⟩ := h.2 s1 i s2 ms hs
  exact ⟨n, Nat.le_trans hb (le i), hn⟩

/-- Step-witness bound for the RISC-V target: the number of emitted machine
instructions minus one (`asserts n` takes `n + 1` machine steps). -/
def riscvStepBound (i : HolAsm 64) : Nat := (riscvAst i).length - 1

theorem riscvAst_length_pos (i : HolAsm 64) : 0 < (riscvAst i).length := by
  have h := (riscv_encoding i).2
  have hl := riscvEnc_length_eq i
  have : (riscvEnc i).length ≠ 0 := fun e => h (List.eq_nil_of_length_eq_zero e)
  omega

/-- `riscvStepBound i + 1` is exactly the number of emitted machine instructions. -/
theorem riscvStepBound_add_one (i : HolAsm 64) :
    riscvStepBound i + 1 = (riscvAst i).length := by
  have := riscvAst_length_pos i
  unfold riscvStepBound
  omega

/-- `riscvStepBound i + 1` is the encoded byte length divided by four. -/
theorem riscvStepBound_add_one_mul_four (i : HolAsm 64) :
    4 * (riscvStepBound i + 1) = (riscvEnc i).length := by
  rw [riscvStepBound_add_one, riscvEnc_length_eq]

theorem riscvStepBound_eq_of_encode_length {i : HolAsm 64} {k : Nat}
    (h : (riscvConfig.encode i).length = 4 * (k + 1)) : riscvStepBound i = k := by
  have e := riscvStepBound_add_one_mul_four i
  change (riscvEnc i).length = _ at h
  omega

theorem riscvConst32_length (r : BitVec 5) (i : BitVec 32) : (riscvConst32 r i).length = 2 := by
  unfold riscvConst32
  split <;> rfl

/-- The RISC-V lowering emits at most six machine instructions per ASM instruction. -/
theorem riscvAst_length_le_six (i : HolAsm 64) : (riscvAst i).length ≤ 6 := by
  fun_cases riscvAst i <;> simp_all [riscvConst32_length, riscvEncodeFail]

/-- Uniform literal bound: every ASM instruction takes at most `5 + 1` machine steps. -/
theorem riscvStepBound_le_five (i : HolAsm 64) : riscvStepBound i ≤ 5 := by
  have := riscvAst_length_le_six i
  unfold riscvStepBound
  omega

/-! Per-case witness facts used by the restated constructor proofs. -/

theorem riscvStepBound_longMul (hi lo r1 r2 : Nat) :
    riscvStepBound (.inst (.arith (.longMul hi lo r1 r2))) = 1 := rfl

theorem riscvStepBound_loc (r : Nat) (c : BitVec 64) :
    riscvStepBound (.loc r c) = 1 := rfl

theorem riscvStepBound_jump_far (c : BitVec 64)
    (far : ¬(-1048576 ≤ c.toInt ∧ c.toInt ≤ 1048575)) :
    riscvStepBound (.jump c) = 1 := by
  have notnear : ¬((18446744073708503040#64).sle c = true ∧ c.sle (1048575#64) = true) := by
    intro h
    apply far
    simp only [BitVec.sle_eq_decide, decide_eq_true_eq] at h
    change -1048576 ≤ c.toInt ∧ c.toInt ≤ 1048575 at h
    exact h
  simp [riscvStepBound, riscvAst, inSignedRange, notnear]

theorem riscvStepBound_call_far (c : BitVec 64)
    (far : ¬(-1048576 ≤ c.toInt ∧ c.toInt ≤ 1048575)) :
    riscvStepBound (.call c) = 1 := by
  have notnear : ¬((18446744073708503040#64).sle c = true ∧ c.sle (1048575#64) = true) := by
    intro h
    apply far
    simp only [BitVec.sle_eq_decide, decide_eq_true_eq] at h
    change -1048576 ≤ c.toInt ∧ c.toInt ≤ 1048575 at h
    exact h
  simp [riscvStepBound, riscvAst, inSignedRange, notnear]

theorem riscvStepBound_jumpCmp_near_imm (c : Cmp) (r : Nat) (i a : BitVec 64)
    (range : -4092 ≤ a.toInt ∧ a.toInt ≤ 4095) :
    riscvStepBound (.jumpCmp c r (.imm i) a) = 1 := by
  apply riscvStepBound_eq_of_encode_length
  rw [JumpCmp.near_immediate_encoding c r i a range]
  simp [length_riscv_encode]

theorem riscvStepBound_jumpCmp_near_test (c : Cmp) (r t : Nat) (a : BitVec 64)
    (range : -4092 ≤ a.toInt ∧ a.toInt ≤ 4095) (test : c = .test ∨ c = .notTest) :
    riscvStepBound (.jumpCmp c r (.reg t) a) = 1 := by
  apply riscvStepBound_eq_of_encode_length
  rw [JumpCmp.near_register_test_encoding c r t a range test]
  simp [length_riscv_encode]

theorem riscvStepBound_jumpCmp_far_imm (c : Cmp) (r : Nat) (i a : BitVec 64)
    (far : ¬(-4092 ≤ a.toInt ∧ a.toInt ≤ 4095)) :
    riscvStepBound (.jumpCmp c r (.imm i) a) = 2 := by
  apply riscvStepBound_eq_of_encode_length
  rw [JumpCmp.far_immediate_encoding c r i a far]
  simp [length_riscv_encode]

theorem riscvStepBound_jumpCmp_far_simple (c : Cmp) (r t : Nat) (a : BitVec 64)
    (far : ¬(-4092 ≤ a.toInt ∧ a.toInt ≤ 4095)) (simple : c ≠ .test ∧ c ≠ .notTest) :
    riscvStepBound (.jumpCmp c r (.reg t) a) = 1 := by
  apply riscvStepBound_eq_of_encode_length
  rw [JumpCmp.far_register_simple_encoding c r t a far simple]
  simp [length_riscv_encode]

theorem riscvStepBound_jumpCmp_far_test (c : Cmp) (r t : Nat) (a : BitVec 64)
    (far : ¬(-4092 ≤ a.toInt ∧ a.toInt ≤ 4095)) (test : c = .test ∨ c = .notTest) :
    riscvStepBound (.jumpCmp c r (.reg t) a) = 2 := by
  apply riscvStepBound_eq_of_encode_length
  rw [JumpCmp.far_register_test_encoding c r t a far test]
  simp [length_riscv_encode]

end InitECandidate.Solver.EncoderBound
