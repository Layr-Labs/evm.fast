import InitECandidate.Solver.MemSafe.Dn.Final
import InitECandidate.Solver.MemSafe.Hooks.NodeFacts

set_option autoImplicit false

/-!
# The record stage applied: the `ws` facts as theorems

With the staged record types in `Types.lean` (ids 46–52, `ws : nptr tWSR`, `wsrTy` =
`⟨heap, [prot, scalar, prot, nodeU, ptr tHTh32], prot, 40⟩`):

* `hGT`, `hWSz`, `hWS4` are `decide` facts;
* `hWS24` (the decoded state root at `ws + 24` is a `nodeU` word) follows from `G`'s field typing.

**`op_dispatch_condCost_Cfg hV hNV`**: the dispatcher's full cost, open only in the trie-values
stage (`hV : VTy tV`, `hNV`: every `G` object satisfies `NVal tV`), which is not applied yet.
-/

set_option maxRecDepth 1000000

namespace InitECandidate.Solver.MemSafe.Dn
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
  InitECandidate.Solver.MemSafe.Stor InitECandidate.Solver.MemSafe.St2
open InitECandidate.Solver.MemSafe.Types (guestC tWSR)

variable {σ : Type}

theorem cfg_hGT : guestC.GT.lookup (nm "ws") = some (.nptr tWSR) := Types.gt_ws

theorem cfg_hWSz : 32 ≤ (guestC.ty tWSR).minSz := by decide

theorem cfg_hWS4 : (guestC.ty tWSR).slot 4 = .ptr Types.tHTh32 := by decide

/-- The decoded state root of the `ws` record is a `nodeU` word (`G`'s field typing, slot 3). -/
theorem cfg_hWS24 {H : Hooks σ} : ∀ (Γ : Gam) (s : State σ), G guestC H Γ s → ∀ o ∈ Γ,
    o.ty = tWSR → Fits Γ Types.nodeU (rd s.memory (o.base + 24)) := by
  intro Γ s hG o ho ht
  obtain ⟨p, hp, hord, hL, hF, -⟩ := hG
  have hsz : (guestC.ty o.ty).minSz ≤ o.size := (hL.1 o ho).2.2.2.1
  rw [ht] at hsz
  have h40 : 40 ≤ o.size := by
    have : (guestC.ty tWSR).minSz = 40 := by decide
    omega
  have := hF o ho 3 (by unfold Obj.HasSlot; omega)
  have hs3 : (guestC.ty tWSR).slot 3 = Types.nodeU := by decide
  rw [ht, hs3] at this
  exact this

/-- The value type `tVAL` is an all-scalar heap type, no node type, no keccak buffer type. -/
theorem vty_tVAL : Band4.VTy Types.tVAL where
  heap := by rw [Types.ty_VAL]; rfl
  scalar := fun k => by rw [Types.ty_VAL]; rfl
  notNode := by decide
  notK1 := by decide
  notK2 := by decide

/-- **The node-value hook discharges `NVal`**: every `G` leaf / branch value lies in a `tVAL` object. -/
theorem nval_tVAL (Γ : Gam) (s : State σ) (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ s) :
    ∀ o ∈ Γ, Band4.NVal Types.tVAL Γ s o :=
  fun _ ho => ⟨fun h => Hooks.vIn_of_leaf hG ho h, fun h => Hooks.vIn_of_branch hG ho h⟩

/-- `Staged` from the trie-values stage alone. -/
theorem staged_of_tv {tV : Nat} (hV : Band4.VTy tV)
    (hNV : ∀ (Γ : Gam) (s : State σ), G guestC (Hooks.guestHooksR (σ := σ)) Γ s → ∀ o ∈ Γ,
      Band4.NVal tV Γ s o) : Staged σ (Hooks.guestHooksR (σ := σ)) tV :=
  ⟨hV, hNV, cfg_hGT, cfg_hWS24⟩

set_option exponentiation.threshold 1000 in
/-- **The dispatcher's full cost** (no open hypothesis: the trie-values stage is applied). -/
theorem op_dispatch_condCost_Cfg {M : Nat} :
    CondCost σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch")
      (Frames.sg1 []) (Frames.PreOpX Types.guestC Types.tEV Types.tCK Frames.GP Frames.GR M)
      (InitECandidate.Solver.Band.odCostFactor * (1 + max InitECandidate.Solver.Band.odTabBound (max Band3.oslB Band3.ossB))) :=
  op_dispatch_condCost_Fin (staged_of_tv vty_tVAL nval_tVAL) cfg_hWSz cfg_hWS4

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.cfg_hWS24
#print axioms InitECandidate.Solver.MemSafe.Dn.op_dispatch_condCost_Cfg
