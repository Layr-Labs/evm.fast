import InitECandidate.Solver.MemSafe.Eb.Cost16
import InitECandidate.Solver.MemSafe.IvvhCost.Loop
import InitECandidate.Solver.MemSafe.Exb.PlS
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Eb
namespace InitECandidate.Solver.MemSafe.Eb
variable {σ : Type}
theorem ntx_memory_bound {E : EbE σ} {En : Env} {S : FS} {pl N : BitVec 64} {s : State σ}
    (hp : PA E En S s) (hpl : S (.obj pl tPL 136)) (hcnt : S (.pcv (pl + BitVec.ofNat 64 40) N)) :
    N.toNat ≤ InitECandidate.Solver.MemSafe.IvvhCost.ntxMax := by
  obtain ⟨⟨Γ, p, hr, hL⟩, henv⟩ := hp
  obtain ⟨o, ho, hb, ht, hsz⟩ := hL _ hpl
  have hrd := (hL _ hcnt).1
  have hIv := (Exb.hypPlS Γ s o (ebRun_G hr) ho ht).1.1
  rw [Exb.txF_eq hb 4, Exb.txF_eq hb 5, hrd] at hIv
  exact InitECandidate.Solver.MemSafe.IvvhCost.sla_count_bound (ebRun_G hr) hIv
#print axioms ntx_memory_bound
end InitECandidate.Solver.MemSafe.Eb
