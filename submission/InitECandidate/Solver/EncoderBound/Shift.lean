import InitECandidate.Solver.EncoderBound.Basic

/-!
Bounded restatements of Flapjack's RISC-V Shift encoder cases.

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
set_option autoImplicit false
set_option maxRecDepth 200000
set_option maxHeartbeats 2000000
open private shiftWord shift_low reg_nonzero reg_read from Flapjack.RiscV.CorrectnessEncoding.ShiftLslRegister

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_shiftLslRegister` (ShiftLslRegister.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_shiftLslRegister_bounded (rd rs1 rs2 : Nat) (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.inst (.arith (.shift .lsl rd rs1 (.reg rs2)))) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.inst (.arith (.shift .lsl rd rs1 (.reg rs2)))) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.inst (.arith (.shift .lsl rd rs1 (.reg rs2))))).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  have hs := h.1
  change asmStep riscvConfig s1 (.inst (.arith (.shift .lsl rd rs1 (.reg rs2)))) s2 at hs
  have guards : asmRegOkExact rd riscvConfig = true ∧
      asmRegOkExact rs1 riscvConfig = true ∧ asmRegOkExact rs2 riscvConfig = true := by
    simpa [asmOkExact, asmInstOkExact, asmArithOkExact, asmRegImmOkExact,
      riscvConfig, Bool.and_eq_true, and_assoc] using hs.2.2.2.2.2.2
  have bound : rd < 32 := by
    have g := guards.1
    simp [asmRegOkExact, riscvConfig] at g
    exact of_decide_eq_true g.1
  let value := (readReg rs1 s1) <<< (readReg rs2 s1).toNat
  have source : s2 = updPc (s1.pc + 4) (updReg rd value s1) := by
    rw [shift_source_post .lsl rd rs1 (.reg rs2) s1 s2 hs]
    rfl
  have enc : riscvConfig.encode (.inst (.arith (.shift .lsl rd rs1 (.reg rs2)))) =
      [RiscV.L3.holWordExtract 8 7 0 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)),
       RiscV.L3.holWordExtract 8 15 8 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)),
       RiscV.L3.holWordExtract 8 23 16 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)),
       RiscV.L3.holWordExtract 8 31 24 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2))] := rfl
  have hb := hs.1
  rw [enc] at hb
  have bytes := bytes_in_memory_thm () s1 ms _ _ _ _ ⟨h.2, hb⟩
  have left := reg_read rs1 s1 ms guards.2.1 h.2
  have right := reg_read rs2 s1 ms guards.2.2 h.2
  let fetched : riscv_state := {ms with c_Skip := holUpdate ms.procID 4 ms.c_Skip}
  have run : Run (.Shift (.SLL (BitVec.ofNat 5 rd, BitVec.ofNat 5 rs1, BitVec.ofNat 5 rs2))) fetched =
      «write'GPR» (value, BitVec.ofNat 5 rd) fetched := by
    have ok : riscvOk fetched = true := by
      have original : riscvOk ms = true := h.2.1
      simpa [fetched, riscvOk, MCSR, NextFetch, PC] using original
    rw [shift_run_sll _ _ _ fetched ok]
    have count := shift_source_count .lsl rd rs1 (.reg rs2) s1 s2 hs
    have bound : (readReg rs2 s1).toNat < 64 := by
      exact of_decide_eq_true count
    have mask : ((RiscV.L3.holWordExtract 6 5 0 (readReg rs2 s1)).setWidth 64).toNat =
        (readReg rs2 s1).toNat := by
      simp [RiscV.L3.holWordExtract, BitVec.toNat_setWidth,
        Nat.mod_eq_of_lt bound]
      omega
    have leftf : GPR (BitVec.ofNat 5 rs1) fetched = readReg rs1 s1 := by
      simpa [fetched, GPR, gpr] using left
    have rightf : GPR (BitVec.ofNat 5 rs2) fetched = readReg rs2 s1 := by
      simpa [fetched, GPR, gpr] using right
    rw [leftf, rightf, mask]
  have low := shift_low (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)
  have hn := write_next ms _ _ (BitVec.ofNat 5 rd) value (reg_nonzero rd guards.1)
    h.2.1 (decode_encode_sll _ _ _) run low.1 low.2
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
open private shiftWord shift_low reg_nonzero reg_read from Flapjack.RiscV.CorrectnessEncoding.ShiftLslImmediate

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_shiftLslImmediate` (ShiftLslImmediate.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_shiftLslImmediate_bounded (rd rs1 : Nat) (c : BitVec 64) (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.inst (.arith (.shift .lsl rd rs1 (.imm c)))) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.inst (.arith (.shift .lsl rd rs1 (.imm c)))) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.inst (.arith (.shift .lsl rd rs1 (.imm c))))).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  have hs := h.1
  change asmStep riscvConfig s1 (.inst (.arith (.shift .lsl rd rs1 (.imm c)))) s2 at hs
  have guards : asmRegOkExact rd riscvConfig = true ∧
      asmRegOkExact rs1 riscvConfig = true ∧ c.toNat < 64 := by
    have valid := hs.2.2.2.2.2.2
    simp [asmOkExact, asmInstOkExact, asmArithOkExact, riscvConfig,
      Bool.and_eq_true, and_assoc] at valid
    exact ⟨valid.1, valid.2.1, valid.2.2⟩
  have bound : rd < 32 := by
    have g := guards.1
    simp [asmRegOkExact, riscvConfig] at g
    exact of_decide_eq_true g.1
  let value := (readReg rs1 s1) <<< c.toNat
  have source : s2 = updPc (s1.pc + 4) (updReg rd value s1) := by
    rw [shift_source_post .lsl rd rs1 (.imm c) s1 s2 hs]
    rfl
  have enc : riscvConfig.encode (.inst (.arith (.shift .lsl rd rs1 (.imm c)))) =
      [RiscV.L3.holWordExtract 8 7 0 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) c),
       RiscV.L3.holWordExtract 8 15 8 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) c),
       RiscV.L3.holWordExtract 8 23 16 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) c),
       RiscV.L3.holWordExtract 8 31 24 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) c)] := rfl
  have hb := hs.1
  rw [enc] at hb
  have bytes := bytes_in_memory_thm () s1 ms _ _ _ _ ⟨h.2, hb⟩
  have left := reg_read rs1 s1 ms guards.2.1 h.2
  let fetched : riscv_state := {ms with c_Skip := holUpdate ms.procID 4 ms.c_Skip}
  have run : Run (.Shift (.SLLI (BitVec.ofNat 5 rd, BitVec.ofNat 5 rs1, BitVec.ofNat 6 c.toNat))) fetched =
      «write'GPR» (value, BitVec.ofNat 5 rd) fetched := by
    have ok : riscvOk fetched = true := by
      have original : riscvOk ms = true := h.2.1
      simpa [fetched, riscvOk, MCSR, NextFetch, PC] using original
    rw [shift_run_slli _ _ _ fetched ok]
    have amount : (BitVec.ofNat 6 c.toNat).toNat = c.toNat := by
      simp [Nat.mod_eq_of_lt guards.2.2]
    have leftf : GPR (BitVec.ofNat 5 rs1) fetched = readReg rs1 s1 := by
      simpa [fetched, GPR, gpr] using left
    rw [leftf, amount]
  have low := shift_low (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) c
  have hn := write_next ms _ _ (BitVec.ofNat 5 rd) value (reg_nonzero rd guards.1)
    h.2.1 (decode_encode_slli _ _ _) run low.1 low.2
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
open private shiftWord shift_low reg_nonzero reg_read from Flapjack.RiscV.CorrectnessEncoding.ShiftLsrRegister

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_shiftLsrRegister` (ShiftLsrRegister.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_shiftLsrRegister_bounded (rd rs1 rs2 : Nat) (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.inst (.arith (.shift .lsr rd rs1 (.reg rs2)))) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.inst (.arith (.shift .lsr rd rs1 (.reg rs2)))) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.inst (.arith (.shift .lsr rd rs1 (.reg rs2))))).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  have hs := h.1
  change asmStep riscvConfig s1 (.inst (.arith (.shift .lsr rd rs1 (.reg rs2)))) s2 at hs
  have guards : asmRegOkExact rd riscvConfig = true ∧
      asmRegOkExact rs1 riscvConfig = true ∧ asmRegOkExact rs2 riscvConfig = true := by
    simpa [asmOkExact, asmInstOkExact, asmArithOkExact, asmRegImmOkExact,
      riscvConfig, Bool.and_eq_true, and_assoc] using hs.2.2.2.2.2.2
  have bound : rd < 32 := by
    have g := guards.1
    simp [asmRegOkExact, riscvConfig] at g
    exact of_decide_eq_true g.1
  let value := (readReg rs1 s1) >>> (readReg rs2 s1).toNat
  have source : s2 = updPc (s1.pc + 4) (updReg rd value s1) := by
    rw [shift_source_post .lsr rd rs1 (.reg rs2) s1 s2 hs]
    rfl
  have enc : riscvConfig.encode (.inst (.arith (.shift .lsr rd rs1 (.reg rs2)))) =
      [RiscV.L3.holWordExtract 8 7 0 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)),
       RiscV.L3.holWordExtract 8 15 8 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)),
       RiscV.L3.holWordExtract 8 23 16 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)),
       RiscV.L3.holWordExtract 8 31 24 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2))] := rfl
  have hb := hs.1
  rw [enc] at hb
  have bytes := bytes_in_memory_thm () s1 ms _ _ _ _ ⟨h.2, hb⟩
  have left := reg_read rs1 s1 ms guards.2.1 h.2
  have right := reg_read rs2 s1 ms guards.2.2 h.2
  let fetched : riscv_state := {ms with c_Skip := holUpdate ms.procID 4 ms.c_Skip}
  have run : Run (.Shift (.SRL (BitVec.ofNat 5 rd, BitVec.ofNat 5 rs1, BitVec.ofNat 5 rs2))) fetched =
      «write'GPR» (value, BitVec.ofNat 5 rd) fetched := by
    have ok : riscvOk fetched = true := by
      have original : riscvOk ms = true := h.2.1
      simpa [fetched, riscvOk, MCSR, NextFetch, PC] using original
    rw [shift_run_srl _ _ _ fetched ok]
    have count := shift_source_count .lsr rd rs1 (.reg rs2) s1 s2 hs
    have bound : (readReg rs2 s1).toNat < 64 := by
      exact of_decide_eq_true count
    have mask : ((RiscV.L3.holWordExtract 6 5 0 (readReg rs2 s1)).setWidth 64).toNat =
        (readReg rs2 s1).toNat := by
      simp [RiscV.L3.holWordExtract, BitVec.toNat_setWidth,
        Nat.mod_eq_of_lt bound]
      omega
    have leftf : GPR (BitVec.ofNat 5 rs1) fetched = readReg rs1 s1 := by
      simpa [fetched, GPR, gpr] using left
    have rightf : GPR (BitVec.ofNat 5 rs2) fetched = readReg rs2 s1 := by
      simpa [fetched, GPR, gpr] using right
    rw [leftf, rightf, mask]
  have low := shift_low (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)
  have hn := write_next ms _ _ (BitVec.ofNat 5 rd) value (reg_nonzero rd guards.1)
    h.2.1 (decode_encode_srl _ _ _) run low.1 low.2
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
open private shiftWord shift_low reg_nonzero reg_read from Flapjack.RiscV.CorrectnessEncoding.ShiftLsrImmediate

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_shiftLsrImmediate` (ShiftLsrImmediate.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_shiftLsrImmediate_bounded (rd rs1 : Nat) (c : BitVec 64) (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.inst (.arith (.shift .lsr rd rs1 (.imm c)))) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.inst (.arith (.shift .lsr rd rs1 (.imm c)))) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.inst (.arith (.shift .lsr rd rs1 (.imm c))))).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  have hs := h.1
  change asmStep riscvConfig s1 (.inst (.arith (.shift .lsr rd rs1 (.imm c)))) s2 at hs
  have guards : asmRegOkExact rd riscvConfig = true ∧
      asmRegOkExact rs1 riscvConfig = true ∧ c.toNat < 64 := by
    have valid := hs.2.2.2.2.2.2
    simp [asmOkExact, asmInstOkExact, asmArithOkExact, riscvConfig,
      Bool.and_eq_true, and_assoc] at valid
    exact ⟨valid.1, valid.2.1, valid.2.2.2⟩
  have bound : rd < 32 := by
    have g := guards.1
    simp [asmRegOkExact, riscvConfig] at g
    exact of_decide_eq_true g.1
  let value := (readReg rs1 s1) >>> c.toNat
  have source : s2 = updPc (s1.pc + 4) (updReg rd value s1) := by
    rw [shift_source_post .lsr rd rs1 (.imm c) s1 s2 hs]
    rfl
  have enc : riscvConfig.encode (.inst (.arith (.shift .lsr rd rs1 (.imm c)))) =
      [RiscV.L3.holWordExtract 8 7 0 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) c),
       RiscV.L3.holWordExtract 8 15 8 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) c),
       RiscV.L3.holWordExtract 8 23 16 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) c),
       RiscV.L3.holWordExtract 8 31 24 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) c)] := rfl
  have hb := hs.1
  rw [enc] at hb
  have bytes := bytes_in_memory_thm () s1 ms _ _ _ _ ⟨h.2, hb⟩
  have left := reg_read rs1 s1 ms guards.2.1 h.2
  let fetched : riscv_state := {ms with c_Skip := holUpdate ms.procID 4 ms.c_Skip}
  have run : Run (.Shift (.SRLI (BitVec.ofNat 5 rd, BitVec.ofNat 5 rs1, BitVec.ofNat 6 c.toNat))) fetched =
      «write'GPR» (value, BitVec.ofNat 5 rd) fetched := by
    have ok : riscvOk fetched = true := by
      have original : riscvOk ms = true := h.2.1
      simpa [fetched, riscvOk, MCSR, NextFetch, PC] using original
    rw [shift_run_srli _ _ _ fetched ok]
    have amount : (BitVec.ofNat 6 c.toNat).toNat = c.toNat := by
      simp [Nat.mod_eq_of_lt guards.2.2]
    have leftf : GPR (BitVec.ofNat 5 rs1) fetched = readReg rs1 s1 := by
      simpa [fetched, GPR, gpr] using left
    rw [leftf, amount]
  have low := shift_low (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) c
  have hn := write_next ms _ _ (BitVec.ofNat 5 rd) value (reg_nonzero rd guards.1)
    h.2.1 (decode_encode_srli _ _ _) run low.1 low.2
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
open private shiftWord shift_low reg_nonzero reg_read from Flapjack.RiscV.CorrectnessEncoding.ShiftAsrRegister

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_shiftAsrRegister` (ShiftAsrRegister.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_shiftAsrRegister_bounded (rd rs1 rs2 : Nat) (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.inst (.arith (.shift .asr rd rs1 (.reg rs2)))) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.inst (.arith (.shift .asr rd rs1 (.reg rs2)))) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.inst (.arith (.shift .asr rd rs1 (.reg rs2))))).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  have hs := h.1
  change asmStep riscvConfig s1 (.inst (.arith (.shift .asr rd rs1 (.reg rs2)))) s2 at hs
  have guards : asmRegOkExact rd riscvConfig = true ∧
      asmRegOkExact rs1 riscvConfig = true ∧ asmRegOkExact rs2 riscvConfig = true := by
    simpa [asmOkExact, asmInstOkExact, asmArithOkExact, asmRegImmOkExact,
      riscvConfig, Bool.and_eq_true, and_assoc] using hs.2.2.2.2.2.2
  have bound : rd < 32 := by
    have g := guards.1
    simp [asmRegOkExact, riscvConfig] at g
    exact of_decide_eq_true g.1
  let value := (readReg rs1 s1).sshiftRight (readReg rs2 s1).toNat
  have source : s2 = updPc (s1.pc + 4) (updReg rd value s1) := by
    rw [shift_source_post .asr rd rs1 (.reg rs2) s1 s2 hs]
    rfl
  have enc : riscvConfig.encode (.inst (.arith (.shift .asr rd rs1 (.reg rs2)))) =
      [RiscV.L3.holWordExtract 8 7 0 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)),
       RiscV.L3.holWordExtract 8 15 8 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)),
       RiscV.L3.holWordExtract 8 23 16 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)),
       RiscV.L3.holWordExtract 8 31 24 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2))] := rfl
  have hb := hs.1
  rw [enc] at hb
  have bytes := bytes_in_memory_thm () s1 ms _ _ _ _ ⟨h.2, hb⟩
  have left := reg_read rs1 s1 ms guards.2.1 h.2
  have right := reg_read rs2 s1 ms guards.2.2 h.2
  let fetched : riscv_state := {ms with c_Skip := holUpdate ms.procID 4 ms.c_Skip}
  have run : Run (.Shift (.SRA (BitVec.ofNat 5 rd, BitVec.ofNat 5 rs1, BitVec.ofNat 5 rs2))) fetched =
      «write'GPR» (value, BitVec.ofNat 5 rd) fetched := by
    have ok : riscvOk fetched = true := by
      have original : riscvOk ms = true := h.2.1
      simpa [fetched, riscvOk, MCSR, NextFetch, PC] using original
    rw [shift_run_sra _ _ _ fetched ok]
    have count := shift_source_count .asr rd rs1 (.reg rs2) s1 s2 hs
    have bound : (readReg rs2 s1).toNat < 64 := by
      exact of_decide_eq_true count
    have mask : ((RiscV.L3.holWordExtract 6 5 0 (readReg rs2 s1)).setWidth 64).toNat =
        (readReg rs2 s1).toNat := by
      simp [RiscV.L3.holWordExtract, BitVec.toNat_setWidth,
        Nat.mod_eq_of_lt bound]
      omega
    have leftf : GPR (BitVec.ofNat 5 rs1) fetched = readReg rs1 s1 := by
      simpa [fetched, GPR, gpr] using left
    have rightf : GPR (BitVec.ofNat 5 rs2) fetched = readReg rs2 s1 := by
      simpa [fetched, GPR, gpr] using right
    rw [leftf, rightf, mask]
  have low := shift_low (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) (BitVec.ofNat 5 rs2)
  have hn := write_next ms _ _ (BitVec.ofNat 5 rd) value (reg_nonzero rd guards.1)
    h.2.1 (decode_encode_sra _ _ _) run low.1 low.2
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
open private shiftWord shift_low reg_nonzero reg_read from Flapjack.RiscV.CorrectnessEncoding.ShiftAsrImmediate

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_shiftAsrImmediate` (ShiftAsrImmediate.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_shiftAsrImmediate_bounded (rd rs1 : Nat) (c : BitVec 64) (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.inst (.arith (.shift .asr rd rs1 (.imm c)))) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.inst (.arith (.shift .asr rd rs1 (.imm c)))) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.inst (.arith (.shift .asr rd rs1 (.imm c))))).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  have hs := h.1
  change asmStep riscvConfig s1 (.inst (.arith (.shift .asr rd rs1 (.imm c)))) s2 at hs
  have guards : asmRegOkExact rd riscvConfig = true ∧
      asmRegOkExact rs1 riscvConfig = true ∧ c.toNat < 64 := by
    have valid := hs.2.2.2.2.2.2
    simp [asmOkExact, asmInstOkExact, asmArithOkExact, riscvConfig,
      Bool.and_eq_true, and_assoc] at valid
    exact ⟨valid.1, valid.2.1, valid.2.2.2⟩
  have bound : rd < 32 := by
    have g := guards.1
    simp [asmRegOkExact, riscvConfig] at g
    exact of_decide_eq_true g.1
  let value := (readReg rs1 s1).sshiftRight c.toNat
  have source : s2 = updPc (s1.pc + 4) (updReg rd value s1) := by
    rw [shift_source_post .asr rd rs1 (.imm c) s1 s2 hs]
    rfl
  have enc : riscvConfig.encode (.inst (.arith (.shift .asr rd rs1 (.imm c)))) =
      [RiscV.L3.holWordExtract 8 7 0 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) c),
       RiscV.L3.holWordExtract 8 15 8 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) c),
       RiscV.L3.holWordExtract 8 23 16 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) c),
       RiscV.L3.holWordExtract 8 31 24 (shiftWord (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) c)] := rfl
  have hb := hs.1
  rw [enc] at hb
  have bytes := bytes_in_memory_thm () s1 ms _ _ _ _ ⟨h.2, hb⟩
  have left := reg_read rs1 s1 ms guards.2.1 h.2
  let fetched : riscv_state := {ms with c_Skip := holUpdate ms.procID 4 ms.c_Skip}
  have run : Run (.Shift (.SRAI (BitVec.ofNat 5 rd, BitVec.ofNat 5 rs1, BitVec.ofNat 6 c.toNat))) fetched =
      «write'GPR» (value, BitVec.ofNat 5 rd) fetched := by
    have ok : riscvOk fetched = true := by
      have original : riscvOk ms = true := h.2.1
      simpa [fetched, riscvOk, MCSR, NextFetch, PC] using original
    rw [shift_run_srai _ _ _ fetched ok]
    have amount : (BitVec.ofNat 6 c.toNat).toNat = c.toNat := by
      simp [Nat.mod_eq_of_lt guards.2.2]
    have leftf : GPR (BitVec.ofNat 5 rs1) fetched = readReg rs1 s1 := by
      simpa [fetched, GPR, gpr] using left
    rw [leftf, amount]
  have low := shift_low (BitVec.ofNat 5 rd) (BitVec.ofNat 5 rs1) c
  have hn := write_next ms _ _ (BitVec.ofNat 5 rd) value (reg_nonzero rd guards.1)
    h.2.1 (decode_encode_srai _ _ _) run low.1 low.2
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
open private guards kinds pure_relation nonzero bytes_from_domain from Flapjack.RiscV.CorrectnessEncoding.ShiftRorRegister

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_shiftRorRegister` (ShiftRorRegister.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_shiftRorRegister_bounded (rd rs rc : Nat)
    (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.inst (.arith (.shift .ror rd rs (.reg rc)))) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.inst (.arith (.shift .ror rd rs (.reg rc)))) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.inst (.arith (.shift .ror rd rs (.reg rc))))).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  let is := riscvAst (.inst (.arith (.shift .ror rd rs (.reg rc))))
  have nonempty : is ≠ [] := by simp [is,riscvAst]
  have positive : 0 < is.length := List.length_pos_iff.mpr nonempty
  refine ⟨is.length - 1, Nat.le_refl _, ?_⟩
  intro env interference
  have hs : asmStep riscvConfig s1 (.inst (.arith (.shift .ror rd rs (.reg rc)))) s2 := h.1
  have kinds : ∀ i ∈ is, RorInstruction i := kinds rd rs rc
  have nonzero : ∀ i ∈ is, rorDestination i ≠ 0#5 :=
    nonzero rd rs rc (guards rd rs rc s1 s2 hs).1
  have pcEq : ms.c_PC ms.procID = s1.pc := h.2.2.1
  have sourceBytes : bytesInMemoryHOL s1.pc (is.flatMap riscvEncode) s1.mem s1.memDomain := hs.1
  have bytes := bytes_from_domain _ _ _ ms.MEM8 _ sourceBytes h.2.2.2.1
  rw [← pcEq] at bytes
  have projection := ror_native_execute_projection s1.memDomain is kinds nonzero env 0 ms h.2.1 bytes interference
  have pureRel := pure_relation rd rs rc s1 s2 ms hs h.2
  have finalRel : targetStateRel riscvTarget s2 (constNativeExecute env 0 is ms) :=
    (riscv_target_ok.2 _ _ s2 (by
      simpa only [shift_source_post .ror rd rs (.reg rc) s1 s2 hs, updPc, updReg, riscvTarget, is] using projection)).1.mpr pureRel
  constructor
  · let P := fun ms' => riscvTarget.stateOk ms' = true ∧
        (∀ pc, pc ∈ allPcs (riscvTarget.config.encode (.inst (.arith (.shift .ror rd rs (.reg rc))))).length s1.pc 0 →
          riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
        riscvTarget.getPc ms' ∈ allPcs (riscvTarget.config.encode (.inst (.arith (.shift .ror rd rs (.reg rc))))).length
          s1.pc riscvTarget.config.codeAlignment
    have mid : ∀ j, 0 < j → j < is.length → P (constNativeExecute env 0 (is.take j) ms) := by
      intro j lower upper
      have prefixKinds : ∀ i ∈ is.take j, RorInstruction i :=
        fun i member => kinds i (List.mem_of_mem_take member)
      have prefixNonzero : ∀ i ∈ is.take j, rorDestination i ≠ 0#5 :=
        fun i member => nonzero i (List.mem_of_mem_take member)
      have prefixBytes : bytesInMemoryHOL (ms.c_PC ms.procID)
          ((is.take j).flatMap riscvEncode) ms.MEM8 s1.memDomain := by
        have allBytes := bytes
        rw [← List.take_append_drop j is, List.flatMap_append, bytesInMemory_append] at allBytes
        exact allBytes.1
      have prefixFrame := ror_native_execute_frame s1.memDomain (is.take j)
        prefixKinds prefixNonzero env 0 ms h.2.1 prefixBytes interference
      dsimp only at prefixFrame
      refine ⟨prefixFrame.1, ?_, ?_⟩
      · intro a covered
        have domain := bytesInMemory_allPcs _ _ _ _ 0 hs.1 covered
        exact prefixFrame.2.2 a domain
      · dsimp only [P, riscvTarget]
        rw [prefixFrame.2.1, pcEq, allPcs_eq]
        refine ⟨j, ?_, ?_⟩
        · change j * 4 < (riscvEnc (.inst (.arith (.shift .ror rd rs (.reg rc))))).length
          rw [riscvEnc_length_eq]
          dsimp only [is] at upper
          omega
        · simp only [List.length_take, Nat.min_eq_left (Nat.le_of_lt upper)]
          change s1.pc + BitVec.ofNat 64 (4 * j) = s1.pc + BitVec.ofNat 64 (j * 4)
          rw [Nat.mul_comm]
    simpa only [Nat.zero_add] using
      const_asserts_of_prefixes is nonempty env 0 ms P _ mid finalRel
  · have memoryFrame := ror_native_asserts2 s1.memDomain is kinds nonzero env 0 ms h.2.1 bytes interference
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
open private guards kinds pure_relation nonzero bytes_from_domain from Flapjack.RiscV.CorrectnessEncoding.ShiftRorImmediate

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_shiftRorImmediate` (ShiftRorImmediate.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_shiftRorImmediate_bounded (rd rs : Nat) (c : BitVec 64)
    (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.inst (.arith (.shift .ror rd rs (.imm c)))) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.inst (.arith (.shift .ror rd rs (.imm c)))) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.inst (.arith (.shift .ror rd rs (.imm c))))).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  let is := riscvAst (.inst (.arith (.shift .ror rd rs (.imm c))))
  have nonempty : is ≠ [] := by simp [is,riscvAst]
  have positive : 0 < is.length := List.length_pos_iff.mpr nonempty
  refine ⟨is.length - 1, Nat.le_refl _, ?_⟩
  intro env interference
  have hs : asmStep riscvConfig s1 (.inst (.arith (.shift .ror rd rs (.imm c)))) s2 := h.1
  have kinds : ∀ i ∈ is, RorInstruction i := kinds rd rs c
  have nonzero : ∀ i ∈ is, rorDestination i ≠ 0#5 :=
    nonzero rd rs c (guards rd rs c s1 s2 hs).1
  have pcEq : ms.c_PC ms.procID = s1.pc := h.2.2.1
  have sourceBytes : bytesInMemoryHOL s1.pc (is.flatMap riscvEncode) s1.mem s1.memDomain := hs.1
  have bytes := bytes_from_domain _ _ _ ms.MEM8 _ sourceBytes h.2.2.2.1
  rw [← pcEq] at bytes
  have projection := ror_native_execute_projection s1.memDomain is kinds nonzero env 0 ms h.2.1 bytes interference
  have pureRel := pure_relation rd rs c s1 s2 ms hs h.2
  have finalRel : targetStateRel riscvTarget s2 (constNativeExecute env 0 is ms) :=
    (riscv_target_ok.2 _ _ s2 (by
      simpa only [shift_source_post .ror rd rs (.imm c) s1 s2 hs, updPc, updReg, riscvTarget, is] using projection)).1.mpr pureRel
  constructor
  · let P := fun ms' => riscvTarget.stateOk ms' = true ∧
        (∀ pc, pc ∈ allPcs (riscvTarget.config.encode (.inst (.arith (.shift .ror rd rs (.imm c))))).length s1.pc 0 →
          riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
        riscvTarget.getPc ms' ∈ allPcs (riscvTarget.config.encode (.inst (.arith (.shift .ror rd rs (.imm c))))).length
          s1.pc riscvTarget.config.codeAlignment
    have mid : ∀ j, 0 < j → j < is.length → P (constNativeExecute env 0 (is.take j) ms) := by
      intro j lower upper
      have prefixKinds : ∀ i ∈ is.take j, RorInstruction i :=
        fun i member => kinds i (List.mem_of_mem_take member)
      have prefixNonzero : ∀ i ∈ is.take j, rorDestination i ≠ 0#5 :=
        fun i member => nonzero i (List.mem_of_mem_take member)
      have prefixBytes : bytesInMemoryHOL (ms.c_PC ms.procID)
          ((is.take j).flatMap riscvEncode) ms.MEM8 s1.memDomain := by
        have allBytes := bytes
        rw [← List.take_append_drop j is, List.flatMap_append, bytesInMemory_append] at allBytes
        exact allBytes.1
      have prefixFrame := ror_native_execute_frame s1.memDomain (is.take j)
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
        · change j * 4 < (riscvEnc (.inst (.arith (.shift .ror rd rs (.imm c))))).length
          rw [riscvEnc_length_eq]
          dsimp only [is] at upper
          omega
        · simp only [List.length_take, Nat.min_eq_left (Nat.le_of_lt upper)]
          change s1.pc + BitVec.ofNat 64 (4 * j) = s1.pc + BitVec.ofNat 64 (j * 4)
          rw [Nat.mul_comm]
    simpa only [Nat.zero_add] using
      const_asserts_of_prefixes is nonempty env 0 ms P _ mid finalRel
  · have memoryFrame := ror_native_asserts2 s1.memDomain is kinds nonzero env 0 ms h.2.1 bytes interference
    have count : is.length - 1 + 1 = is.length := by omega
    simpa only [count, Nat.zero_add, riscvTarget] using memoryFrame

end Flapjack.RiscV.TargetProof

namespace Flapjack.RiscV.TargetProof
open Flapjack RiscV.L3 RiscV.L3.Step Compiler.Encoders.Asm
  Compiler.Encoders.AsmProps Compiler.Encoders.AsmSem Compiler.Encoders.RiscV.Target
open InitECandidate.Solver.EncoderBound
set_option autoImplicit false

/-- Bounded restatement of `Flapjack.RiscV.TargetProof.riscv_encoder_correct_shift` (Shift.lean); the proof is Flapjack's with the witness bound added. -/
theorem riscv_encoder_correct_shift_bounded (op : Flapjack.Shift) (rd rs1 : Nat) (right : HolRegImm 64) (s1 s2 : AsmState 64) (ms : riscv_state)
    (h : asmStep riscvTarget.config s1 (.inst (.arith (.shift op rd rs1 right))) s2 ∧
      targetStateRel riscvTarget s1 ms) :
    ∃ n : Nat, n ≤ riscvStepBound (.inst (.arith (.shift op rd rs1 right))) ∧ ∀ env : Nat → riscv_state → riscv_state,
      interferenceOk env (riscvTarget.proj s1.memDomain) →
      let pcs := allPcs (riscvTarget.config.encode (.inst (.arith (.shift op rd rs1 right)))).length s1.pc
      asserts n (fun k s => env (n - k) (riscvTarget.next s)) ms
        (fun ms' => riscvTarget.stateOk ms' = true ∧
          (∀ pc, pc ∈ pcs 0 → riscvTarget.getByte ms' pc = riscvTarget.getByte ms pc) ∧
          riscvTarget.getPc ms' ∈ pcs riscvTarget.config.codeAlignment)
        (fun ms' => targetStateRel riscvTarget s2 ms') ∧
      asserts2 (n + 1) (fun k => env (n + 1 - k)) riscvTarget.next ms
        (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x →
          riscvTarget.getByte ms1 x = riscvTarget.getByte ms2 x) := by
  cases op <;> cases right
  · exact riscv_encoder_correct_shiftLslRegister_bounded rd rs1 _ s1 s2 ms h
  · exact riscv_encoder_correct_shiftLslImmediate_bounded rd rs1 _ s1 s2 ms h
  · exact riscv_encoder_correct_shiftLsrRegister_bounded rd rs1 _ s1 s2 ms h
  · exact riscv_encoder_correct_shiftLsrImmediate_bounded rd rs1 _ s1 s2 ms h
  · exact riscv_encoder_correct_shiftAsrRegister_bounded rd rs1 _ s1 s2 ms h
  · exact riscv_encoder_correct_shiftAsrImmediate_bounded rd rs1 _ s1 s2 ms h
  · exact riscv_encoder_correct_shiftRorRegister_bounded rd rs1 _ s1 s2 ms h
  · exact riscv_encoder_correct_shiftRorImmediate_bounded rd rs1 _ s1 s2 ms h

end Flapjack.RiscV.TargetProof
