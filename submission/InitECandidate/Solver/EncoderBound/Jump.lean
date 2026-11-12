import InitECandidate.Solver.EncoderBound.Shift

/-!
Bounded restatements of Flapjack's RISC-V Jump and Call encoder cases.

Each theorem is the Flapjack constructor theorem (pinned flapjack rev
034bb5a1ed0b757082768d5406206bd2f8e31b7c) with `n ≤ riscvStepBound i ∧` added to its
conclusion and the bound proved at Flapjack's own `refine ⟨witness, ?_⟩`; the rest of
each proof is unchanged and Flapjack's private helpers are reused via `open private`.
The case modules import each other linearly only to serialize their builds
(each Lean process peaks at about 4 GiB RSS).
-/

namespace Flapjack.RiscV.TargetProof.Jump
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmProps Compiler.Encoders.AsmSem Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.Jump.near_case` (Jump/Near.lean); the proof is Flapjack's with the witness bound added. -/
theorem near_case_bounded (c : BitVec 64) (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.jump c) s2 ∧ targetStateRel riscvTarget s1 ms)
    (range : -1048576 ≤ c.toInt ∧ c.toInt ≤ 1048575) :
    ∃ n : Nat, n ≤ riscvStepBound (.jump c) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.jump c)).length s1.pc
      asserts n (fun k s => env (n-k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n+1) (fun k => env (n+1-k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  have hs : asmStep riscvConfig s1 (.jump c) s2 := h.1
  have guard := jump_guard c hs.2.2.2.2.2.2
  have offset := near_jump_offset c range guard.2
  have bounds : (18446744073708503040#64).sle c = true ∧
      c.sle (1048575#64) = true := by
    simp only [BitVec.sle_eq_decide, decide_eq_true_eq]
    change -1048576 ≤ c.toInt ∧ c.toInt ≤ 1048575
    exact range
  have enc : riscvConfig.encode (.jump c) =
      riscvEncode (.Branch (.JAL (0,(c.sshiftRight 1).setWidth 20))) := by
    simp [riscvConfig, riscvEnc, riscvAst, inSignedRange, bounds.1, bounds.2]
  have hb := hs.1
  rw [enc] at hb
  have bytes := bytes_in_memory_thm () s1 ms _ _ _ _ ⟨h.2, hb⟩
  have pc := h.2.2.1
  change ms.c_PC ms.procID = s1.pc at pc
  have aligned := aligned_add (ms.c_PC ms.procID) c
    ((riscvOk_iff ms).mp h.2.1).2.2.2.2 guard.2
  have native_aligned : holAligned 2
      (ms.c_PC ms.procID + (((c.sshiftRight 1).setWidth 20).signExtend 64 <<< (1 : Nat))) = true := by
    rw [offset]
    exact aligned
  have hn := near_jump_next ms ((c.sshiftRight 1).setWidth 20) h.2.1 native_aligned
    bytes.2.2.2.2.2.1 bytes.2.2.2.2.2.2.1
    bytes.2.2.2.2.2.2.2.1 bytes.2.2.2.2.2.2.2.2.1
  have next : riscvTarget.next ms = branchPost ms (s1.pc+c) := by
    change holThe (NextRISCV ms) = _
    rw [hn, offset, pc]
    rfl
  have target_aligned : holAligned 2 (s1.pc+c) = true := by simpa [pc] using aligned
  have hp := branch_post_rel s1 ms (s1.pc+c) h.2 target_aligned
  rw [← jump_post c s1 s2 hs] at hp
  refine ⟨0, Nat.zero_le _, ?_⟩
  intro env interference
  have projection := interference 0 (branchPost ms (s1.pc+c))
  have transport := (riscv_target_ok.2 (env 0 (branchPost ms (s1.pc+c)))
    (branchPost ms (s1.pc+c)) s2
    (by simpa [jump_post c s1 s2 hs, updPc] using projection)).1
  constructor
  · simpa [asserts, next] using transport.mpr hp
  · simp only [asserts2]
    rw [next]
    exact ⟨fun _ _ => rfl, trivial⟩

end Flapjack.RiscV.TargetProof.Jump

namespace Flapjack.RiscV.TargetProof.Jump
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmProps Compiler.Encoders.AsmSem Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound
set_option maxRecDepth 200000
set_option maxHeartbeats 2000000
open private upperValue far_two_steps from Flapjack.RiscV.CorrectnessEncoding.Jump.Far

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.Jump.far_case` (Jump/Far.lean); the proof is Flapjack's with the witness bound added. -/
theorem far_case_bounded (c : BitVec 64) (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.jump c) s2 ∧ targetStateRel riscvTarget s1 ms)
    (far : ¬(-1048576 ≤ c.toInt ∧ c.toInt ≤ 1048575)) :
    ∃ n : Nat, n ≤ riscvStepBound (.jump c) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.jump c)).length s1.pc
      asserts n (fun k s => env (n-k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n+1) (fun k => env (n+1-k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  refine ⟨1, Nat.le_of_eq (riscvStepBound_jump_far c far).symm, ?_⟩
  intro env interference
  have hs : asmStep riscvConfig s1 (.jump c) s2 := h.1
  have run := far_two_steps c s1 s2 ms hs h.2 far env interference
  dsimp only at run
  let mid := writePost ms (31#5) (s1.pc+upperValue c)
  let src := updPc (s1.pc+4) (updReg 31 (s1.pc+upperValue c) s1)
  have first : riscvTarget.next ms = mid := run.1
  have second : riscvTarget.next (env 0 mid) = branchPost (env 0 mid) (s1.pc+c) := run.2.2.1
  have rel : targetStateRel riscvTarget src (env 0 mid) := run.2.1
  have valid := rel.1
  have code : ∀ pc, pc ∈ allPcs (riscvConfig.encode (.jump c)).length s1.pc 0 →
      riscvTarget.getByte (env 0 mid) pc = riscvTarget.getByte ms pc := by
    intro pc covered
    have domain := bytesInMemory_allPcs _ _ _ _ 0 hs.1 covered
    have before := h.2.2.2.1 pc domain
    have after := rel.2.2.1 pc domain
    exact after.trans before.symm
  have length : (riscvConfig.encode (.jump c)).length = 8 := by
    have notnear : ¬((18446744073708503040#64).sle c = true ∧ c.sle (1048575#64) = true) := by
      intro h
      apply far
      simp only [BitVec.sle_eq_decide, decide_eq_true_eq] at h
      change -1048576 ≤ c.toInt ∧ c.toInt ≤ 1048575 at h
      exact h
    simp [riscvConfig,riscvEnc,riscvAst,inSignedRange,notnear,riscvEncode]
  have pc : riscvTarget.getPc (env 0 mid) ∈
      allPcs (riscvConfig.encode (.jump c)).length s1.pc riscvConfig.codeAlignment := by
    have address := rel.2.1
    change riscvTarget.getPc (env 0 mid) = s1.pc+4 at address
    rw [address, allPcs_eq, length]
    refine ⟨1,?_,?_⟩
    · norm_num [riscvConfig]
    · rfl
  constructor
  · simpa [asserts,first,second] using ⟨⟨valid,code,pc⟩,run.2.2.2⟩
  · simp only [asserts2]
    rw [first]
    change (∀ x, ¬s1.memDomain x → ms.MEM8 x = mid.MEM8 x) ∧
      (∀ x, ¬s1.memDomain x → (env 0 mid).MEM8 x =
        (riscvTarget.next (env 0 mid)).MEM8 x) ∧ True
    rw [second]
    exact ⟨fun _ _ => rfl,fun _ _ => rfl,trivial⟩

end Flapjack.RiscV.TargetProof.Jump

namespace Flapjack.RiscV.TargetProof
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmProps Compiler.Encoders.AsmSem Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_jump` (Jump.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_jump_bounded (c : BitVec 64) (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.jump c) s2 ∧ targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.jump c) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.jump c)).length s1.pc
      asserts n (fun k s => env (n-k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n+1) (fun k => env (n+1-k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  by_cases range : -1048576 ≤ c.toInt ∧ c.toInt ≤ 1048575
  · exact Jump.near_case_bounded c s1 s2 ms h range
  · exact Jump.far_case_bounded c s1 s2 ms h range

end Flapjack.RiscV.TargetProof

namespace Flapjack.RiscV.TargetProof.Call
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmProps Compiler.Encoders.AsmSem Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.Call.near_case` (Call/Near.lean); the proof is Flapjack's with the witness bound added. -/
theorem near_case_bounded (c : BitVec 64) (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.call c) s2 ∧ targetStateRel riscvTarget s1 ms)
    (range : -1048576 ≤ c.toInt ∧ c.toInt ≤ 1048575) :
    ∃ n : Nat, n ≤ riscvStepBound (.call c) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.call c)).length s1.pc
      asserts n (fun k s => env (n-k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n+1) (fun k => env (n+1-k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  have hs : asmStep riscvConfig s1 (.call c) s2 := h.1
  have guard := call_guard c hs.2.2.2.2.2.2
  have offset := Jump.near_jump_offset c range guard.2
  have bounds : (18446744073708503040#64).sle c = true ∧
      c.sle (1048575#64) = true := by
    simp only [BitVec.sle_eq_decide, decide_eq_true_eq]
    change -1048576 ≤ c.toInt ∧ c.toInt ≤ 1048575
    exact range
  have enc : riscvConfig.encode (.call c) =
      riscvEncode (.Branch (.JAL (1#5,(c.sshiftRight 1).setWidth 20))) := by
    simp [riscvConfig, riscvEnc, riscvAst, inSignedRange, bounds.1, bounds.2]
  have hb := hs.1
  rw [enc] at hb
  have bytes := bytes_in_memory_thm () s1 ms _ _ _ _ ⟨h.2, hb⟩
  have pc := h.2.2.1
  change ms.c_PC ms.procID = s1.pc at pc
  have aligned := Jump.aligned_add (ms.c_PC ms.procID) c
    ((riscvOk_iff ms).mp h.2.1).2.2.2.2 guard.2
  have native_aligned : holAligned 2
      (ms.c_PC ms.procID + (((c.sshiftRight 1).setWidth 20).signExtend 64 <<< (1 : Nat))) = true := by
    rw [offset]
    exact aligned
  have hn := near_call_next ms ((c.sshiftRight 1).setWidth 20) h.2.1 native_aligned
    bytes.2.2.2.2.2.1 bytes.2.2.2.2.2.2.1
    bytes.2.2.2.2.2.2.2.1 bytes.2.2.2.2.2.2.2.2.1
  have next : riscvTarget.next ms = callPost ms (s1.pc+c) := by
    change holThe (NextRISCV ms) = _
    rw [hn, offset, pc]
    rfl
  have target_aligned : holAligned 2 (s1.pc+c) = true := by simpa [pc] using aligned
  have hp := call_post_rel s1 ms (s1.pc+c) h.2 target_aligned
  have length : (riscvConfig.encode (.call c)).length = 4 := by
    rw [enc]
    rfl
  have post : s2 = updPc (s1.pc+c) (updReg 1 (s1.pc+4) s1) := by
    simpa [length] using call_post c s1 s2 hs
  rw [←post] at hp
  refine ⟨0, Nat.zero_le _, ?_⟩
  intro env interference
  have projection := interference 0 (callPost ms (s1.pc+c))
  have transport := (riscv_target_ok.2 (env 0 (callPost ms (s1.pc+c)))
    (callPost ms (s1.pc+c)) s2
    (by simpa [post,updPc,updReg] using projection)).1
  constructor
  · simpa [asserts, next] using transport.mpr hp
  · simp only [asserts2]
    rw [next]
    exact ⟨fun _ _ => rfl, trivial⟩

end Flapjack.RiscV.TargetProof.Call

namespace Flapjack.RiscV.TargetProof.Call
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmProps Compiler.Encoders.AsmSem Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound
set_option maxRecDepth 200000
set_option maxHeartbeats 2000000
open private upperValue far_two_steps from Flapjack.RiscV.CorrectnessEncoding.Call.Far

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.Call.far_case` (Call/Far.lean); the proof is Flapjack's with the witness bound added. -/
theorem far_case_bounded (c : BitVec 64) (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.call c) s2 ∧ targetStateRel riscvTarget s1 ms)
    (far : ¬(-1048576 ≤ c.toInt ∧ c.toInt ≤ 1048575)) :
    ∃ n : Nat, n ≤ riscvStepBound (.call c) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.call c)).length s1.pc
      asserts n (fun k s => env (n-k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n+1) (fun k => env (n+1-k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  refine ⟨1, Nat.le_of_eq (riscvStepBound_call_far c far).symm, ?_⟩
  intro env interference
  have hs : asmStep riscvConfig s1 (.call c) s2 := h.1
  have run := far_two_steps c s1 s2 ms hs h.2 far env interference
  dsimp only at run
  let mid := writePost ms (1#5) (s1.pc+upperValue c)
  let src := updPc (s1.pc+4) (updReg 1 (s1.pc+upperValue c) s1)
  have first : riscvTarget.next ms = mid := run.1
  have second : riscvTarget.next (env 0 mid) = callPost (env 0 mid) (s1.pc+c) := run.2.2.1
  have rel : targetStateRel riscvTarget src (env 0 mid) := run.2.1
  have valid := rel.1
  have code : ∀ pc, pc ∈ allPcs (riscvConfig.encode (.call c)).length s1.pc 0 →
      riscvTarget.getByte (env 0 mid) pc = riscvTarget.getByte ms pc := by
    intro pc covered
    have domain := bytesInMemory_allPcs _ _ _ _ 0 hs.1 covered
    have before := h.2.2.2.1 pc domain
    have after := rel.2.2.1 pc domain
    exact after.trans before.symm
  have length : (riscvConfig.encode (.call c)).length = 8 := by
    have notnear : ¬((18446744073708503040#64).sle c = true ∧ c.sle (1048575#64) = true) := by
      intro h
      apply far
      simp only [BitVec.sle_eq_decide, decide_eq_true_eq] at h
      change -1048576 ≤ c.toInt ∧ c.toInt ≤ 1048575 at h
      exact h
    simp [riscvConfig,riscvEnc,riscvAst,inSignedRange,notnear,riscvEncode]
  have pc : riscvTarget.getPc (env 0 mid) ∈
      allPcs (riscvConfig.encode (.call c)).length s1.pc riscvConfig.codeAlignment := by
    have address := rel.2.1
    change riscvTarget.getPc (env 0 mid) = s1.pc+4 at address
    rw [address, allPcs_eq, length]
    refine ⟨1,?_,?_⟩
    · norm_num [riscvConfig]
    · rfl
  constructor
  · simpa [asserts,first,second] using ⟨⟨valid,code,pc⟩,run.2.2.2⟩
  · simp only [asserts2]
    rw [first]
    change (∀ x, ¬s1.memDomain x → ms.MEM8 x = mid.MEM8 x) ∧
      (∀ x, ¬s1.memDomain x → (env 0 mid).MEM8 x =
        (riscvTarget.next (env 0 mid)).MEM8 x) ∧ True
    rw [second]
    exact ⟨fun _ _ => rfl,fun _ _ => rfl,trivial⟩

end Flapjack.RiscV.TargetProof.Call

namespace Flapjack.RiscV.TargetProof
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmProps Compiler.Encoders.AsmSem Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_call` (Call.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_call_bounded (c : BitVec 64) (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.call c) s2 ∧ targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.call c) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.call c)).length s1.pc
      asserts n (fun k s => env (n-k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n+1) (fun k => env (n+1-k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  by_cases range : -1048576 ≤ c.toInt ∧ c.toInt ≤ 1048575
  · exact Call.near_case_bounded c s1 s2 ms h range
  · exact Call.far_case_bounded c s1 s2 ms h range

end Flapjack.RiscV.TargetProof
