import InitECandidate.Solver.EncoderBound.Defs

/-!
Bounded restatements of Flapjack's straight-line RISC-V encoder cases
(Skip, Const, Binop, Div, LongMul, LongDiv, AddCarry, AddOverflow, SubOverflow,
memory, JumpReg, Loc).

Each theorem is the Flapjack constructor theorem (pinned flapjack rev
034bb5a1ed0b757082768d5406206bd2f8e31b7c) with `n ≤ riscvStepBound i ∧` added to its
conclusion and the bound proved at Flapjack's own `refine ⟨witness, ?_⟩`; the rest of
each proof is unchanged and Flapjack's private helpers are reused via `open private`.
The case modules import each other linearly only to serialize their builds
(each Lean process peaks at about 4 GiB RSS).
-/

namespace Flapjack.RiscV.TargetProof
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmProps Compiler.Encoders.AsmSem Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound
open private skip_encoding skipPost skip_next skip_post_rel from Flapjack.RiscV.CorrectnessEncoding.Skip

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_skip` (Skip.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_skip_bounded (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.inst .skip) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.inst .skip) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.inst .skip)).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  have hs := h.1
  change asmStep riscvConfig s1 (.inst .skip) s2 at hs
  have enc : riscvConfig.encode (.inst .skip) = [19, 0, 0, 0] := skip_encoding
  have hb := hs.1
  rw [enc] at hb
  have bytes := bytes_in_memory_thm () s1 ms 19 0 0 0 ⟨h.2, hb⟩
  have hn := skip_next ms h.2.1 bytes.2.2.2.2.2.1
    bytes.2.2.2.2.2.2.1 bytes.2.2.2.2.2.2.2.1 bytes.2.2.2.2.2.2.2.2.1
  have next : riscvTarget.next ms = skipPost ms := by
    change holThe (NextRISCV ms) = skipPost ms
    rw [hn]
    rfl
  have he : s2 = updPc (s1.pc + 4) s1 := by
    have step := hs.2.2.2.2.1
    rw [enc] at step
    simpa [asmUpd, instUpd] using step.symm
  subst s2
  refine ⟨0, Nat.zero_le _, ?_⟩
  intro env interference
  have hp := skip_post_rel s1 ms h.2
  have projection := interference 0 (skipPost ms)
  have transport := (riscv_target_ok.2 (env 0 (skipPost ms)) (skipPost ms)
    (updPc (s1.pc + 4) s1) projection).1
  constructor
  · simpa [asserts, next] using transport.mpr hp
  · simp only [asserts2]
    rw [next]
    exact ⟨fun _ _ => rfl, trivial⟩

end Flapjack.RiscV.TargetProof

namespace Flapjack.RiscV.TargetProof
open Flapjack RiscV.L3 Compiler.Encoders.Asm Compiler.Encoders.AsmSem
  Compiler.Encoders.AsmProps Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound
set_option maxRecDepth 200000
set_option maxHeartbeats 2000000
open private bytes_from_domain from Flapjack.RiscV.CorrectnessEncoding.ConstAssertions

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_const` (ConstAssertions.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_const_bounded (r : Nat) (c : BitVec 64)
    (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.inst (.const r c)) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.inst (.const r c)) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.inst (.const r c))).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  let is := riscvAst (.inst (.const r c))
  have nonempty : is ≠ [] := const_register_nonempty r c
  have positive : 0 < is.length := List.length_pos_iff.mpr nonempty
  refine ⟨is.length - 1, Nat.le_refl _, ?_⟩
  intro env interference
  have hs : asmStep riscvConfig s1 (.inst (.const r c)) s2 := h.1
  have kinds : ∀ i ∈ is, ConstRegisterInstruction i := const_register_family r c
  have nonzero : ∀ i ∈ is, constDestination i ≠ 0#5 :=
    const_dest_nonzero r c hs.2.2.2.2.2.2
  have pcEq : ms.c_PC ms.procID = s1.pc := h.2.2.1
  have sourceBytes : bytesInMemoryHOL s1.pc (is.flatMap riscvEncode) s1.mem s1.memDomain := hs.1
  have bytes := bytes_from_domain _ _ _ ms.MEM8 _ sourceBytes h.2.2.2.1
  rw [← pcEq] at bytes
  have projection := const_native_execute_projection s1.memDomain is kinds nonzero env 0 ms h.2.1 bytes interference
  have pureRel := const_step_post_relation r c s1 s2 ms hs h.2
  have finalRel : targetStateRel riscvTarget s2 (constNativeExecute env 0 is ms) :=
    (riscv_target_ok.2 _ _ s2 (by
      simpa only [const_source_post r c s1 s2 hs, updPc, updReg, riscvTarget, is] using projection)).1.mpr pureRel
  constructor
  · let P := fun ms' => riscvTarget.stateOk ms' = true ∧
        (∀ pc, pc ∈ allPcs (riscvTarget.config.encode (.inst (.const r c))).length s1.pc 0 →
          riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
        riscvTarget.getPc ms' ∈ allPcs (riscvTarget.config.encode (.inst (.const r c))).length
          s1.pc riscvTarget.config.codeAlignment
    have mid : ∀ j, 0 < j → j < is.length → P (constNativeExecute env 0 (is.take j) ms) := by
      intro j lower upper
      have prefixKinds : ∀ i ∈ is.take j, ConstRegisterInstruction i :=
        fun i member => kinds i (List.mem_of_mem_take member)
      have prefixNonzero : ∀ i ∈ is.take j, constDestination i ≠ 0#5 :=
        fun i member => nonzero i (List.mem_of_mem_take member)
      have prefixBytes : bytesInMemoryHOL (ms.c_PC ms.procID)
          ((is.take j).flatMap riscvEncode) ms.MEM8 s1.memDomain := by
        have allBytes := bytes
        rw [← List.take_append_drop j is, List.flatMap_append, bytesInMemory_append] at allBytes
        exact allBytes.1
      have prefixFrame := const_native_execute_frame s1.memDomain (is.take j)
        prefixKinds prefixNonzero env 0 ms h.2.1 prefixBytes interference
      dsimp only at prefixFrame
      refine ⟨prefixFrame.1, ?_, ?_⟩
      · intro a covered
        have domain := bytesInMemory_allPcs _ _ _ _ 0 hs.1 covered
        exact prefixFrame.2.2 a domain
      · change (constNativeExecute env 0 (is.take j) ms).c_PC
          (constNativeExecute env 0 (is.take j) ms).procID ∈ _
        rw [prefixFrame.2.1, pcEq, allPcs_eq]
        refine ⟨j, ?_, ?_⟩
        · change j * 4 < (riscvEnc (.inst (.const r c))).length
          rw [riscvEnc_length_eq]
          dsimp only [is] at upper
          omega
        · simp only [List.length_take, Nat.min_eq_left (Nat.le_of_lt upper)]
          change s1.pc + BitVec.ofNat 64 (4 * j) = s1.pc + BitVec.ofNat 64 (j * 4)
          rw [Nat.mul_comm]
    simpa only [Nat.zero_add] using
      const_asserts_of_prefixes is nonempty env 0 ms P _ mid finalRel
  · have memoryFrame := const_native_asserts2 s1.memDomain is kinds nonzero env 0 ms h.2.1 bytes interference
    have count : is.length - 1 + 1 = is.length := by omega
    simpa only [count, Nat.zero_add, riscvTarget] using memoryFrame

end Flapjack.RiscV.TargetProof

namespace Flapjack.RiscV.TargetProof
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmProps Compiler.Encoders.AsmSem Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound
set_option autoImplicit false
set_option maxRecDepth 200000
set_option maxHeartbeats 2000000
open private binopWord binop_decode binop_low reg_nonzero reg_read from Flapjack.RiscV.CorrectnessEncoding.BinopRegister

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_binopRegister` (BinopRegister.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_binopRegister_bounded (op : HolBinop) (rd rs1 rs2 : Nat) (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.inst (.arith (.binop op rd rs1 (.reg rs2)))) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.inst (.arith (.binop op rd rs1 (.reg rs2)))) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.inst (.arith (.binop op rd rs1 (.reg rs2))))).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  have hs := h.1
  change asmStep riscvConfig s1 (.inst (.arith (.binop op rd rs1 (.reg rs2)))) s2 at hs
  have guards : asmRegOkExact rd riscvConfig = true ∧
      asmRegOkExact rs1 riscvConfig = true ∧ asmRegOkExact rs2 riscvConfig = true := by
    simpa [asmOkExact, asmInstOkExact, asmArithOkExact, asmRegImmOkExact,
      riscvConfig, Bool.and_eq_true, and_assoc] using hs.2.2.2.2.2.2
  have bound : rd < 32 := by
    have g := guards.1
    simp [asmRegOkExact, riscvConfig] at g
    exact of_decide_eq_true g.1
  let value := binopValue op (readReg rs1 s1) (readReg rs2 s1)
  have source : s2 = updPc (s1.pc + 4) (updReg rd value s1) := by
    rw [binop_source_post op rd rs1 (.reg rs2) s1 s2 hs]
    cases op <;> rfl
  have enc : riscvConfig.encode (.inst (.arith (.binop op rd rs1 (.reg rs2)))) =
      [RiscV.L3.holWordExtract 8 7 0 (binopWord op (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)),
       RiscV.L3.holWordExtract 8 15 8 (binopWord op (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)),
       RiscV.L3.holWordExtract 8 23 16 (binopWord op (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)),
       RiscV.L3.holWordExtract 8 31 24 (binopWord op (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2))] := rfl
  have hb := hs.1
  rw [enc] at hb
  have bytes := bytes_in_memory_thm () s1 ms _ _ _ _ ⟨h.2, hb⟩
  have left := reg_read rs1 s1 ms guards.2.1 h.2
  have right := reg_read rs2 s1 ms guards.2.2 h.2
  let fetched : riscv_state := {ms with c_Skip := holUpdate ms.procID 4 ms.c_Skip}
  have run : Run (.ArithR (riscvBopR op (BitVec.ofNat 5 rd, BitVec.ofNat 5 rs1, BitVec.ofNat 5 rs2))) fetched =
      «write'GPR» (value, BitVec.ofNat 5 rd) fetched := by
    rw [binop_register_run]
    simpa [fetched, GPR, gpr, value] using congrArg
      (fun v => «write'GPR» (v, BitVec.ofNat 5 rd) fetched)
      (congrArg₂ (binopValue op) left right)
  have low := binop_low op (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)
  have hn := write_next ms _ _ (BitVec.ofNat 5 rd) value (reg_nonzero rd guards.1)
    h.2.1 (binop_decode op _ _ _) run low.1 low.2
    bytes.2.2.2.2.2.1 bytes.2.2.2.2.2.2.1
    bytes.2.2.2.2.2.2.2.1 bytes.2.2.2.2.2.2.2.2.1
  have next : riscvTarget.next ms = writePost ms (BitVec.ofNat 5 rd) value := by
    change holThe (NextRISCV ms) = _
    rw [hn]
    rfl
  rw [source]
  refine ⟨0, Nat.zero_le _, ?_⟩
  intro env interference
  have hp := write_post_rel s1 ms rd value bound h.2
  have projection := interference 0 (writePost ms (BitVec.ofNat 5 rd) value)
  have transport := (riscv_target_ok.2 (env 0 (writePost ms (BitVec.ofNat 5 rd) value))
    (writePost ms (BitVec.ofNat 5 rd) value) (updPc (s1.pc + 4) (updReg rd value s1)) projection).1
  constructor
  · simpa [asserts, next] using transport.mpr hp
  · simp only [asserts2]
    rw [next]
    exact ⟨fun _ _ => rfl, trivial⟩

end Flapjack.RiscV.TargetProof

namespace Flapjack.RiscV.TargetProof
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmProps Compiler.Encoders.AsmSem Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound
set_option autoImplicit false
set_option maxRecDepth 200000
set_option maxHeartbeats 2000000
open private binopImmInstruction binopImmWord binop_imm_decode binop_imm_low binop_imm_run imm_valid_of_ok imm_reg_nonzero imm_reg_read from Flapjack.RiscV.CorrectnessEncoding.BinopImmediate

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_binopImmediate` (BinopImmediate.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_binopImmediate_bounded (op : HolBinop) (rd rs1 : Nat) (c : BitVec 64) (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.inst (.arith (.binop op rd rs1 (.imm c)))) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.inst (.arith (.binop op rd rs1 (.imm c)))) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.inst (.arith (.binop op rd rs1 (.imm c))))).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  have hs := h.1
  change asmStep riscvConfig s1 (.inst (.arith (.binop op rd rs1 (.imm c)))) s2 at hs
  have guards : asmRegOkExact rd riscvConfig = true ∧
      asmRegOkExact rs1 riscvConfig = true ∧ asmRegImmOkExact (.inl op) (.imm c) riscvConfig = true := by
    simpa [asmOkExact, asmInstOkExact, asmArithOkExact,
      riscvConfig, Bool.and_eq_true, and_assoc] using hs.2.2.2.2.2.2
  have bound : rd < 32 := by
    have g := guards.1
    simp [asmRegOkExact, riscvConfig] at g
    exact of_decide_eq_true g.1
  let value := binopValue op (readReg rs1 s1) c
  have source : s2 = updPc (s1.pc + 4) (updReg rd value s1) := by
    rw [binop_source_post op rd rs1 (.imm c) s1 s2 hs]
    cases op <;> rfl
  have enc : riscvConfig.encode (.inst (.arith (.binop op rd rs1 (.imm c)))) =
      [RiscV.L3.holWordExtract 8 7 0 (binopImmWord op (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) c),
       RiscV.L3.holWordExtract 8 15 8 (binopImmWord op (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) c),
       RiscV.L3.holWordExtract 8 23 16 (binopImmWord op (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) c),
       RiscV.L3.holWordExtract 8 31 24 (binopImmWord op (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) c)] := by cases op <;> rfl
  have hb := hs.1
  rw [enc] at hb
  have bytes := bytes_in_memory_thm () s1 ms _ _ _ _ ⟨h.2, hb⟩
  have left := imm_reg_read rs1 s1 ms guards.2.1 h.2
  have valid := imm_valid_of_ok op c guards.2.2
  let fetched : riscv_state := {ms with c_Skip := holUpdate ms.procID 4 ms.c_Skip}
  have run : Run (binopImmInstruction op (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) c) fetched =
      «write'GPR» (value, BitVec.ofNat 5 rd) fetched := by
    rw [binop_imm_run op _ _ c fetched valid]
    simpa [fetched, GPR, gpr, value] using congrArg
      (fun v => «write'GPR» (v, BitVec.ofNat 5 rd) fetched)
      (congrArg (fun v => binopValue op v c) left)
  have low := binop_imm_low op (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) c
  have hn := write_next ms _ _ (BitVec.ofNat 5 rd) value (imm_reg_nonzero rd guards.1)
    h.2.1 (binop_imm_decode op _ _ c) run low.1 low.2
    bytes.2.2.2.2.2.1 bytes.2.2.2.2.2.2.1
    bytes.2.2.2.2.2.2.2.1 bytes.2.2.2.2.2.2.2.2.1
  have next : riscvTarget.next ms = writePost ms (BitVec.ofNat 5 rd) value := by
    change holThe (NextRISCV ms) = _
    rw [hn]
    rfl
  rw [source]
  refine ⟨0, Nat.zero_le _, ?_⟩
  intro env interference
  have hp := write_post_rel s1 ms rd value bound h.2
  have projection := interference 0 (writePost ms (BitVec.ofNat 5 rd) value)
  have transport := (riscv_target_ok.2 (env 0 (writePost ms (BitVec.ofNat 5 rd) value))
    (writePost ms (BitVec.ofNat 5 rd) value) (updPc (s1.pc + 4) (updReg rd value s1)) projection).1
  constructor
  · simpa [asserts, next] using transport.mpr hp
  · simp only [asserts2]
    rw [next]
    exact ⟨fun _ _ => rfl, trivial⟩

end Flapjack.RiscV.TargetProof

namespace Flapjack.RiscV.TargetProof
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmProps Compiler.Encoders.AsmSem Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound
set_option autoImplicit false

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_binop` (Binop.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_binop_bounded (op : HolBinop) (rd rs1 : Nat) (right : HolRegImm 64) (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.inst (.arith (.binop op rd rs1 right))) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.inst (.arith (.binop op rd rs1 right))) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.inst (.arith (.binop op rd rs1 right)))).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  cases right with
  | reg rs2 => exact riscv_encoder_correct_binopRegister_bounded op rd rs1 rs2 s1 s2 ms h
  | imm c => exact riscv_encoder_correct_binopImmediate_bounded op rd rs1 c s1 s2 ms h

end Flapjack.RiscV.TargetProof

namespace Flapjack.RiscV.TargetProof
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmProps Compiler.Encoders.AsmSem Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound
set_option autoImplicit false
set_option maxRecDepth 200000
set_option maxHeartbeats 2000000
open private divWord div_low reg_nonzero reg_read from Flapjack.RiscV.CorrectnessEncoding.Div

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_div` (Div.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_div_bounded (rd rs1 rs2 : Nat) (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.inst (.arith (.div rd rs1 rs2))) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.inst (.arith (.div rd rs1 rs2))) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.inst (.arith (.div rd rs1 rs2)))).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  have hs := h.1
  change asmStep riscvConfig s1 (.inst (.arith (.div rd rs1 rs2))) s2 at hs
  have guards : asmRegOkExact rd riscvConfig = true ∧
      asmRegOkExact rs1 riscvConfig = true ∧ asmRegOkExact rs2 riscvConfig = true := by
    simpa [asmOkExact, asmInstOkExact, asmArithOkExact,
      riscvConfig, Bool.and_eq_true, and_assoc] using hs.2.2.2.2.2.2
  have bound : rd < 32 := by
    have g := guards.1
    simp [asmRegOkExact, riscvConfig] at g
    exact of_decide_eq_true g.1
  have nonzero : readReg rs2 s1 ≠ 0#64 := by
    intro zero
    have failed := hs.2.2.2.2.2.1
    rw [← hs.2.2.2.2.1] at failed
    simp [asmUpd, instUpd, arithUpd, assertState, updPc, updReg, zero] at failed
  have nzbool : (readReg rs2 s1 != 0#64) = true := by
    simp [bne, nonzero]
  let value := (readReg rs1 s1).sdiv (readReg rs2 s1)
  have source : s2 = updPc (s1.pc + 4) (updReg rd value s1) := by
    simpa [asmUpd, instUpd, arithUpd, riscvConfig, riscvEnc_length_eq,
      riscvAst, assertState, nzbool, value, updReg] using hs.2.2.2.2.1.symm
  have enc : riscvConfig.encode (.inst (.arith (.div rd rs1 rs2))) =
      [RiscV.L3.holWordExtract 8 7 0 (divWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)),
       RiscV.L3.holWordExtract 8 15 8 (divWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)),
       RiscV.L3.holWordExtract 8 23 16 (divWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)),
       RiscV.L3.holWordExtract 8 31 24 (divWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2))] := rfl
  have hb := hs.1
  rw [enc] at hb
  have bytes := bytes_in_memory_thm () s1 ms _ _ _ _ ⟨h.2, hb⟩
  have left := reg_read rs1 s1 ms guards.2.1 h.2
  have right := reg_read rs2 s1 ms guards.2.2 h.2
  let fetched : riscv_state := {ms with c_Skip := holUpdate ms.procID 4 ms.c_Skip}
  have run : Run (.MulDiv (.DIV (BitVec.ofNat 5 rd, BitVec.ofNat 5 rs1, BitVec.ofNat 5 rs2))) fetched =
      «write'GPR» (value, BitVec.ofNat 5 rd) fetched := by
    have rightf : GPR (BitVec.ofNat 5 rs2) fetched = readReg rs2 s1 := by
      simpa [fetched, GPR, gpr] using right
    have nn : GPR (BitVec.ofNat 5 rs2) fetched ≠ 0#64 := by
      rw [rightf]
      exact nonzero
    change «dfn'DIV» (BitVec.ofNat 5 rd, BitVec.ofNat 5 rs1, BitVec.ofNat 5 rs2) fetched = _
    simp only [«dfn'DIV»]
    simp only [beq_iff_eq, nn, ↓reduceIte]
    simpa [fetched, GPR, gpr, value] using congrArg
      (fun v => «write'GPR» (v, BitVec.ofNat 5 rd) fetched)
      (congrArg₂ BitVec.sdiv left right)
  have low := div_low (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)
  have hn := write_next ms _ _ (BitVec.ofNat 5 rd) value (reg_nonzero rd guards.1)
    h.2.1 (decode_encode_div _ _ _) run low.1 low.2
    bytes.2.2.2.2.2.1 bytes.2.2.2.2.2.2.1
    bytes.2.2.2.2.2.2.2.1 bytes.2.2.2.2.2.2.2.2.1
  have next : riscvTarget.next ms = writePost ms (BitVec.ofNat 5 rd) value := by
    change holThe (NextRISCV ms) = _
    rw [hn]
    rfl
  rw [source]
  refine ⟨0, Nat.zero_le _, ?_⟩
  intro env interference
  have hp := write_post_rel s1 ms rd value bound h.2
  have projection := interference 0 (writePost ms (BitVec.ofNat 5 rd) value)
  have transport := (riscv_target_ok.2 (env 0 (writePost ms (BitVec.ofNat 5 rd) value))
    (writePost ms (BitVec.ofNat 5 rd) value) (updPc (s1.pc + 4) (updReg rd value s1)) projection).1
  constructor
  · simpa [asserts, next] using transport.mpr hp
  · simp only [asserts2]
    rw [next]
    exact ⟨fun _ _ => rfl, trivial⟩

end Flapjack.RiscV.TargetProof

namespace Flapjack.RiscV.TargetProof
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.RiscV.Target
  Compiler.Encoders.Asm Compiler.Encoders.AsmSem Compiler.Encoders.AsmProps
open InitECandidate.Solver.EncoderBound
set_option autoImplicit false
set_option maxRecDepth 200000
set_option maxHeartbeats 2000000
open private longMulInstruction longMulValue longMulLowValue longMulNext from Flapjack.RiscV.CorrectnessEncoding.LongMul

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_longmul` (LongMul.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_longmul_bounded (hi lo rs1 rs2 : Nat) (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.inst (.arith (.longMul hi lo rs1 rs2))) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.inst (.arith (.longMul hi lo rs1 rs2))) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.inst (.arith (.longMul hi lo rs1 rs2)))).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  have hs := h.1
  change asmStep riscvConfig s1 (.inst (.arith (.longMul hi lo rs1 rs2))) s2 at hs
  have guards : asmRegOkExact hi riscvConfig = true ∧
      asmRegOkExact lo riscvConfig = true ∧ asmRegOkExact rs1 riscvConfig = true ∧
      asmRegOkExact rs2 riscvConfig = true ∧ hi ≠ rs1 ∧ hi ≠ rs2 := by
    simpa [asmOkExact, asmInstOkExact, asmArithOkExact,
      riscvConfig, Bool.and_eq_true, and_assoc] using hs.2.2.2.2.2.2
  have boundHi : hi < 32 := by
    have g := guards.1
    simp [asmRegOkExact, riscvConfig] at g
    exact of_decide_eq_true g.1
  have boundLo : lo < 32 := by
    have g := guards.2.1
    simp [asmRegOkExact, riscvConfig] at g
    exact of_decide_eq_true g.1
  let high := longMulValue true (readReg rs1 s1) (readReg rs2 s1)
  let low := longMulValue false (readReg rs1 s1) (readReg rs2 s1)
  let firstInst := longMulInstruction true (BitVec.ofNat 5 hi) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)
  let secondInst := longMulInstruction false (BitVec.ofNat 5 lo) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)
  let mid := updPc (s1.pc + 4) (updReg hi high s1)
  have source : s2 = updPc (s1.pc + 8) (updReg lo low (updReg hi high s1)) := by
    simpa [asmUpd, instUpd, arithUpd, riscvConfig, riscvEnc_length_eq,
      riscvAst, high, low, longMulValue, longMulLowValue] using hs.2.2.2.2.1.symm
  have hb := hs.1
  change bytesInMemoryHOL s1.pc (riscvEncode firstInst ++ riscvEncode secondInst) s1.mem s1.memDomain at hb
  have pair := (bytesInMemory_append _ _ _ _ _).mp hb
  have secondBytes : bytesInMemoryHOL (s1.pc + 4) (riscvEncode secondInst) s1.mem s1.memDomain := by
    simpa [riscvEncode] using pair.2
  have firstNext := longMulNext true hi rs1 rs2 s1 ms
    ⟨guards.1, guards.2.2.1, guards.2.2.2.1⟩ h.2 pair.1
  have firstPure := write_post_rel s1 ms hi high boundHi h.2
  have left : readReg rs1 mid = readReg rs1 s1 := by
    simp [readReg, mid, updPc, updReg, Ne.symm guards.2.2.2.2.1]
  have right : readReg rs2 mid = readReg rs2 s1 := by
    simp [readReg, mid, updPc, updReg, Ne.symm guards.2.2.2.2.2]
  refine ⟨1, Nat.le_of_eq (riscvStepBound_longMul hi lo rs1 rs2).symm, ?_⟩
  intro env interference
  let firstMs := env 0 (writePost ms (BitVec.ofNat 5 hi) high)
  have firstRel : targetStateRel riscvTarget mid firstMs := by
    exact (riscv_target_ok.2 firstMs (writePost ms (BitVec.ofNat 5 hi) high) mid
      (interference 0 _)).1.mpr firstPure
  have secondBytesMid : bytesInMemoryHOL mid.pc (riscvEncode secondInst) mid.mem mid.memDomain := by
    simpa [mid, updPc, updReg] using secondBytes
  have secondNext := longMulNext false lo rs1 rs2 mid firstMs
    ⟨guards.2.1, guards.2.2.1, guards.2.2.2.1⟩ firstRel secondBytesMid
  rw [left, right] at secondNext
  have finalSource : updPc (mid.pc + 4) (updReg lo low mid) = s2 := by
    rw [source]
    simp [mid, updPc, updReg, BitVec.add_assoc]
  have secondPure := write_post_rel mid firstMs lo low boundLo firstRel
  have finalRel : targetStateRel riscvTarget s2 (env 1 (writePost firstMs (BitVec.ofNat 5 lo) low)) := by
    rw [← finalSource]
    exact (riscv_target_ok.2 _ _ (updPc (mid.pc + 4) (updReg lo low mid))
      (by simpa [mid, updPc, updReg] using interference 1 (writePost firstMs (BitVec.ofNat 5 lo) low))).1.mpr secondPure
  have encodedLength : (riscvTarget.config.encode (.inst (.arith (.longMul hi lo rs1 rs2)))).length = 8 := by
    simp [riscvTarget, riscvConfig, riscvEnc_length_eq, riscvAst]
  constructor
  · simp only [asserts]
    rw [firstNext]
    change (riscvTarget.stateOk firstMs = true ∧
      (∀ pc, pc ∈ allPcs _ s1.pc 0 → riscvTarget.getByte firstMs pc = riscvTarget.getByte ms pc) ∧
      riscvTarget.getPc firstMs ∈ allPcs _ s1.pc riscvTarget.config.codeAlignment) ∧
      targetStateRel riscvTarget s2 (env 1 (riscvTarget.next firstMs))
    constructor
    · refine ⟨firstRel.1, ?_, ?_⟩
      · intro pc covered
        have domain := bytesInMemory_allPcs _ _ _ _ 0 hs.1 covered
        exact (firstRel.2.2.1 pc domain).trans (h.2.2.2.1 pc domain).symm
      · change firstMs.c_PC firstMs.procID ∈ _
        have pcEq : firstMs.c_PC firstMs.procID = s1.pc + 4 := firstRel.2.1
        rw [pcEq, encodedLength, allPcs_eq]
        exact ⟨1, by decide, rfl⟩
    · rw [secondNext]
      exact finalRel
  · simp only [asserts2]
    rw [firstNext]
    refine ⟨fun _ _ => rfl, ?_⟩
    change (∀ x, ¬ s1.memDomain x → riscvTarget.getByte firstMs x = riscvTarget.getByte (riscvTarget.next firstMs) x) ∧ True
    rw [secondNext]
    exact ⟨fun _ _ => rfl, trivial⟩

end Flapjack.RiscV.TargetProof

namespace Flapjack.RiscV.TargetProof
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm Compiler.Encoders.AsmProps Compiler.Encoders.AsmSem Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_longdiv` (Rejected.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_longdiv_bounded (r1 r2 r3 r4 r5 : Nat) (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.inst (.arith (.longDiv r1 r2 r3 r4 r5))) s2 ∧ targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.inst (.arith (.longDiv r1 r2 r3 r4 r5))) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.inst (.arith (.longDiv r1 r2 r3 r4 r5)))).length s1.pc
      asserts n (fun k s => env (n-k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n+1) (fun k => env (n+1-k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  have good := h.1.2.2.2.2.2.2
  simp [riscvTarget,riscvConfig,asmOkExact,asmInstOkExact,asmArithOkExact] at good

end Flapjack.RiscV.TargetProof

namespace Flapjack.RiscV.TargetProof
open Flapjack RiscV.L3 Compiler.Encoders.Asm Compiler.Encoders.AsmSem
  Compiler.Encoders.AsmProps Compiler.Encoders.RiscV.Target AddCarry
open InitECandidate.Solver.EncoderBound
set_option autoImplicit false
set_option maxRecDepth 200000
set_option maxHeartbeats 2000000
open private bytes_from_domain from Flapjack.RiscV.CorrectnessEncoding.AddCarry

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_addcarry` (AddCarry.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_addcarry_bounded (r1 r2 r3 r4 : Nat)
    (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.inst (.arith (.addCarry r1 r2 r3 r4))) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.inst (.arith (.addCarry r1 r2 r3 r4))) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.inst (.arith (.addCarry r1 r2 r3 r4)))).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  let is := riscvAst (.inst (.arith (.addCarry r1 r2 r3 r4)))
  have nonempty : is ≠ [] := by simp [is,riscvAst]
  have positive : 0 < is.length := List.length_pos_iff.mpr nonempty
  refine ⟨is.length - 1, Nat.le_refl _, ?_⟩
  intro env interference
  have hs : asmStep riscvConfig s1 (.inst (.arith (.addCarry r1 r2 r3 r4))) s2 := h.1
  have kinds : ∀ i ∈ is, Family i := program_family _ _ _ _
  have guards : asmRegOkExact r1 riscvConfig = true ∧ asmRegOkExact r2 riscvConfig = true ∧
      asmRegOkExact r3 riscvConfig = true ∧ asmRegOkExact r4 riscvConfig = true ∧
      r1 ≠ r3 ∧ r1 ≠ r4 := by
    simpa [asmOkExact,asmInstOkExact,asmArithOkExact,riscvConfig,Bool.and_eq_true,and_assoc]
      using hs.2.2.2.2.2.2
  have nz1 := (guard r1 guards.1).2.1
  have nz4 := (guard r4 guards.2.2.2.1).2.1
  have nonzero : ∀ i ∈ is, destination i ≠ 0#5 := by
    intro i member
    change i ∈ program (BitVec.ofNat 5 r1) (BitVec.ofNat 5 r2)
      (BitVec.ofNat 5 r3) (BitVec.ofNat 5 r4) at member
    simp only [program,List.mem_cons,List.not_mem_nil,or_false] at member
    rcases member with rfl|rfl|rfl|rfl|rfl|rfl
    all_goals simp only [destination]
    all_goals first | exact nz1 | exact nz4 | decide
  have pcEq : ms.c_PC ms.procID = s1.pc := h.2.2.1
  have sourceBytes : bytesInMemoryHOL s1.pc (is.flatMap riscvEncode) s1.mem s1.memDomain := hs.1
  have bytes := bytes_from_domain _ _ _ ms.MEM8 _ sourceBytes h.2.2.2.1
  rw [← pcEq] at bytes
  have projection := execute_projection s1.memDomain is kinds nonzero env 0 ms h.2.1 bytes interference
  have pureRel := post_relation r1 r2 r3 r4 s1 s2 ms hs h.2
  have finalRel : targetStateRel riscvTarget s2 (constNativeExecute env 0 is ms) :=
    (riscv_target_ok.2 _ _ s2 (by
      simpa only [source_post r1 r2 r3 r4 s1 s2 hs, updPc, updReg, riscvTarget, is, riscvAst, program] using projection)).1.mpr pureRel
  constructor
  · let P := fun ms' => riscvTarget.stateOk ms' = true ∧
        (∀ pc, pc ∈ allPcs (riscvTarget.config.encode (.inst (.arith (.addCarry r1 r2 r3 r4)))).length s1.pc 0 →
          riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
        riscvTarget.getPc ms' ∈ allPcs (riscvTarget.config.encode (.inst (.arith (.addCarry r1 r2 r3 r4)))).length
          s1.pc riscvTarget.config.codeAlignment
    have mid : ∀ j, 0 < j → j < is.length → P (constNativeExecute env 0 (is.take j) ms) := by
      intro j lower upper
      have prefixKinds : ∀ i ∈ is.take j, Family i :=
        fun i member => kinds i (List.mem_of_mem_take member)
      have prefixNonzero : ∀ i ∈ is.take j, destination i ≠ 0#5 :=
        fun i member => nonzero i (List.mem_of_mem_take member)
      have prefixBytes : bytesInMemoryHOL (ms.c_PC ms.procID)
          ((is.take j).flatMap riscvEncode) ms.MEM8 s1.memDomain := by
        have allBytes := bytes
        rw [← List.take_append_drop j is, List.flatMap_append, bytesInMemory_append] at allBytes
        exact allBytes.1
      have prefixFrame := execute_frame s1.memDomain (is.take j)
        prefixKinds prefixNonzero env 0 ms h.2.1 prefixBytes interference
      dsimp only at prefixFrame
      refine ⟨prefixFrame.1, ?_, ?_⟩
      · intro a covered
        have domain := bytesInMemory_allPcs _ _ _ _ 0 hs.1 covered
        exact prefixFrame.2.2 a domain
      · change (constNativeExecute env 0 (is.take j) ms).c_PC
          (constNativeExecute env 0 (is.take j) ms).procID ∈ _
        rw [prefixFrame.2.1, pcEq, allPcs_eq]
        refine ⟨j, ?_, ?_⟩
        · change j * 4 < (riscvEnc (.inst (.arith (.addCarry r1 r2 r3 r4)))).length
          rw [riscvEnc_length_eq]
          dsimp only [is] at upper
          omega
        · simp only [List.length_take, Nat.min_eq_left (Nat.le_of_lt upper)]
          change s1.pc + BitVec.ofNat 64 (4 * j) = s1.pc + BitVec.ofNat 64 (j * 4)
          rw [Nat.mul_comm]
    simpa only [Nat.zero_add] using
      const_asserts_of_prefixes is nonempty env 0 ms P _ mid finalRel
  · have memoryFrame := native_asserts2 s1.memDomain is kinds nonzero env 0 ms h.2.1 bytes interference
    have count : is.length - 1 + 1 = is.length := by omega
    simpa only [count, Nat.zero_add, riscvTarget] using memoryFrame

end Flapjack.RiscV.TargetProof

namespace Flapjack.RiscV.TargetProof
open Flapjack RiscV.L3 Compiler.Encoders.Asm Compiler.Encoders.AsmSem
  Compiler.Encoders.AsmProps Compiler.Encoders.RiscV.Target AddOverflow
open InitECandidate.Solver.EncoderBound
set_option autoImplicit false
set_option maxRecDepth 200000
set_option maxHeartbeats 2000000
open private bytes_from_domain from Flapjack.RiscV.CorrectnessEncoding.AddOverflow

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_addoverflow` (AddOverflow.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_addoverflow_bounded (r1 r2 r3 r4 : Nat)
    (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.inst (.arith (.addOverflow r1 r2 r3 r4))) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.inst (.arith (.addOverflow r1 r2 r3 r4))) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.inst (.arith (.addOverflow r1 r2 r3 r4)))).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  let is := riscvAst (.inst (.arith (.addOverflow r1 r2 r3 r4)))
  have nonempty : is ≠ [] := by simp [is,riscvAst]
  have positive : 0 < is.length := List.length_pos_iff.mpr nonempty
  refine ⟨is.length - 1, Nat.le_refl _, ?_⟩
  intro env interference
  have hs : asmStep riscvConfig s1 (.inst (.arith (.addOverflow r1 r2 r3 r4))) s2 := h.1
  have kinds : ∀ i ∈ is, Family i := program_family _ _ _ _
  have guards : asmRegOkExact r1 riscvConfig = true ∧ asmRegOkExact r2 riscvConfig = true ∧
      asmRegOkExact r3 riscvConfig = true ∧ asmRegOkExact r4 riscvConfig = true ∧
      r1 ≠ r3 := by
    simpa [asmOkExact,asmInstOkExact,asmArithOkExact,riscvConfig,Bool.and_eq_true,and_assoc]
      using hs.2.2.2.2.2.2
  have nz1 := (guard r1 guards.1).2.1
  have nz4 := (guard r4 guards.2.2.2.1).2.1
  have nonzero : ∀ i ∈ is, destination i ≠ 0#5 := by
    intro i member
    change i ∈ program (BitVec.ofNat 5 r1) (BitVec.ofNat 5 r2)
      (BitVec.ofNat 5 r3) (BitVec.ofNat 5 r4) at member
    simp only [program,List.mem_cons,List.not_mem_nil,or_false] at member
    rcases member with rfl|rfl|rfl|rfl|rfl|rfl
    all_goals simp only [destination]
    all_goals first | exact nz1 | exact nz4 | decide
  have pcEq : ms.c_PC ms.procID = s1.pc := h.2.2.1
  have sourceBytes : bytesInMemoryHOL s1.pc (is.flatMap riscvEncode) s1.mem s1.memDomain := hs.1
  have bytes := bytes_from_domain _ _ _ ms.MEM8 _ sourceBytes h.2.2.2.1
  rw [← pcEq] at bytes
  have projection := execute_projection s1.memDomain is kinds nonzero env 0 ms h.2.1 bytes interference
  have pureRel := post_relation r1 r2 r3 r4 s1 s2 ms hs h.2
  have finalRel : targetStateRel riscvTarget s2 (constNativeExecute env 0 is ms) :=
    (riscv_target_ok.2 _ _ s2 (by
      simpa only [source_post r1 r2 r3 r4 s1 s2 hs, updPc, updReg, riscvTarget, is, riscvAst, program] using projection)).1.mpr pureRel
  constructor
  · let P := fun ms' => riscvTarget.stateOk ms' = true ∧
        (∀ pc, pc ∈ allPcs (riscvTarget.config.encode (.inst (.arith (.addOverflow r1 r2 r3 r4)))).length s1.pc 0 →
          riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
        riscvTarget.getPc ms' ∈ allPcs (riscvTarget.config.encode (.inst (.arith (.addOverflow r1 r2 r3 r4)))).length
          s1.pc riscvTarget.config.codeAlignment
    have mid : ∀ j, 0 < j → j < is.length → P (constNativeExecute env 0 (is.take j) ms) := by
      intro j lower upper
      have prefixKinds : ∀ i ∈ is.take j, Family i :=
        fun i member => kinds i (List.mem_of_mem_take member)
      have prefixNonzero : ∀ i ∈ is.take j, destination i ≠ 0#5 :=
        fun i member => nonzero i (List.mem_of_mem_take member)
      have prefixBytes : bytesInMemoryHOL (ms.c_PC ms.procID)
          ((is.take j).flatMap riscvEncode) ms.MEM8 s1.memDomain := by
        have allBytes := bytes
        rw [← List.take_append_drop j is, List.flatMap_append, bytesInMemory_append] at allBytes
        exact allBytes.1
      have prefixFrame := execute_frame s1.memDomain (is.take j)
        prefixKinds prefixNonzero env 0 ms h.2.1 prefixBytes interference
      dsimp only at prefixFrame
      refine ⟨prefixFrame.1, ?_, ?_⟩
      · intro a covered
        have domain := bytesInMemory_allPcs _ _ _ _ 0 hs.1 covered
        exact prefixFrame.2.2 a domain
      · change (constNativeExecute env 0 (is.take j) ms).c_PC
          (constNativeExecute env 0 (is.take j) ms).procID ∈ _
        rw [prefixFrame.2.1, pcEq, allPcs_eq]
        refine ⟨j, ?_, ?_⟩
        · change j * 4 < (riscvEnc (.inst (.arith (.addOverflow r1 r2 r3 r4)))).length
          rw [riscvEnc_length_eq]
          dsimp only [is] at upper
          omega
        · simp only [List.length_take, Nat.min_eq_left (Nat.le_of_lt upper)]
          change s1.pc + BitVec.ofNat 64 (4 * j) = s1.pc + BitVec.ofNat 64 (j * 4)
          rw [Nat.mul_comm]
    simpa only [Nat.zero_add] using
      const_asserts_of_prefixes is nonempty env 0 ms P _ mid finalRel
  · have memoryFrame := native_asserts2 s1.memDomain is kinds nonzero env 0 ms h.2.1 bytes interference
    have count : is.length - 1 + 1 = is.length := by omega
    simpa only [count, Nat.zero_add, riscvTarget] using memoryFrame

end Flapjack.RiscV.TargetProof

namespace Flapjack.RiscV.TargetProof
open Flapjack RiscV.L3 Compiler.Encoders.Asm Compiler.Encoders.AsmSem
  Compiler.Encoders.AsmProps Compiler.Encoders.RiscV.Target SubOverflow
open InitECandidate.Solver.EncoderBound
set_option autoImplicit false
set_option maxRecDepth 200000
set_option maxHeartbeats 2000000
open private bytes_from_domain from Flapjack.RiscV.CorrectnessEncoding.SubOverflow

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_suboverflow` (SubOverflow.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_suboverflow_bounded (r1 r2 r3 r4 : Nat)
    (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.inst (.arith (.subOverflow r1 r2 r3 r4))) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.inst (.arith (.subOverflow r1 r2 r3 r4))) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.inst (.arith (.subOverflow r1 r2 r3 r4)))).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  let is := riscvAst (.inst (.arith (.subOverflow r1 r2 r3 r4)))
  have nonempty : is ≠ [] := by simp [is,riscvAst]
  have positive : 0 < is.length := List.length_pos_iff.mpr nonempty
  refine ⟨is.length - 1, Nat.le_refl _, ?_⟩
  intro env interference
  have hs : asmStep riscvConfig s1 (.inst (.arith (.subOverflow r1 r2 r3 r4))) s2 := h.1
  have kinds : ∀ i ∈ is, Family i := program_family _ _ _ _
  have guards : asmRegOkExact r1 riscvConfig = true ∧ asmRegOkExact r2 riscvConfig = true ∧
      asmRegOkExact r3 riscvConfig = true ∧ asmRegOkExact r4 riscvConfig = true ∧
      r1 ≠ r3 := by
    simpa [asmOkExact,asmInstOkExact,asmArithOkExact,riscvConfig,Bool.and_eq_true,and_assoc]
      using hs.2.2.2.2.2.2
  have nz1 := (guard r1 guards.1).2.1
  have nz4 := (guard r4 guards.2.2.2.1).2.1
  have nonzero : ∀ i ∈ is, destination i ≠ 0#5 := by
    intro i member
    change i ∈ program (BitVec.ofNat 5 r1) (BitVec.ofNat 5 r2)
      (BitVec.ofNat 5 r3) (BitVec.ofNat 5 r4) at member
    simp only [program,List.mem_cons,List.not_mem_nil,or_false] at member
    rcases member with rfl|rfl|rfl|rfl|rfl|rfl
    all_goals simp only [destination]
    all_goals first | exact nz1 | exact nz4 | decide
  have pcEq : ms.c_PC ms.procID = s1.pc := h.2.2.1
  have sourceBytes : bytesInMemoryHOL s1.pc (is.flatMap riscvEncode) s1.mem s1.memDomain := hs.1
  have bytes := bytes_from_domain _ _ _ ms.MEM8 _ sourceBytes h.2.2.2.1
  rw [← pcEq] at bytes
  have projection := execute_projection s1.memDomain is kinds nonzero env 0 ms h.2.1 bytes interference
  have pureRel := post_relation r1 r2 r3 r4 s1 s2 ms hs h.2
  have finalRel : targetStateRel riscvTarget s2 (constNativeExecute env 0 is ms) :=
    (riscv_target_ok.2 _ _ s2 (by
      simpa only [source_post r1 r2 r3 r4 s1 s2 hs, updPc, updReg, riscvTarget, is, riscvAst, program] using projection)).1.mpr pureRel
  constructor
  · let P := fun ms' => riscvTarget.stateOk ms' = true ∧
        (∀ pc, pc ∈ allPcs (riscvTarget.config.encode (.inst (.arith (.subOverflow r1 r2 r3 r4)))).length s1.pc 0 →
          riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
        riscvTarget.getPc ms' ∈ allPcs (riscvTarget.config.encode (.inst (.arith (.subOverflow r1 r2 r3 r4)))).length
          s1.pc riscvTarget.config.codeAlignment
    have mid : ∀ j, 0 < j → j < is.length → P (constNativeExecute env 0 (is.take j) ms) := by
      intro j lower upper
      have prefixKinds : ∀ i ∈ is.take j, Family i :=
        fun i member => kinds i (List.mem_of_mem_take member)
      have prefixNonzero : ∀ i ∈ is.take j, destination i ≠ 0#5 :=
        fun i member => nonzero i (List.mem_of_mem_take member)
      have prefixBytes : bytesInMemoryHOL (ms.c_PC ms.procID)
          ((is.take j).flatMap riscvEncode) ms.MEM8 s1.memDomain := by
        have allBytes := bytes
        rw [← List.take_append_drop j is, List.flatMap_append, bytesInMemory_append] at allBytes
        exact allBytes.1
      have prefixFrame := execute_frame s1.memDomain (is.take j)
        prefixKinds prefixNonzero env 0 ms h.2.1 prefixBytes interference
      dsimp only at prefixFrame
      refine ⟨prefixFrame.1, ?_, ?_⟩
      · intro a covered
        have domain := bytesInMemory_allPcs _ _ _ _ 0 hs.1 covered
        exact prefixFrame.2.2 a domain
      · change (constNativeExecute env 0 (is.take j) ms).c_PC
          (constNativeExecute env 0 (is.take j) ms).procID ∈ _
        rw [prefixFrame.2.1, pcEq, allPcs_eq]
        refine ⟨j, ?_, ?_⟩
        · change j * 4 < (riscvEnc (.inst (.arith (.subOverflow r1 r2 r3 r4)))).length
          rw [riscvEnc_length_eq]
          dsimp only [is] at upper
          omega
        · simp only [List.length_take, Nat.min_eq_left (Nat.le_of_lt upper)]
          change s1.pc + BitVec.ofNat 64 (4 * j) = s1.pc + BitVec.ofNat 64 (j * 4)
          rw [Nat.mul_comm]
    simpa only [Nat.zero_add] using
      const_asserts_of_prefixes is nonempty env 0 ms P _ mid finalRel
  · have memoryFrame := native_asserts2 s1.memDomain is kinds nonzero env 0 ms h.2.1 bytes interference
    have count : is.length - 1 + 1 = is.length := by omega
    simpa only [count, Nat.zero_add, riscvTarget] using memoryFrame

end Flapjack.RiscV.TargetProof

namespace Flapjack.RiscV.TargetProof
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmSem Compiler.Encoders.AsmProps Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound
set_option autoImplicit false

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_mem` (MemoryAssertions.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_mem_bounded (m : HolMemop) (r base : Nat) (w : BitVec 64)
    (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.inst (.mem m r (.addr base w))) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.inst (.mem m r (.addr base w))) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.inst (.mem m r (.addr base w)))).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun before after => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte before x = riscvTarget.getByte after x) := by
  refine ⟨0, Nat.zero_le _, ?_⟩
  intro env interference
  have step : asmStep riscvConfig s1 (.inst (.mem m r (.addr base w))) s2 := h.1
  let native : instruction := match riscvMemop m with
    | .inl f => .Load (f (BitVec.ofNat 5 r, BitVec.ofNat 5 base, w.setWidth 12))
    | .inr f => .Store (f (BitVec.ofNat 5 base, BitVec.ofNat 5 r, w.setWidth 12))
  have emitted : native ∈ riscvAst (.inst (.mem m r (.addr base w))) := by
    cases m <;> simp [native, riscvAst, riscvMemop]
  have kind : MemoryInstruction native := by
    cases m <;> simp only [native, riscvMemop] <;> constructor
  have next : riscvTarget.next ms = memoryStep native ms := by
    change holThe (NextRISCV ms) = _
    rw [memory_source_next m r base w s1 s2 ms native step h.2 emitted]
    rfl
  have pureRelation := memory_step_post_relation m r base w s1 s2 ms native step h.2 emitted
  have domain := memory_source_post_domain m r base w s1 s2 step
  have projection : riscvTarget.proj s2.memDomain (env 0 (memoryStep native ms)) =
      riscvTarget.proj s2.memDomain (memoryStep native ms) := by
    rw [domain]
    exact interference 0 _
  have finalRelation : targetStateRel riscvTarget s2 (env 0 (memoryStep native ms)) :=
    (riscv_target_ok.2 _ _ s2 projection).1.mpr pureRelation
  constructor
  · simpa only [asserts, Nat.sub_self, next] using finalRelation
  · simp only [asserts2, next, and_true]
    intro x outside
    change ms.MEM8 x = (memoryStep native ms).MEM8 x
    rw [(memory_step_data_frame native kind ms h.2.1).1]
    exact (memory_run_outside_source_domain m r base w s1 s2 ms native
      step h.2 emitted x outside).symm

