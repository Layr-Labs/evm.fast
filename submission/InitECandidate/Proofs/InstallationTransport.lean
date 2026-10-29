import InitECandidate.Proofs.BaselineInstallationFacts
import Flapjack.Pancake.Proofs.PanToTarget.PanInstalled

set_option maxRecDepth 10000

namespace InitE
open Flapjack Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Pancake.Proofs.PanToTarget

/-- The concrete target fields visible to compiler installation. Internal
pipeline bookkeeping may differ after executing startup. -/
structure InstallationAgreement {S Q : Type} (mc : MachineConfig 64 S Q)
    (before after : S) : Prop where
  ok : mc.target.stateOk after = true
  pc : mc.target.getPc after = mc.target.getPc before
  bytes : ∀ a, mc.progAddresses a → mc.target.getByte after a = mc.target.getByte before a
  regs : ∀ r, r < mc.target.config.regCount ∧ mc.target.config.avoidRegs.contains r = false →
    mc.target.getReg after r = mc.target.getReg before r
  fpRegs : ∀ r, r < mc.target.config.fpRegCount →
    mc.target.getFpReg after r = mc.target.getFpReg before r

theorem goodInitState_transport {S Q : Type} {mc : MachineConfig 64 S Q}
    {before after : S} (agreement : InstallationAgreement mc before after)
    {bytes : List (BitVec 8)} {cbspace : Nat} {t : AsmState 64}
    {m : BitVec 64 → WordLocW 64} {dm sdm : BitVec 64 → Bool}
    (initial : goodInitState mc before bytes cbspace t m dm sdm) :
    goodInitState mc after bytes cbspace t m dm sdm := by
  rcases initial with ⟨related, configured, pc, start, aligned, next, ffi, cache,
    loaded, inMem, domain, byteDomain, shared, sharedByte, disjoint, packed, buffer, size⟩
  have relation : targetStateRel mc.target t after := by
    refine ⟨agreement.ok, agreement.pc.trans related.2.1, ?_, ?_, ?_⟩
    · intro a ha
      rw [agreement.bytes a (by rw [← configured.2.2.2.1]; exact ha)]
      exact related.2.2.1 a ha
    · intro r hr
      rw [agreement.regs r hr]
      exact related.2.2.2.1 r hr
    · intro r hr
      rw [agreement.fpRegs r hr]
      exact related.2.2.2.2 r hr
  have code : codeLoaded bytes mc after := by
    classical
    have memory : (fun a => if mc.progAddresses a then some (mc.target.getByte after a) else none) =
        (fun a => if mc.progAddresses a then some (mc.target.getByte before a) else none) := by
      funext a
      by_cases ha : mc.progAddresses a
      · simp only [if_pos ha, agreement.bytes a ha]
      · simp only [if_neg ha]
    simpa only [codeLoaded, agreement.pc, memory] using loaded
  exact ⟨relation, configured, by rw [agreement.pc]; exact pc, start, aligned,
    next, ffi, cache, code, inMem, domain, byteDomain, shared, sharedByte,
    disjoint, packed, buffer, size⟩

theorem panInstalled_transport {S Q : Type} {mc : MachineConfig 64 S Q}
    {before after : S} (agreement : InstallationAgreement mc before after)
    {bytes : List (BitVec 8)} {cbspace : Nat} {bitmaps : List (BitVec 64)} {dataSp : Nat}
    {ffiNames : Option (List HolFfiName)} {regs : Nat × Nat}
    {extra : List Compiler.Backend.LabToTarget.ShmemInfoNum}
    {pMem : BitVec 64 → WordLocW 64} {pDom sdm : BitVec 64 → Prop}
    (installed : panInstalled bytes cbspace bitmaps dataSp ffiNames regs mc extra before pMem pDom sdm) :
    panInstalled bytes cbspace bitmaps dataSp ffiNames regs mc extra after pMem pDom sdm := by
  rcases installed with ⟨t, m, pointer, bitmapsDm, sharedDm, source, initial, rest⟩
  exact ⟨t, m, pointer, bitmapsDm, sharedDm, source,
    goodInitState_transport agreement initial,
    by simpa only [agreement.pc] using rest⟩

/-- Startup's actual endpoint agrees with the canonical installed machine on
all fields that matter to the compiler theorem. -/
theorem baseline_endpoint_agreement (ms : Flapjack.RiscV.L3.riscv_state)
    (related : targetStateRel riscvTarget installedAsm ms) :
    InstallationAgreement baselineMachineConfig baselineInstalledState ms := by
  have canonical := machineStateOfAsm_relation installedAsm (by decide)
  refine ⟨related.1, related.2.1.trans canonical.2.1.symm, ?_, ?_, ?_⟩
  · intro a ha
    exact (related.2.2.1 a ha).trans (canonical.2.2.1 a ha).symm
  · intro r hr
    exact (related.2.2.2.1 r hr).trans (canonical.2.2.2.1 r hr).symm
  · intro r hr
    exact (related.2.2.2.2 r hr).trans (canonical.2.2.2.2 r hr).symm

end InitE
