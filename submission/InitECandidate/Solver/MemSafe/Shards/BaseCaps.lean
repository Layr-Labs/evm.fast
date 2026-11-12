import InitECandidate.Solver.MemSafe.Shards.Base
import InitECandidate.Solver.MemSafe.Struct.PushW
import InitECandidate.Solver.MemSafe.Frames.EvSum
import InitECandidate.Solver.MemSafe.Annot.FrameCfg

/-!
# The base of the fold with capabilities: the EVM stack and gas helpers

The hand-proved summaries of `stack_pop`, `stack_push`, `stack_push_word`, `stack_push_bool`
(ms-struct, `Struct/`) and `charge_gas` (ms-frames, `Frames/EvSum.lean`) as capability
entries on the running frame's EV record (`capEv ks`: the global `ev` points at an EV object
whose `prot` slots `ks` the function writes).

ms-struct's specs assume `ev` is a non-null `ptr` global (`EvCfg`); in `guestC` it is
`nptr`. They are instantiated under `upg guestC [capEv ks]` and moved back with
`sumSpec_of_upg`.

`GuestHooks H`: the hook laws these specs need (to be met by the final hook family).
-/

namespace InitECandidate.Solver.MemSafe.Shards
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Struct
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The running frame's EV record, slots `ks`. -/
def capEv (ks : List Nat) : Cap := ⟨nm "ev", tEV, ks, false⟩

/-- The structure types of the stack and memory hooks. -/
def sty : STy := ⟨tEV, tSTACK, tMEM⟩

