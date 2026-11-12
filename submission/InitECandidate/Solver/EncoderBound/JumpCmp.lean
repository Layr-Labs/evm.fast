import InitECandidate.Solver.EncoderBound.Jump

/-!
Bounded restatements of Flapjack's RISC-V JumpCmp encoder cases.

Each theorem is the Flapjack constructor theorem (pinned flapjack rev
034bb5a1ed0b757082768d5406206bd2f8e31b7c) with `n ≤ riscvStepBound i ∧` added to its
conclusion and the bound proved at Flapjack's own `refine ⟨witness, ?_⟩`; the rest of
each proof is unchanged and Flapjack's private helpers are reused via `open private`.
The case modules import each other linearly only to serialize their builds
(each Lean process peaks at about 4 GiB RSS).
-/

namespace Flapjack.RiscV.TargetProof.JumpCmp
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmProps Compiler.Encoders.AsmSem Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.JumpCmp.near_reg_simple` (JumpCmp/NearReg.lean); the proof is Flapjack's with the witness bound added. -/
theorem near_reg_simple_bounded (cmp : Cmp) (r1 r2 : Nat) (a : BitVec 64)
    (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.jumpCmp cmp r1 (.reg r2) a) s2 ∧ targetStateRel riscvTarget s1 ms)
    (range : -4092 ≤ a.toInt ∧ a.toInt ≤ 4095)
    (simple : cmp ≠ .test ∧ cmp ≠ .notTest) :
    ∃ n : Nat, n ≤ riscvStepBound (.jumpCmp cmp r1 (.reg r2) a) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.jumpCmp cmp r1 (.reg r2) a)).length s1.pc
      asserts n (fun k s => env (n-k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n+1) (fun k => env (n+1-k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  have hs : asmStep riscvConfig s1 (.jumpCmp cmp r1 (.reg r2) a) s2 := h.1
  have guard := source_guard cmp r1 (.reg r2) a hs.2.2.2.2.2.2
  have g2 : asmRegOkExact r2 riscvConfig = true := by
    simpa [asmRegImmOkExact] using guard.2.2.2
  have read1 := reg_read r1 s1 ms guard.2.2.1 h.2
  have read2 := reg_read r2 s1 ms g2 h.2
  have offset : ((a.sshiftRight 1).setWidth 12).signExtend 64 <<< (1 : Nat) = a := by
    simpa using near_offset_prefix0 a range guard.2.1
  have bounds : (18446744073709547524#64).sle a = true ∧ a.sle (4095#64) = true := by
    simp only [BitVec.sle_eq_decide,decide_eq_true_eq]
    exact range
  have enc : riscvConfig.encode (.jumpCmp cmp r1 (.reg r2) a) =
      riscvEncode (simple_branch cmp (BitVec.ofNat 5 r1) (BitVec.ofNat 5 r2) ((a.sshiftRight 1).setWidth 12)) := by
    cases cmp
    case test => exact False.elim (simple.1 rfl)
    case notTest => exact False.elim (simple.2 rfl)
    all_goals simp [riscvConfig,riscvEnc,riscvAst,inSignedRange,bounds.1,bounds.2,simple_branch]
  have hb := hs.1
  rw [enc] at hb
  have bytes := bytes_in_memory_thm () s1 ms _ _ _ _ ⟨h.2,hb⟩
  have pc := h.2.2.1
  change ms.c_PC ms.procID = s1.pc at pc
  have hn := simple_branch_next cmp (BitVec.ofNat 5 r1) (BitVec.ofNat 5 r2)
    ((a.sshiftRight 1).setWidth 12) ms h.2.1 simple
    ⟨bytes.2.2.2.2.2.1,bytes.2.2.2.2.2.2.1,
      bytes.2.2.2.2.2.2.2.1,bytes.2.2.2.2.2.2.2.2.1⟩
  let dest := if wordCmpHOL cmp (readReg r1 s1) (readReg r2 s1) then s1.pc+a else s1.pc+4
  have next : riscvTarget.next ms = Jump.branchPost ms dest := by
    change holThe (NextRISCV ms) = _
    rw [hn,offset,pc,read1,read2]
    rfl
  have initial_aligned : holAligned 2 s1.pc = true := by
    simpa [pc] using (riscvOk_iff ms).mp h.2.1 |>.2.2.2.2
  have aligned : holAligned 2 dest = true := by
    dsimp [dest]
    split
    · exact Jump.aligned_add s1.pc a initial_aligned guard.2.1
    · exact Jump.aligned_add s1.pc 4 initial_aligned (by decide)
  have post : s2 = updPc dest s1 := by
    have original := source_post cmp r1 (.reg r2) a s1 s2 hs
    rw [enc] at original
    dsimp [dest]
    split <;> rename_i chosen
    all_goals simpa [riscvEncode,regImm,chosen] using original
  have hp := Jump.branch_post_rel s1 ms dest h.2 aligned
  rw [← post] at hp
  refine ⟨0, Nat.zero_le _, ?_⟩
  intro env interference
  have projection := interference 0 (Jump.branchPost ms dest)
  have transport := (riscv_target_ok.2 (env 0 (Jump.branchPost ms dest))
    (Jump.branchPost ms dest) s2
    (by simpa [post,updPc] using projection)).1
  constructor
  · simpa [asserts,next] using transport.mpr hp
  · simp only [asserts2]
    rw [next]
    exact ⟨fun _ _ => rfl,trivial⟩

end Flapjack.RiscV.TargetProof.JumpCmp

namespace Flapjack.RiscV.TargetProof.JumpCmp
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmSem Compiler.Encoders.AsmProps Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.JumpCmp.near_register_test_case` (JumpCmp/NearRegTest.lean); the proof is Flapjack's with the witness bound added. -/
theorem near_register_test_case_bounded (c : Cmp) (r t : Nat) (a : BitVec 64)
    (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.jumpCmp c r (.reg t) a) s2 ∧
      targetStateRel riscvTarget s1 ms)
    (range : -4092 ≤ a.toInt ∧ a.toInt ≤ 4095)
    (test : c = .test ∨ c = .notTest) :
    ∃ n : Nat, n ≤ riscvStepBound (.jumpCmp c r (.reg t) a) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.jumpCmp c r (.reg t) a)).length s1.pc
      asserts n (fun k s => env (n-k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n+1) (fun k => env (n+1-k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  refine ⟨1, Nat.le_of_eq (riscvStepBound_jumpCmp_near_test c r t a range test).symm, ?_⟩
  intro env interference
  have hs : asmStep riscvConfig s1 (.jumpCmp c r (.reg t) a) s2 := h.1
  let value := register_test_value c r t s1
  let mid := writePost ms (31#5) value
  let src := updPc (s1.pc + 4) (updReg 31 value s1)
  let dest := register_test_dest c r t a s1
  have first : riscvTarget.next ms = mid := near_register_test_first c r t a s1 s2 ms h range test
  have second : riscvTarget.next (env 0 mid) = Jump.branchPost (env 0 mid) dest :=
    near_register_test_second c r t a s1 s2 ms h range test env interference
  have rel : targetStateRel riscvTarget src (env 0 mid) :=
    scratch_interference_rel s1 ms value env h.2 interference
  have guard := source_guard c r (.reg t) a hs.2.2.2.2.2.2
  have initial_aligned : holAligned 2 s1.pc = true := by
    have pc : ms.c_PC ms.procID = s1.pc := h.2.2.1
    simpa [pc] using (riscvOk_iff ms).mp h.2.1 |>.2.2.2.2
  have aligned : holAligned 2 dest = true := by
    dsimp [dest, register_test_dest]
    split
    · exact Jump.aligned_add s1.pc a initial_aligned guard.2.1
    · exact Jump.aligned_add s1.pc 8 initial_aligned (by decide)
  have post := near_register_test_post c r t a s1 s2 hs range test
  have finalrel := scratch_branch_final_rel s1 ms value dest env h.2 aligned interference
  rw [← post] at finalrel
  have code : ∀ pc, pc ∈ allPcs (riscvConfig.encode (.jumpCmp c r (.reg t) a)).length s1.pc 0 →
      riscvTarget.getByte (env 0 mid) pc = riscvTarget.getByte ms pc := by
    intro pc covered
    have domain := bytesInMemory_allPcs _ _ _ _ 0 hs.1 covered
    exact (rel.2.2.1 pc domain).trans (h.2.2.2.1 pc domain).symm
  have length : (riscvConfig.encode (.jumpCmp c r (.reg t) a)).length = 8 := by
    rw [near_register_test_encoding c r t a range test]
    simp [riscvEncode]
  have pc : riscvTarget.getPc (env 0 mid) ∈
      allPcs (riscvConfig.encode (.jumpCmp c r (.reg t) a)).length s1.pc riscvConfig.codeAlignment := by
    have address := rel.2.1
    change riscvTarget.getPc (env 0 mid) = s1.pc + 4 at address
    rw [address, allPcs_eq, length]
    refine ⟨1, ?_, ?_⟩
    · norm_num [riscvConfig]
    · rfl
  constructor
  · simpa [asserts, first, second] using ⟨⟨rel.1, code, pc⟩, finalrel⟩
  · simp only [asserts2]
    rw [first]
    change (∀ x, ¬s1.memDomain x → ms.MEM8 x = mid.MEM8 x) ∧
      (∀ x, ¬s1.memDomain x → (env 0 mid).MEM8 x =
        (riscvTarget.next (env 0 mid)).MEM8 x) ∧ True
    rw [second]
    exact ⟨fun _ _ => rfl, fun _ _ => rfl, trivial⟩

end Flapjack.RiscV.TargetProof.JumpCmp

namespace Flapjack.RiscV.TargetProof.JumpCmp
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmSem Compiler.Encoders.AsmProps Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.JumpCmp.near_immediate_case` (JumpCmp/NearImm.lean); the proof is Flapjack's with the witness bound added. -/
theorem near_immediate_case_bounded (c : Cmp) (r : Nat) (i a : BitVec 64)
    (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.jumpCmp c r (.imm i) a) s2 ∧
      targetStateRel riscvTarget s1 ms)
    (range : -4092 ≤ a.toInt ∧ a.toInt ≤ 4095) :
    ∃ n : Nat, n ≤ riscvStepBound (.jumpCmp c r (.imm i) a) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.jumpCmp c r (.imm i) a)).length s1.pc
      asserts n (fun k s => env (n-k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n+1) (fun k => env (n+1-k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  refine ⟨1, Nat.le_of_eq (riscvStepBound_jumpCmp_near_imm c r i a range).symm, ?_⟩
  intro env interference
  have hs : asmStep riscvConfig s1 (.jumpCmp c r (.imm i) a) s2 := h.1
  let value := immediate_value c r i s1
  let mid := writePost ms (31#5) value
  let src := updPc (s1.pc + 4) (updReg 31 value s1)
  let dest := immediate_dest c r i a s1
  have first : riscvTarget.next ms = mid := near_immediate_first c r i a s1 s2 ms h range
  have second : riscvTarget.next (env 0 mid) = Jump.branchPost (env 0 mid) dest :=
    near_immediate_second c r i a s1 s2 ms h range env interference
  have rel : targetStateRel riscvTarget src (env 0 mid) :=
    scratch_interference_rel s1 ms value env h.2 interference
  have guard := source_guard c r (.imm i) a hs.2.2.2.2.2.2
  have initial_aligned : holAligned 2 s1.pc = true := by
    have pc : ms.c_PC ms.procID = s1.pc := h.2.2.1
    simpa [pc] using (riscvOk_iff ms).mp h.2.1 |>.2.2.2.2
  have aligned : holAligned 2 dest = true := by
    dsimp [dest, immediate_dest]
    split
    · exact Jump.aligned_add s1.pc a initial_aligned guard.2.1
    · exact Jump.aligned_add s1.pc 8 initial_aligned (by decide)
  have post := near_immediate_post c r i a s1 s2 hs range
  have finalrel := scratch_branch_final_rel s1 ms value dest env h.2 aligned interference
  rw [← post] at finalrel
  have code : ∀ pc, pc ∈ allPcs (riscvConfig.encode (.jumpCmp c r (.imm i) a)).length s1.pc 0 →
      riscvTarget.getByte (env 0 mid) pc = riscvTarget.getByte ms pc := by
    intro pc covered
    have domain := bytesInMemory_allPcs _ _ _ _ 0 hs.1 covered
    exact (rel.2.2.1 pc domain).trans (h.2.2.2.1 pc domain).symm
  have length : (riscvConfig.encode (.jumpCmp c r (.imm i) a)).length = 8 := by
    rw [near_immediate_encoding c r i a range]
    simp [riscvEncode]
  have pc : riscvTarget.getPc (env 0 mid) ∈
      allPcs (riscvConfig.encode (.jumpCmp c r (.imm i) a)).length s1.pc riscvConfig.codeAlignment := by
    have address := rel.2.1
    change riscvTarget.getPc (env 0 mid) = s1.pc + 4 at address
    rw [address, allPcs_eq, length]
    refine ⟨1, ?_, ?_⟩
    · norm_num [riscvConfig]
    · rfl
  constructor
  · simpa [asserts, first, second] using ⟨⟨rel.1, code, pc⟩, finalrel⟩
  · simp only [asserts2]
    rw [first]
    change (∀ x, ¬s1.memDomain x → ms.MEM8 x = mid.MEM8 x) ∧
      (∀ x, ¬s1.memDomain x → (env 0 mid).MEM8 x =
        (riscvTarget.next (env 0 mid)).MEM8 x) ∧ True
    rw [second]
    exact ⟨fun _ _ => rfl, fun _ _ => rfl, trivial⟩

end Flapjack.RiscV.TargetProof.JumpCmp

namespace Flapjack.RiscV.TargetProof.JumpCmp
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmProps Compiler.Encoders.AsmSem Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.JumpCmp.near_case` (JumpCmp/Near.lean); the proof is Flapjack's with the witness bound added. -/
theorem near_case_bounded (c : Cmp) (r : Nat) (right : HolRegImm 64) (a : BitVec 64)
    (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.jumpCmp c r right a) s2 ∧
      targetStateRel riscvTarget s1 ms)
    (range : -4092 ≤ a.toInt ∧ a.toInt ≤ 4095) :
    ∃ n : Nat, n ≤ riscvStepBound (.jumpCmp c r right a) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.jumpCmp c r right a)).length s1.pc
      asserts n (fun k s => env (n-k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n+1) (fun k => env (n+1-k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  cases right with
  | imm i => exact near_immediate_case_bounded c r i a s1 s2 ms h range
  | reg t =>
    by_cases test : c = .test ∨ c = .notTest
    · exact near_register_test_case_bounded c r t a s1 s2 ms h range test
    · exact near_reg_simple_bounded c r t a s1 s2 ms h range
        ⟨fun eq => test (Or.inl eq), fun eq => test (Or.inr eq)⟩

end Flapjack.RiscV.TargetProof.JumpCmp

namespace Flapjack.RiscV.TargetProof.JumpCmp
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmSem Compiler.Encoders.AsmProps Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.JumpCmp.far_register_false_case` (JumpCmp/FarReg.lean); the proof is Flapjack's with the witness bound added. -/
theorem far_register_false_case_bounded (c : Cmp) (r t : Nat) (a : BitVec 64)
    (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.jumpCmp c r (.reg t) a) s2 ∧
      targetStateRel riscvTarget s1 ms)
    (far : ¬(-4092 ≤ a.toInt ∧ a.toInt ≤ 4095))
    (simple : c ≠ .test ∧ c ≠ .notTest)
    (chosen : wordCmpHOL c (readReg r s1) (readReg t s1) = false) :
    ∃ n : Nat, n ≤ riscvStepBound (.jumpCmp c r (.reg t) a) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.jumpCmp c r (.reg t) a)).length s1.pc
      asserts n (fun k s => env (n-k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n+1) (fun k => env (n+1-k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  have hs : asmStep riscvConfig s1 (.jumpCmp c r (.reg t) a) s2 := h.1
  have first := far_register_first c r t a s1 s2 ms h far simple
  have next : riscvTarget.next ms = Jump.branchPost ms (s1.pc + 8) := by
    simpa [far_reg_mid_pc, chosen] using first
  have pc : ms.c_PC ms.procID = s1.pc := h.2.2.1
  have initial_aligned : holAligned 2 s1.pc = true := by
    simpa [pc] using (riscvOk_iff ms).mp h.2.1 |>.2.2.2.2
  have aligned := Jump.aligned_add s1.pc 8 initial_aligned (by decide)
  have post : s2 = updPc (s1.pc + 8) s1 := by
    simpa [chosen] using far_register_post c r t a s1 s2 hs far simple
  have final := Jump.branch_post_rel s1 ms (s1.pc + 8) h.2 aligned
  rw [← post] at final
  refine ⟨0, Nat.zero_le _, ?_⟩
  intro env interference
  have transport := (riscv_target_ok.2 (env 0 (Jump.branchPost ms (s1.pc + 8)))
    (Jump.branchPost ms (s1.pc + 8)) s2
    (by simpa [post, updPc] using interference 0 (Jump.branchPost ms (s1.pc + 8)))).1
  constructor
  · simpa [asserts, next] using transport.mpr final
  · simp only [asserts2]
    rw [next]
    exact ⟨fun _ _ => rfl, trivial⟩

end Flapjack.RiscV.TargetProof.JumpCmp

namespace Flapjack.RiscV.TargetProof.JumpCmp
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmSem Compiler.Encoders.AsmProps Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.JumpCmp.far_register_true_case` (JumpCmp/FarReg.lean); the proof is Flapjack's with the witness bound added. -/
theorem far_register_true_case_bounded (c : Cmp) (r t : Nat) (a : BitVec 64)
    (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.jumpCmp c r (.reg t) a) s2 ∧
      targetStateRel riscvTarget s1 ms)
    (far : ¬(-4092 ≤ a.toInt ∧ a.toInt ≤ 4095))
    (simple : c ≠ .test ∧ c ≠ .notTest)
    (chosen : wordCmpHOL c (readReg r s1) (readReg t s1) = true) :
    ∃ n : Nat, n ≤ riscvStepBound (.jumpCmp c r (.reg t) a) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.jumpCmp c r (.reg t) a)).length s1.pc
      asserts n (fun k s => env (n-k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n+1) (fun k => env (n+1-k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  refine ⟨1, Nat.le_of_eq (riscvStepBound_jumpCmp_far_simple c r t a far simple).symm, ?_⟩
  intro env interference
  have hs : asmStep riscvConfig s1 (.jumpCmp c r (.reg t) a) s2 := h.1
  let mid := Jump.branchPost ms (s1.pc + 4)
  let src := updPc (s1.pc + 4) s1
  have first : riscvTarget.next ms = mid := by
    simpa [mid, far_reg_mid_pc, chosen] using far_register_first c r t a s1 s2 ms h far simple
  have second : riscvTarget.next (env 0 mid) = Jump.branchPost (env 0 mid) (s1.pc + a) :=
    far_register_second c r t a s1 s2 ms h far simple env interference
  have initial_pc : ms.c_PC ms.procID = s1.pc := h.2.2.1
  have initial_aligned : holAligned 2 s1.pc = true := by
    simpa [initial_pc] using (riscvOk_iff ms).mp h.2.1 |>.2.2.2.2
  have four_aligned := Jump.aligned_add s1.pc 4 initial_aligned (by decide)
  have guard := source_guard c r (.reg t) a hs.2.2.2.2.2.2
  have aligned := Jump.aligned_add s1.pc a initial_aligned guard.2.1
  have base := Jump.branch_post_rel s1 ms (s1.pc + 4) h.2 four_aligned
  have rel : targetStateRel riscvTarget src (env 0 mid) :=
    (riscv_target_ok.2 (env 0 mid) mid src (interference 0 mid)).1.mpr base
  have post : s2 = updPc (s1.pc + a) s1 := by
    simpa [chosen] using far_register_post c r t a s1 s2 hs far simple
  have finalbase : targetStateRel riscvTarget s2
      (Jump.branchPost (env 0 mid) (s1.pc + a)) := by
    rw [post]
    simpa [src, updPc] using Jump.branch_post_rel src (env 0 mid) (s1.pc + a) rel aligned
  have final := (riscv_target_ok.2
    (env 1 (Jump.branchPost (env 0 mid) (s1.pc + a)))
    (Jump.branchPost (env 0 mid) (s1.pc + a)) s2
    (by simpa [post, updPc] using interference 1 (Jump.branchPost (env 0 mid) (s1.pc + a)))).1.mpr finalbase
  have code : ∀ pc, pc ∈ allPcs (riscvConfig.encode (.jumpCmp c r (.reg t) a)).length s1.pc 0 →
      riscvTarget.getByte (env 0 mid) pc = riscvTarget.getByte ms pc := by
    intro pc covered
    have domain := bytesInMemory_allPcs _ _ _ _ 0 hs.1 covered
    exact (rel.2.2.1 pc domain).trans (h.2.2.2.1 pc domain).symm
  have length : (riscvConfig.encode (.jumpCmp c r (.reg t) a)).length = 8 := by
    rw [far_register_simple_encoding c r t a far simple]
    simp [riscvEncode]
  have pc : riscvTarget.getPc (env 0 mid) ∈
      allPcs (riscvConfig.encode (.jumpCmp c r (.reg t) a)).length s1.pc riscvConfig.codeAlignment := by
    have address := rel.2.1
    change riscvTarget.getPc (env 0 mid) = s1.pc + 4 at address
    rw [address, allPcs_eq, length]
    refine ⟨1, ?_, ?_⟩
    · norm_num [riscvConfig]
    · rfl
  constructor
  · simpa [asserts, first, second] using ⟨⟨rel.1, code, pc⟩, final⟩
  · simp only [asserts2]
    rw [first]
    change (∀ x, ¬s1.memDomain x → ms.MEM8 x = mid.MEM8 x) ∧
      (∀ x, ¬s1.memDomain x → (env 0 mid).MEM8 x =
        (riscvTarget.next (env 0 mid)).MEM8 x) ∧ True
    rw [second]
    exact ⟨fun _ _ => rfl, fun _ _ => rfl, trivial⟩

end Flapjack.RiscV.TargetProof.JumpCmp

namespace Flapjack.RiscV.TargetProof.JumpCmp
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmSem Compiler.Encoders.AsmProps Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.JumpCmp.far_register_simple_case` (JumpCmp/FarReg.lean); the proof is Flapjack's with the witness bound added. -/
theorem far_register_simple_case_bounded (c : Cmp) (r t : Nat) (a : BitVec 64)
    (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.jumpCmp c r (.reg t) a) s2 ∧
      targetStateRel riscvTarget s1 ms)
    (far : ¬(-4092 ≤ a.toInt ∧ a.toInt ≤ 4095))
    (simple : c ≠ .test ∧ c ≠ .notTest)
 :
    ∃ n : Nat, n ≤ riscvStepBound (.jumpCmp c r (.reg t) a) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.jumpCmp c r (.reg t) a)).length s1.pc
      asserts n (fun k s => env (n-k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n+1) (fun k => env (n+1-k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  cases chosen : wordCmpHOL c (readReg r s1) (readReg t s1)
  · exact far_register_false_case_bounded c r t a s1 s2 ms h far simple chosen
  · exact far_register_true_case_bounded c r t a s1 s2 ms h far simple chosen

end Flapjack.RiscV.TargetProof.JumpCmp

namespace Flapjack.RiscV.TargetProof.JumpCmp
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmSem Compiler.Encoders.AsmProps Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.JumpCmp.far_register_test_false_case` (JumpCmp/FarRegTest.lean); the proof is Flapjack's with the witness bound added. -/
theorem far_register_test_false_case_bounded (c : Cmp) (r t : Nat) (a : BitVec 64)
    (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.jumpCmp c r (.reg t) a) s2 ∧
      targetStateRel riscvTarget s1 ms)
    (far : ¬(-4092 ≤ a.toInt ∧ a.toInt ≤ 4095))
    (test : c = .test ∨ c = .notTest)
    (chosen : wordCmpHOL c (readReg r s1) (readReg t s1) = false) :
    ∃ n : Nat, n ≤ riscvStepBound (.jumpCmp c r (.reg t) a) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.jumpCmp c r (.reg t) a)).length s1.pc
      asserts n (fun k s => env (n-k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n+1) (fun k => env (n+1-k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  refine ⟨1, (by rw [riscvStepBound_jumpCmp_far_test c r t a far test]; decide), ?_⟩
  intro env interference
  have hs : asmStep riscvConfig s1 (.jumpCmp c r (.reg t) a) s2 := h.1
  let value := register_test_value c r t s1
  let mid := writePost ms (31#5) value
  let src := updPc (s1.pc + 4) (updReg 31 value s1)
  let dest := s1.pc + 12
  have first : riscvTarget.next ms = mid := far_register_test_first c r t a s1 s2 ms h far test
  have second : riscvTarget.next (env 0 mid) = Jump.branchPost (env 0 mid) dest :=
    by simpa [dest, chosen] using far_register_test_second c r t a s1 s2 ms h far test env interference
  have rel : targetStateRel riscvTarget src (env 0 mid) :=
    scratch_interference_rel s1 ms value env h.2 interference
  have initial_aligned : holAligned 2 s1.pc = true := by
    have pc : ms.c_PC ms.procID = s1.pc := h.2.2.1
    simpa [pc] using (riscvOk_iff ms).mp h.2.1 |>.2.2.2.2
  have aligned : holAligned 2 dest = true :=
    Jump.aligned_add s1.pc 12 initial_aligned (by decide)
  have post : s2 = updPc dest s1 := by
    simpa [dest, chosen] using far_register_test_post c r t a s1 s2 hs far test
  have finalrel := scratch_branch_final_rel s1 ms value dest env h.2 aligned interference
  rw [← post] at finalrel
  have code : ∀ pc, pc ∈ allPcs (riscvConfig.encode (.jumpCmp c r (.reg t) a)).length s1.pc 0 →
      riscvTarget.getByte (env 0 mid) pc = riscvTarget.getByte ms pc := by
    intro pc covered
    have domain := bytesInMemory_allPcs _ _ _ _ 0 hs.1 covered
    exact (rel.2.2.1 pc domain).trans (h.2.2.2.1 pc domain).symm
  have length : (riscvConfig.encode (.jumpCmp c r (.reg t) a)).length = 12 := by
    rw [far_register_test_encoding c r t a far test]
    simp [riscvEncode]
  have pc : riscvTarget.getPc (env 0 mid) ∈
      allPcs (riscvConfig.encode (.jumpCmp c r (.reg t) a)).length s1.pc riscvConfig.codeAlignment := by
    have address := rel.2.1
    change riscvTarget.getPc (env 0 mid) = s1.pc + 4 at address
    rw [address, allPcs_eq, length]
    refine ⟨1, ?_, ?_⟩
    · norm_num [riscvConfig]
    · rfl
  constructor
  · simpa [asserts, first, second] using ⟨⟨rel.1, code, pc⟩, finalrel⟩
  · simp only [asserts2]
    rw [first]
    change (∀ x, ¬s1.memDomain x → ms.MEM8 x = mid.MEM8 x) ∧
      (∀ x, ¬s1.memDomain x → (env 0 mid).MEM8 x =
        (riscvTarget.next (env 0 mid)).MEM8 x) ∧ True
    rw [second]
    exact ⟨fun _ _ => rfl, fun _ _ => rfl, trivial⟩

end Flapjack.RiscV.TargetProof.JumpCmp

namespace Flapjack.RiscV.TargetProof.JumpCmp
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmSem Compiler.Encoders.AsmProps Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.JumpCmp.far_register_test_true_case` (JumpCmp/FarRegTest.lean); the proof is Flapjack's with the witness bound added. -/
theorem far_register_test_true_case_bounded (c : Cmp) (r t : Nat) (a : BitVec 64)
    (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.jumpCmp c r (.reg t) a) s2 ∧
      targetStateRel riscvTarget s1 ms)
    (far : ¬(-4092 ≤ a.toInt ∧ a.toInt ≤ 4095))
    (test : c = .test ∨ c = .notTest)
    (chosen : wordCmpHOL c (readReg r s1) (readReg t s1) = true) :
    ∃ n : Nat, n ≤ riscvStepBound (.jumpCmp c r (.reg t) a) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.jumpCmp c r (.reg t) a)).length s1.pc
      asserts n (fun k s => env (n-k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n+1) (fun k => env (n+1-k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  refine ⟨2, Nat.le_of_eq (riscvStepBound_jumpCmp_far_test c r t a far test).symm, ?_⟩
  intro env interference
  have hs : asmStep riscvConfig s1 (.jumpCmp c r (.reg t) a) s2 := h.1
  let value := register_test_value c r t s1
  let mid := writePost ms (31#5) value
  let src := updPc (s1.pc + 4) (updReg 31 value s1)
  let branch := Jump.branchPost (env 0 mid) (s1.pc + 8)
  let src2 := updPc (s1.pc + 8) s1
  have first : riscvTarget.next ms = mid := far_register_test_first c r t a s1 s2 ms h far test
  have second : riscvTarget.next (env 0 mid) = branch := by
    simpa [branch, chosen] using far_register_test_second c r t a s1 s2 ms h far test env interference
  have third : riscvTarget.next (env 1 branch) = Jump.branchPost (env 1 branch) (s1.pc + a) :=
    far_register_test_third c r t a s1 s2 ms h far test env interference
  have rel : targetStateRel riscvTarget src (env 0 mid) :=
    scratch_interference_rel s1 ms value env h.2 interference
  have initial_pc : ms.c_PC ms.procID = s1.pc := h.2.2.1
  have initial_aligned : holAligned 2 s1.pc = true := by
    simpa [initial_pc] using (riscvOk_iff ms).mp h.2.1 |>.2.2.2.2
  have eight_aligned := Jump.aligned_add s1.pc 8 initial_aligned (by decide)
  have rel2 : targetStateRel riscvTarget src2 (env 1 branch) :=
    scratch_branch_final_rel s1 ms value (s1.pc + 8) env h.2 eight_aligned interference
  have guard := source_guard c r (.reg t) a hs.2.2.2.2.2.2
  have aligned := Jump.aligned_add s1.pc a initial_aligned guard.2.1
  have post : s2 = updPc (s1.pc + a) s1 := by
    simpa [chosen] using far_register_test_post c r t a s1 s2 hs far test
  have finalbase : targetStateRel riscvTarget s2 (Jump.branchPost (env 1 branch) (s1.pc + a)) := by
    rw [post]
    simpa [src2, updPc] using Jump.branch_post_rel src2 (env 1 branch) (s1.pc + a) rel2 aligned
  have final := (riscv_target_ok.2
    (env 2 (Jump.branchPost (env 1 branch) (s1.pc + a)))
    (Jump.branchPost (env 1 branch) (s1.pc + a)) s2
    (by simpa [post, updPc] using interference 2 (Jump.branchPost (env 1 branch) (s1.pc + a)))).1.mpr finalbase
  have code : ∀ pc, pc ∈ allPcs (riscvConfig.encode (.jumpCmp c r (.reg t) a)).length s1.pc 0 →
      riscvTarget.getByte (env 0 mid) pc = riscvTarget.getByte ms pc := by
    intro pc covered
    have domain := bytesInMemory_allPcs _ _ _ _ 0 hs.1 covered
    exact (rel.2.2.1 pc domain).trans (h.2.2.2.1 pc domain).symm
  have code2 : ∀ pc, pc ∈ allPcs (riscvConfig.encode (.jumpCmp c r (.reg t) a)).length s1.pc 0 →
      riscvTarget.getByte (env 1 branch) pc = riscvTarget.getByte ms pc := by
    intro pc covered
    have domain := bytesInMemory_allPcs _ _ _ _ 0 hs.1 covered
    exact (rel2.2.2.1 pc domain).trans (h.2.2.2.1 pc domain).symm
  have length : (riscvConfig.encode (.jumpCmp c r (.reg t) a)).length = 12 := by
    rw [far_register_test_encoding c r t a far test]
    simp [riscvEncode]
  have pc : riscvTarget.getPc (env 0 mid) ∈
      allPcs (riscvConfig.encode (.jumpCmp c r (.reg t) a)).length s1.pc riscvConfig.codeAlignment := by
    have address := rel.2.1
    change riscvTarget.getPc (env 0 mid) = s1.pc + 4 at address
    rw [address, allPcs_eq, length]
    refine ⟨1, ?_, ?_⟩
    · norm_num [riscvConfig]
    · rfl
  have pc2 : riscvTarget.getPc (env 1 branch) ∈
      allPcs (riscvConfig.encode (.jumpCmp c r (.reg t) a)).length s1.pc riscvConfig.codeAlignment := by
    have address := rel2.2.1
    change riscvTarget.getPc (env 1 branch) = s1.pc + 8 at address
    rw [address, allPcs_eq, length]
    refine ⟨2, ?_, ?_⟩
    · norm_num [riscvConfig]
    · rfl
  constructor
  · simpa [asserts, first, second, third] using
      ⟨⟨rel.1, code, pc⟩, ⟨⟨rel2.1, code2, pc2⟩, final⟩⟩
  · simp only [asserts2]
    rw [first]
    change (∀ x, ¬s1.memDomain x → ms.MEM8 x = mid.MEM8 x) ∧
      (∀ x, ¬s1.memDomain x → (env 0 mid).MEM8 x = (riscvTarget.next (env 0 mid)).MEM8 x) ∧
      (∀ x, ¬s1.memDomain x → (env 1 (riscvTarget.next (env 0 mid))).MEM8 x =
        (riscvTarget.next (env 1 (riscvTarget.next (env 0 mid)))).MEM8 x) ∧ True
    rw [second, third]
    exact ⟨fun _ _ => rfl, fun _ _ => rfl, fun _ _ => rfl, trivial⟩

end Flapjack.RiscV.TargetProof.JumpCmp

namespace Flapjack.RiscV.TargetProof.JumpCmp
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmSem Compiler.Encoders.AsmProps Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.JumpCmp.far_register_test_case` (JumpCmp/FarRegTest.lean); the proof is Flapjack's with the witness bound added. -/
theorem far_register_test_case_bounded (c : Cmp) (r t : Nat) (a : BitVec 64)
    (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.jumpCmp c r (.reg t) a) s2 ∧
      targetStateRel riscvTarget s1 ms)
    (far : ¬(-4092 ≤ a.toInt ∧ a.toInt ≤ 4095))
    (test : c = .test ∨ c = .notTest)
 :
    ∃ n : Nat, n ≤ riscvStepBound (.jumpCmp c r (.reg t) a) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.jumpCmp c r (.reg t) a)).length s1.pc
      asserts n (fun k s => env (n-k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n+1) (fun k => env (n+1-k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  cases chosen : wordCmpHOL c (readReg r s1) (readReg t s1)
  · exact far_register_test_false_case_bounded c r t a s1 s2 ms h far test chosen
  · exact far_register_test_true_case_bounded c r t a s1 s2 ms h far test chosen

end Flapjack.RiscV.TargetProof.JumpCmp

namespace Flapjack.RiscV.TargetProof.JumpCmp
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmSem Compiler.Encoders.AsmProps Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.JumpCmp.far_immediate_false_case` (JumpCmp/FarImm.lean); the proof is Flapjack's with the witness bound added. -/
theorem far_immediate_false_case_bounded (c : Cmp) (r : Nat) (i a : BitVec 64)
    (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.jumpCmp c r (.imm i) a) s2 ∧
      targetStateRel riscvTarget s1 ms)
    (far : ¬(-4092 ≤ a.toInt ∧ a.toInt ≤ 4095))
    (chosen : wordCmpHOL c (readReg r s1) i = false) :
    ∃ n : Nat, n ≤ riscvStepBound (.jumpCmp c r (.imm i) a) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.jumpCmp c r (.imm i) a)).length s1.pc
      asserts n (fun k s => env (n-k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n+1) (fun k => env (n+1-k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  refine ⟨1, (by rw [riscvStepBound_jumpCmp_far_imm c r i a far]; decide), ?_⟩
  intro env interference
  have hs : asmStep riscvConfig s1 (.jumpCmp c r (.imm i) a) s2 := h.1
  let value := immediate_value c r i s1
  let mid := writePost ms (31#5) value
  let src := updPc (s1.pc + 4) (updReg 31 value s1)
  let dest := s1.pc + 12
  have first : riscvTarget.next ms = mid := far_immediate_first c r i a s1 s2 ms h far
  have second : riscvTarget.next (env 0 mid) = Jump.branchPost (env 0 mid) dest :=
    by simpa [dest, chosen] using far_immediate_second c r i a s1 s2 ms h far env interference
  have rel : targetStateRel riscvTarget src (env 0 mid) :=
    scratch_interference_rel s1 ms value env h.2 interference
  have initial_aligned : holAligned 2 s1.pc = true := by
    have pc : ms.c_PC ms.procID = s1.pc := h.2.2.1
    simpa [pc] using (riscvOk_iff ms).mp h.2.1 |>.2.2.2.2
  have aligned : holAligned 2 dest = true :=
    Jump.aligned_add s1.pc 12 initial_aligned (by decide)
  have post : s2 = updPc dest s1 := by
    simpa [dest, chosen] using far_immediate_post c r i a s1 s2 hs far
  have finalrel := scratch_branch_final_rel s1 ms value dest env h.2 aligned interference
  rw [← post] at finalrel
  have code : ∀ pc, pc ∈ allPcs (riscvConfig.encode (.jumpCmp c r (.imm i) a)).length s1.pc 0 →
      riscvTarget.getByte (env 0 mid) pc = riscvTarget.getByte ms pc := by
    intro pc covered
    have domain := bytesInMemory_allPcs _ _ _ _ 0 hs.1 covered
    exact (rel.2.2.1 pc domain).trans (h.2.2.2.1 pc domain).symm
  have length : (riscvConfig.encode (.jumpCmp c r (.imm i) a)).length = 12 := by
    rw [far_immediate_encoding c r i a far]
    simp [riscvEncode]
  have pc : riscvTarget.getPc (env 0 mid) ∈
      allPcs (riscvConfig.encode (.jumpCmp c r (.imm i) a)).length s1.pc riscvConfig.codeAlignment := by
    have address := rel.2.1
    change riscvTarget.getPc (env 0 mid) = s1.pc + 4 at address
    rw [address, allPcs_eq, length]
    refine ⟨1, ?_, ?_⟩
    · norm_num [riscvConfig]
    · rfl
  constructor
  · simpa [asserts, first, second] using ⟨⟨rel.1, code, pc⟩, finalrel⟩
  · simp only [asserts2]
    rw [first]
    change (∀ x, ¬s1.memDomain x → ms.MEM8 x = mid.MEM8 x) ∧
      (∀ x, ¬s1.memDomain x → (env 0 mid).MEM8 x =
        (riscvTarget.next (env 0 mid)).MEM8 x) ∧ True
    rw [second]
    exact ⟨fun _ _ => rfl, fun _ _ => rfl, trivial⟩

end Flapjack.RiscV.TargetProof.JumpCmp

namespace Flapjack.RiscV.TargetProof.JumpCmp
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmSem Compiler.Encoders.AsmProps Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.JumpCmp.far_immediate_true_case` (JumpCmp/FarImm.lean); the proof is Flapjack's with the witness bound added. -/
theorem far_immediate_true_case_bounded (c : Cmp) (r : Nat) (i a : BitVec 64)
    (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.jumpCmp c r (.imm i) a) s2 ∧
      targetStateRel riscvTarget s1 ms)
    (far : ¬(-4092 ≤ a.toInt ∧ a.toInt ≤ 4095))
    (chosen : wordCmpHOL c (readReg r s1) i = true) :
    ∃ n : Nat, n ≤ riscvStepBound (.jumpCmp c r (.imm i) a) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.jumpCmp c r (.imm i) a)).length s1.pc
      asserts n (fun k s => env (n-k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n+1) (fun k => env (n+1-k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  refine ⟨2, Nat.le_of_eq (riscvStepBound_jumpCmp_far_imm c r i a far).symm, ?_⟩
  intro env interference
  have hs : asmStep riscvConfig s1 (.jumpCmp c r (.imm i) a) s2 := h.1
  let value := immediate_value c r i s1
  let mid := writePost ms (31#5) value
  let src := updPc (s1.pc + 4) (updReg 31 value s1)
  let branch := Jump.branchPost (env 0 mid) (s1.pc + 8)
  let src2 := updPc (s1.pc + 8) s1
  have first : riscvTarget.next ms = mid := far_immediate_first c r i a s1 s2 ms h far
  have second : riscvTarget.next (env 0 mid) = branch := by
    simpa [branch, chosen] using far_immediate_second c r i a s1 s2 ms h far env interference
  have third : riscvTarget.next (env 1 branch) = Jump.branchPost (env 1 branch) (s1.pc + a) :=
    far_immediate_third c r i a s1 s2 ms h far env interference
  have rel : targetStateRel riscvTarget src (env 0 mid) :=
    scratch_interference_rel s1 ms value env h.2 interference
  have initial_pc : ms.c_PC ms.procID = s1.pc := h.2.2.1
  have initial_aligned : holAligned 2 s1.pc = true := by
    simpa [initial_pc] using (riscvOk_iff ms).mp h.2.1 |>.2.2.2.2
  have eight_aligned := Jump.aligned_add s1.pc 8 initial_aligned (by decide)
  have rel2 : targetStateRel riscvTarget src2 (env 1 branch) :=
    scratch_branch_final_rel s1 ms value (s1.pc + 8) env h.2 eight_aligned interference
  have guard := source_guard c r (.imm i) a hs.2.2.2.2.2.2
  have aligned := Jump.aligned_add s1.pc a initial_aligned guard.2.1
  have post : s2 = updPc (s1.pc + a) s1 := by
    simpa [chosen] using far_immediate_post c r i a s1 s2 hs far
  have finalbase : targetStateRel riscvTarget s2 (Jump.branchPost (env 1 branch) (s1.pc + a)) := by
    rw [post]
    simpa [src2, updPc] using Jump.branch_post_rel src2 (env 1 branch) (s1.pc + a) rel2 aligned
  have final := (riscv_target_ok.2
    (env 2 (Jump.branchPost (env 1 branch) (s1.pc + a)))
    (Jump.branchPost (env 1 branch) (s1.pc + a)) s2
    (by simpa [post, updPc] using interference 2 (Jump.branchPost (env 1 branch) (s1.pc + a)))).1.mpr finalbase
  have code : ∀ pc, pc ∈ allPcs (riscvConfig.encode (.jumpCmp c r (.imm i) a)).length s1.pc 0 →
      riscvTarget.getByte (env 0 mid) pc = riscvTarget.getByte ms pc := by
    intro pc covered
    have domain := bytesInMemory_allPcs _ _ _ _ 0 hs.1 covered
    exact (rel.2.2.1 pc domain).trans (h.2.2.2.1 pc domain).symm
  have code2 : ∀ pc, pc ∈ allPcs (riscvConfig.encode (.jumpCmp c r (.imm i) a)).length s1.pc 0 →
      riscvTarget.getByte (env 1 branch) pc = riscvTarget.getByte ms pc := by
    intro pc covered
    have domain := bytesInMemory_allPcs _ _ _ _ 0 hs.1 covered
    exact (rel2.2.2.1 pc domain).trans (h.2.2.2.1 pc domain).symm
  have length : (riscvConfig.encode (.jumpCmp c r (.imm i) a)).length = 12 := by
    rw [far_immediate_encoding c r i a far]
    simp [riscvEncode]
  have pc : riscvTarget.getPc (env 0 mid) ∈
      allPcs (riscvConfig.encode (.jumpCmp c r (.imm i) a)).length s1.pc riscvConfig.codeAlignment := by
    have address := rel.2.1
    change riscvTarget.getPc (env 0 mid) = s1.pc + 4 at address
    rw [address, allPcs_eq, length]
    refine ⟨1, ?_, ?_⟩
    · norm_num [riscvConfig]
    · rfl
  have pc2 : riscvTarget.getPc (env 1 branch) ∈
      allPcs (riscvConfig.encode (.jumpCmp c r (.imm i) a)).length s1.pc riscvConfig.codeAlignment := by
    have address := rel2.2.1
    change riscvTarget.getPc (env 1 branch) = s1.pc + 8 at address
    rw [address, allPcs_eq, length]
    refine ⟨2, ?_, ?_⟩
    · norm_num [riscvConfig]
    · rfl
  constructor
  · simpa [asserts, first, second, third] using
      ⟨⟨rel.1, code, pc⟩, ⟨⟨rel2.1, code2, pc2⟩, final⟩⟩
  · simp only [asserts2]
    rw [first]
    change (∀ x, ¬s1.memDomain x → ms.MEM8 x = mid.MEM8 x) ∧
      (∀ x, ¬s1.memDomain x → (env 0 mid).MEM8 x = (riscvTarget.next (env 0 mid)).MEM8 x) ∧
      (∀ x, ¬s1.memDomain x → (env 1 (riscvTarget.next (env 0 mid))).MEM8 x =
        (riscvTarget.next (env 1 (riscvTarget.next (env 0 mid)))).MEM8 x) ∧ True
    rw [second, third]
    exact ⟨fun _ _ => rfl, fun _ _ => rfl, fun _ _ => rfl, trivial⟩

end Flapjack.RiscV.TargetProof.JumpCmp

namespace Flapjack.RiscV.TargetProof.JumpCmp
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmSem Compiler.Encoders.AsmProps Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.JumpCmp.far_immediate_case` (JumpCmp/FarImm.lean); the proof is Flapjack's with the witness bound added. -/
theorem far_immediate_case_bounded (c : Cmp) (r : Nat) (i a : BitVec 64)
    (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.jumpCmp c r (.imm i) a) s2 ∧
      targetStateRel riscvTarget s1 ms)
    (far : ¬(-4092 ≤ a.toInt ∧ a.toInt ≤ 4095))
 :
    ∃ n : Nat, n ≤ riscvStepBound (.jumpCmp c r (.imm i) a) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.jumpCmp c r (.imm i) a)).length s1.pc
      asserts n (fun k s => env (n-k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n+1) (fun k => env (n+1-k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  cases chosen : wordCmpHOL c (readReg r s1) i
  · exact far_immediate_false_case_bounded c r i a s1 s2 ms h far chosen
  · exact far_immediate_true_case_bounded c r i a s1 s2 ms h far chosen

end Flapjack.RiscV.TargetProof.JumpCmp

namespace Flapjack.RiscV.TargetProof
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmProps Compiler.Encoders.AsmSem Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_jumpCmp` (JumpCmp.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_jumpCmp_bounded (c : Cmp) (r : Nat) (right : HolRegImm 64)
    (a : BitVec 64) (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.jumpCmp c r right a) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.jumpCmp c r right a) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.jumpCmp c r right a)).length s1.pc
      asserts n (fun k s => env (n-k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n+1) (fun k => env (n+1-k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  by_cases near : -4092 ≤ a.toInt ∧ a.toInt ≤ 4095
  · exact JumpCmp.near_case_bounded c r right a s1 s2 ms h near
  · cases right with
    | imm i => exact JumpCmp.far_immediate_case_bounded c r i a s1 s2 ms h near
    | reg t =>
      by_cases test : c = .test ∨ c = .notTest
      · exact JumpCmp.far_register_test_case_bounded c r t a s1 s2 ms h near test
      · exact JumpCmp.far_register_simple_case_bounded c r t a s1 s2 ms h near
          ⟨fun eq => test (Or.inl eq), fun eq => test (Or.inr eq)⟩

end Flapjack.RiscV.TargetProof
