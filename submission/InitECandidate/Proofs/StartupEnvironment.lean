import InitECandidate.Proofs.BaselineInstallationFacts

set_option maxRecDepth 10000

namespace InitE
open Classical
open Flapjack Flapjack.RiscV.L3 Flapjack.Compiler.Encoders.RiscV.Target

/-- The fixed startup environment: submitted ROM, zero ordinary RAM/registers,
and public input/output bytes supplied by the common host oracle. -/
noncomputable def baselineInitialState (input : Guest.InputBlob) : riscv_state :=
  { (machineStateOfAsm initialAsm) with MEM8 := (fun a =>
      if (machineSharedDomain a) then byteToBits ((Guest.guestHostMemory input a).getD 0)
      else initialMemory a) }

theorem baselineInitialState_mode (input : Guest.InputBlob) :
    ((baselineInitialState input).c_MCSR (baselineInitialState input).procID).mstatus.MPRV = 3 ∧
    ((baselineInitialState input).c_MCSR (baselineInitialState input).procID).mstatus.VM = 0 :=
  ⟨rfl,rfl⟩

theorem baselineInitialState_related (input : Guest.InputBlob) :
    targetStateRel riscvTarget initialAsm (baselineInitialState input) := by
  have canonical := machineStateOfAsm_relation initialAsm (by decide)
  refine ⟨?_,canonical.2.1,?_,canonical.2.2.2.1,?_⟩
  · exact (riscvOk_iff (baselineInitialState input)).mpr ⟨rfl,rfl,rfl,rfl,by change holAligned 2 (BitVec.ofNat 64 initialPc) = true; decide⟩
  · intro a domain
    change (if (machineSharedDomain a) then byteToBits ((Guest.guestHostMemory input a).getD 0)
      else initialMemory a) = initialMemory a
    exact if_neg domain.1.2
  · intro r hr
    have : r < 0 := hr
    omega

theorem baselineInitialState_ram_zero (input : Guest.InputBlob) (a : BitVec 64)
    (ram : ramStart ≤ a.toNat) (ordinary : ¬ machineSharedDomain a) :
    (baselineInitialState input).MEM8 a = 0 := by
  change (if (machineSharedDomain a) then _ else initialMemory a) = 0
  rw [if_neg ordinary]
  exact initial_ram_zero a ram

theorem baselineInitialState_registers_zero (input : Guest.InputBlob) (r : BitVec 5) :
    (baselineInitialState input).c_gpr (baselineInitialState input).procID r = 0 := rfl

end InitE
