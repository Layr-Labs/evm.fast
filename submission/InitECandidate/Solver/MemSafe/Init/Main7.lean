import InitECandidate.Solver.MemSafe.Init.Main6

/-!
# Init: `main`'s walk, part 7 (the allocations and `memzero` in the `WI` world, `dec`s, `htr`+`verify`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Eb InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Aw

variable {σ : Type}

def WIp (s : State σ) : Prop := ∃ Γ, WI Γ [] s

theorem wi_mono {Γ : Gam} {pn : List MlS} {s t : State σ} {p p' : Ptrs} (hW : WI Γ pn s) (hp : ptrsOf s = some p)
    (hp' : ptrsOf t = some p') (hord' : p'.Ordered) (hmono : p.Mono p')
    (hgl : ∀ g, g ≠ gHeap → t.globals.lookup g = s.globals.lookup g) : WI Γ pn t := by
  obtain ⟨p0, hp0, ho, hl, hbt, hg⟩ := hW
  obtain rfl : p0 = p := Option.some.inj (hp0.symm.trans hp)
  refine ⟨p', hp', hord', Helpers.layout_mono hmono hl, hbt, fun g k hk => ?_⟩
  obtain ⟨v, hv, hz, hf⟩ := hg g k hk
  exact ⟨v, by unfold gword at hv ⊢; rw [hgl g (GT_key_not_alloc hk).1]; exact hv, hz, hf⟩

theorem tb_mz : (Shards.finalState.1.lookup (nm "memzero")).isSome = true := by decide +kernel
theorem tb_htr' : (Shards.finalState.1.lookup (nm "htr_new_payload_request")).isSome = true := tb_htr

theorem cost_alloc_wi {rn : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {w : BitVec 64} (hav : argVal e = some w)
    {k : ProgHOL 64} {B : Nat} (hk : Inv.CostP σ guestCtx WIp k B) :
    Inv.CostP σ guestCtx WIp (.decCall rn sh (nm "alloc") [e] k) (1 + tbN "alloc" + B) := by
  refine Band.costP_decCall (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost (calleeCost_tb "alloc" tb_alloc))
    (fun _ _ _ _ _ _ => trivial) (allocSpec_alloc (σ := σ) (X := guestCtx) guestCtx_code) ?_
  intro s hs ⟨Γ, hW⟩ vs hvs callee v st hA hst hsh
  refine (hk).pre fun t _ ht => ?_
  subst ht
  have : evs s [e] = some [.val (.word w)] := evs_cons (ev_argVal hav) evs_nil
  rw [this] at hvs
  obtain rfl := (Option.some.inj hvs).symm
  have hg : (callEntryStateHOLFinite s callee).globals = s.globals := rfl
  obtain ⟨p, hp, hord, -⟩ := id hW
  have hp0 : ptrsOf (callEntryStateHOLFinite s callee) = some p :=
    (AllocImpl.ptrsOf_congr (s := s) (t := callEntryStateHOLFinite s callee) hg).trans hp
  obtain ⟨hmem, hgo, p', hp', hord', hmono, -⟩ := hA (by simp [Good]) w p rfl hp0 hord
  refine ⟨Γ, wi_mono hW hp ?_ hord' hmono (fun g hg' => hgo g hg')⟩
  · exact hp'

theorem hoare_mz {args : List (ExpHOL 64)} :
    Hoare σ guestCtx WIp (.call (some (none, none)) (nm "memzero") args) (fun r t => r = none → WIp t) := by
  refine Spec.hoare_callD (R := fun _ s _ t => t.globals = s.globals)
    (funSpec_gwNone (by rw [guestCtx_code]; exact sFns_closed) (by decide)) ?_
  intro s hs ⟨Γ, hW⟩ vs hvs callee v st hR hst _
  exact ⟨Γ, wi_congr hR hW⟩

end InitECandidate.Solver.MemSafe.Init