/-- The hook laws the stack and gas summaries need. -/
structure GuestHooks {σ : Type} (H : Hooks σ) : Prop where
  ev : EvHook guestC H sty
  mono : HooksMono guestC H
  hookEV : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tEV →
    ∀ j ∈ evDriverSlots16, ¬ H.fp Γ s o (o'.cell j)
  hookCK : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tCK → ∀ j, j < 13 →
    ¬ H.fp Γ s o (o'.cell j)

theorem upg_ev_ne {ks : List Nat} {g : MlS} (hg : nm "ev" ≠ g) : ∀ c ∈ [capEv ks], c.g ≠ g := by
  intro c hc
  simp only [List.mem_cons, List.not_mem_nil, or_false] at hc
  subst hc
  exact hg

theorem capEv_g (ks : List Nat) : (capEv ks).g ≠ anyG := by
  show nm "ev" ≠ nm "*"
  decide

theorem capsG_ev (ks : List Nat) : capsG [capEv ks] = [capEv ks] := by
  unfold capsG
  simp only [List.filter_cons, List.filter_nil]
  have : ((capEv ks).g != anyG) = true := by simpa using capEv_g ks
  rw [this]
  rfl

theorem evCfg_upg (ks : List Nat) : EvCfg (upg guestC [capEv ks]) sty := by
  have hev : (upg guestC [capEv ks]).GT.lookup gEv = some (.ptr tEV) := by
    unfold upg
    simp only
    rw [capsG_ev]
    simp [capEv, gEv]
  have hal : ∀ g ∈ [gHeap, gFrame, gScratch], (upg guestC [capEv ks]).GT.lookup g = none := by
    intro g hg
    have hne : nm "ev" ≠ g := by
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hg
      rcases hg with rfl | rfl | rfl <;> decide
    rw [lookup_upg_of (fun c hc _ => upg_ev_ne hne c hc)]
    exact (alloc_untyped g hg).1
  exact ⟨(by decide : ∀ k ∈ smSlots, (guestC.ty tEV).slot k = .prot),
    (by decide : 240 ≤ (guestC.ty tEV).minSz), hev, (by decide : gEv ∈ guestC.PG),
    fun _ => rfl, rfl, (by decide : (guestC.ty tSTACK).minSz ≤ 64),
    (by decide : guestC.tags.lookup tSTACK = none), fun _ => rfl, rfl,
    (by decide : guestC.tags.lookup tMEM = none), by decide, by decide, hal,
    fun g hg => (alloc_untyped g hg).2⟩

theorem pwev_cap {σ : Type} {ks : List Nat} {vs : List (ValueHOL 64)} {s : State σ} {Γ : Gam}
    {a : BitVec 64} (h : PWev sty ks vs s Γ a) : CapPW [capEv ks] s Γ a := by
  obtain ⟨e, ⟨he, het, hl⟩, k, hk, rfl⟩ := h
  refine ⟨capEv ks, List.mem_cons_self, Or.inl ⟨e, ⟨he, het, Or.inr ?_⟩, k, hk, rfl⟩⟩
  show gword s gEv = some e.base
  unfold gword; rw [hl]

theorem pwrun_cap {σ : Type} {ks : List Nat} {vs : List (ValueHOL 64)} {s : State σ} {Γ : Gam}
    {a : BitVec 64} (h : PWrun tEV ks vs s Γ a) : CapPW [capEv ks] s Γ a := by
  obtain ⟨e, ⟨he, het, hg⟩, k, hk, rfl⟩ := h
  exact ⟨capEv ks, List.mem_cons_self, Or.inl ⟨e, ⟨he, het, Or.inr hg⟩, k, hk, rfl⟩⟩

theorem req_evRun {σ : Type} {ks : List Nat} {s : State σ} {Γ : Gam}
    (h : ReqOK [capEv ks] s Γ) : ∃ e, EvRun tEV Γ s e := by
  obtain ⟨e, he, het, hg⟩ := h (capEv ks) List.mem_cons_self (capEv_g ks)
  exact ⟨e, he, het, hg⟩

variable {σ : Type} {X : Ctx 64} {H : Hooks σ}

theorem evHook_upg {cs : List Cap} (h : EvHook guestC H sty) : EvHook (upg guestC cs) H sty :=
  ⟨h.get, h.put, h.loc, h.stk_wf, h.mem_wf⟩

/-- A struct summary under the upgraded configuration as a capability summary. -/
theorem csumm_of_upg {f : MlS} {sg : Sig} {ks : List Nat} (hok : capsOK guestC sg [capEv ks] = true)
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpec σ X (upg guestC [capEv ks]) H f sg (fun _ _ _ => True) (PWev sty ks) Q) :
    CSumm σ X guestC H f sg [capEv ks] :=
  csumm_of_sumSpec (sumSpec_mono (sumSpec_of_upg hok h) (fun _ _ _ hr => ⟨trivial, hr⟩)
    (fun _ _ _ _ hw => pwev_cap hw) (fun _ _ _ _ _ _ _ => trivial))

def capTab : CTab :=
  [ (nm "charge_gas", sg1n, [capEv [8, 23]]),
    (nm "stack_push_bool", sgW, [capEv [1, 2, 29]]),
    (nm "stack_push_word", sgW, [capEv [1, 2, 29]]),
    (nm "stack_push", sgPush, [capEv [1, 2, 29]]),
    (nm "stack_pop", sgNone, [capEv [2]]) ]

/-- The base of the fold: capability entries, then the plain base table. -/
def baseCTab : CTab := capTab ++ ofTab baseTab

theorem baseCTab_sound (hF : FoldOK σ X guestC H) (hK : GuestHooks H) :
    CTabSound σ X guestC H baseCTab := by
  have hH := hF.hH
  have hC := hF.hX
  have hA : AlignedDom X := hF.hal
  have hT := tagSlots_guestC
  refine ctabSound_append ?_ (ctabSound_ofTab (baseTab_sound hF))
  have hSA := allocSpec_scratch_alloc (σ := σ) hC
  refine ctabSound_cons ?_ ?_
  refine ctabSound_cons ?_ ?_
  refine ctabSound_cons ?_ ?_
  refine ctabSound_cons ?_ ?_
  refine ctabSound_cons ctabSound_nil ?_
  · exact csumm_of_upg (by decide) (sum_stack_pop hC hH (evCfg_upg [2]) (evHook_upg hK.ev))
  · exact csumm_of_upg (by decide) (sum_stack_push hC hH hK.mono (evCfg_upg _) (evHook_upg hK.ev) hSA
      (summ_memcpy hH hT hC hA))
  · exact csumm_of_upg (by decide) (sum_stack_push_word hC hH hK.mono (evCfg_upg _) (evHook_upg hK.ev) hSA
      (summ_memcpy hH hT hC hA))
  · exact csumm_of_upg (by decide) (sum_stack_push_bool hC hH hK.mono (evCfg_upg _) (evHook_upg hK.ev) hSA
      (summ_memcpy hH hT hC hA))
  · exact csumm_of_sumSpec (sumSpec_mono
      (charge_evSpec hC (Annot.frameCfg_guest hH hK.hookEV hK.hookCK))
      (fun _ _ _ hr => req_evRun hr) (fun _ _ _ _ hw => pwrun_cap hw)
      (fun _ _ _ _ _ _ _ => trivial))

end InitECandidate.Solver.MemSafe.Shards