end Flapjack.RiscV.TargetProof

namespace Flapjack.RiscV.TargetProof
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmProps Compiler.Encoders.AsmSem Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound
open private jumpWord jumpPost jump_next jump_post_rel from Flapjack.RiscV.CorrectnessEncoding.JumpReg

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_jumpReg` (JumpReg.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_jumpReg_bounded (r : Nat) (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.jumpReg r) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.jumpReg r) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.jumpReg r)).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  have hs := h.1
  change asmStep riscvConfig s1 (.jumpReg r) s2 at hs
  have enc : riscvConfig.encode (.jumpReg r) =
      [RiscV.L3.holWordExtract 8 7 0 (jumpWord (BitVec.ofNat 5 r)),
       RiscV.L3.holWordExtract 8 15 8 (jumpWord (BitVec.ofNat 5 r)),
       RiscV.L3.holWordExtract 8 23 16 (jumpWord (BitVec.ofNat 5 r)),
       RiscV.L3.holWordExtract 8 31 24 (jumpWord (BitVec.ofNat 5 r))] := rfl
  have guard : r < riscvConfig.regCount ∧ riscvConfig.avoidRegs.contains r = false := by
    simpa [asmOkExact, asmRegOkExact] using hs.2.2.2.2.2.2
  have hbound : r < 32 := guard.1
  have rn : r ≠ 0 := by
    have avoid := guard.2
    simp [riscvConfig] at avoid
    exact avoid.1
  have word_nonzero : BitVec.ofNat 5 r ≠ (0#5) := by
    intro hz
    have hn := congrArg BitVec.toNat hz
    simp only [BitVec.toNat_ofNat] at hn
    norm_num at hn
    have small : r % 32 = r := Nat.mod_eq_of_lt hbound
    omega
  have hreg := h.2.2.2.2.1 r guard
  change ms.c_gpr ms.procID (BitVec.ofNat 5 r) = s1.regs r at hreg
  have reg : GPR (BitVec.ofNat 5 r) ms = s1.regs r := by
    simpa [GPR, gpr, word_nonzero] using hreg
  have step := hs.2.2.2.2.1
  have failed := hs.2.2.2.2.2.1
  rw [← step] at failed
  simp [asmUpd, updPc, assertState] at failed
  have aligned : holAligned 2 (s1.regs r) = true := by
    have ha := failed.1
    have align := hs.2.2.2.1
    change s1.align = 2 at align
    simpa [readReg, align] using ha
  have he : s2 = updPc (s1.regs r) s1 := by
    have align := hs.2.2.2.1
    change s1.align = 2 at align
    simpa [asmUpd, assertState, updPc, readReg, align, aligned] using step.symm
  have hb := hs.1
  rw [enc] at hb
  have bytes := bytes_in_memory_thm () s1 ms _ _ _ _ ⟨h.2, hb⟩
  have native_align : holAligned 2 (GPR (BitVec.ofNat 5 r) ms) = true := by rw [reg]; exact aligned
  have hn := jump_next ms (BitVec.ofNat 5 r) h.2.1 native_align
    bytes.2.2.2.2.2.1 bytes.2.2.2.2.2.2.1
    bytes.2.2.2.2.2.2.2.1 bytes.2.2.2.2.2.2.2.2.1
  have next : riscvTarget.next ms = jumpPost ms (s1.regs r) := by
    change holThe (NextRISCV ms) = jumpPost ms (s1.regs r)
    rw [hn, reg]
    rfl
  rw [he]
  refine ⟨0, Nat.zero_le _, ?_⟩
  intro env interference
  have hp := jump_post_rel s1 ms (s1.regs r) h.2 aligned
  have projection := interference 0 (jumpPost ms (s1.regs r))
  have transport := (riscv_target_ok.2 (env 0 (jumpPost ms (s1.regs r)))
    (jumpPost ms (s1.regs r)) (updPc (s1.regs r) s1) projection).1
  constructor
  · simpa [asserts, next] using transport.mpr hp
  · simp only [asserts2]
    rw [next]
    exact ⟨fun _ _ => rfl, trivial⟩

end Flapjack.RiscV.TargetProof

namespace Flapjack.RiscV.TargetProof
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmProps Compiler.Encoders.AsmSem Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound
set_option maxRecDepth 200000
set_option maxHeartbeats 2000000
open private upperValue loc_two_steps from Flapjack.RiscV.CorrectnessEncoding.Loc

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_loc` (Loc.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_loc_bounded (r : Nat) (c : BitVec 64)
    (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.loc r c) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.loc r c) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.loc r c)).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  refine ⟨1, Nat.le_of_eq (riscvStepBound_loc r c).symm, ?_⟩
  intro env interference
  have hs : asmStep riscvConfig s1 (.loc r c) s2 := h.1
  have run := loc_two_steps r c s1 s2 ms hs h.2 env interference
  dsimp only at run
  let mid := writePost ms (BitVec.ofNat 5 r) (s1.pc + upperValue c)
  let src := updPc (s1.pc + 4) (updReg r (s1.pc + upperValue c) s1)
  have first : riscvTarget.next ms = mid := run.1
  have second : riscvTarget.next (env 0 mid) =
      writePost (env 0 mid) (BitVec.ofNat 5 r) (s1.pc + c) := run.2.2.1
  have rel : targetStateRel riscvTarget src (env 0 mid) := run.2.1
  have valid := rel.1
  have code : ∀ pc, pc ∈ allPcs (riscvConfig.encode (.loc r c)).length s1.pc 0 →
      riscvTarget.getByte (env 0 mid) pc = riscvTarget.getByte ms pc := by
    intro pc covered
    have domain := bytesInMemory_allPcs _ _ _ _ 0 hs.1 covered
    have before := h.2.2.2.1 pc domain
    have after := rel.2.2.1 pc domain
    exact after.trans before.symm
  have pc : riscvTarget.getPc (env 0 mid) ∈
      allPcs (riscvConfig.encode (.loc r c)).length s1.pc riscvConfig.codeAlignment := by
    have address := rel.2.1
    change riscvTarget.getPc (env 0 mid) = s1.pc + 4 at address
    rw [address, allPcs_eq]
    refine ⟨1, ?_, ?_⟩
    · norm_num [riscvConfig, riscvEnc, riscvAst, riscvEncode]
    · rfl
  constructor
  · simpa [asserts, first, second] using ⟨⟨valid, code, pc⟩, run.2.2.2⟩
  · simp only [asserts2]
    rw [first]
    change (∀ x, ¬ s1.memDomain x → ms.MEM8 x = mid.MEM8 x) ∧
      (∀ x, ¬ s1.memDomain x → (env 0 mid).MEM8 x =
        (riscvTarget.next (env 0 mid)).MEM8 x) ∧ True
    rw [second]
    exact ⟨fun _ _ => rfl, fun _ _ => rfl, trivial⟩

end Flapjack.RiscV.TargetProof
