import InitECandidate.Solver.MemSafe.Frames.GChkKC

/-!
# Calls that grow the running frame's memory (frames12, task 1)

`kc_core` / `pa_coreX` forbid writes to `MEM_CAP` (EV slot 5) and need `frame_mem_ptr` kept: the
chain's `topMem` (the running frame's memory ends at `frame_mem_ptr`) is carried unchanged.
`extend_memory` (and `charge_with_memory`) grow the memory object in place, writing `MEM_LEN` /
`MEM_CAP` and moving `frame_mem_ptr` up. The variants here take the running frame's contiguity
*after* the call instead (from the callee's post, e.g. `Struct.EMQ` / `Struct.CWMQ`):

* `chainL_keepM`: `chainL_keepR` with `topMem` re-established from `htm`;
* **`pa_coreM`**: `pa_coreX` with slot 5 allowed and `frame_mem_ptr` free; `Φ` changes exactly by
  the running frame's `GAS_LEFT + STATE_GAS_SPILLED`;
* **`kc_coreM`**: `kc_core` likewise (the chain, its extension, `JrNZ`, the active bit).

`marks` / `ChildMarks` survive the growth: `childMarks_keep` only needs `GStep` (a monotone
allocator), and every frame mark is below the old `frame_mem_ptr`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}


/-- `chainL_keepR` with the running frame's contiguity given at `t` (memory may grow). -/
theorem chainL_keepM {C : Cfg} {tEV tCK : Nat} {Γ Γ' : Gam} {s t : State σ} {e c : BitVec 64}
    {rest : List Frame} (h : ChainL C tEV tCK Γ s ((e, c) :: rest))
    (hev : gword t nmEv = gword s nmEv) (hcc : gword t nmCC = gword s nmCC)
    (hck : ∀ f ∈ (e, c) :: rest, ∀ k ∈ ckChainSlots, fld t.memory f.2 k = fld s.memory f.2 k)
    (hpa : ∀ f ∈ ((e, c) :: rest).tail, ∀ k ∈ evParentSlots, fld t.memory f.1 k = fld s.memory f.1 k)
    (htmT : ∀ p', ptrsOf t = some p' →
      (fld t.memory e evMem).toNat + (fld t.memory e evMemCap).toNat = p'.fp)
    (hrd : ∀ f ∈ rest, ∀ k ∈ [evRetd, evRetdCap], fld t.memory f.1 k = fld s.memory f.1 k)
    (hrdT : RetOK C Γ' t.memory e) (hst : GStep C tEV Γ Γ' s t e) :
    ChainL C tEV tCK Γ' t ((e, c) :: rest) := by
  have hext := gStep_ext hst
  have hhead : ∀ f ∈ ((e, c) :: rest : List Frame).head?, f.1 = e := by
    intro f hf; simp only [List.head?_cons, Option.mem_def, Option.some.injEq] at hf; rw [← hf]
  obtain ⟨⟨e1, c1, rest1, hfs, he, hc, hch⟩, hobj, hnE, hnC, hst', hmm, hout, htm, hmk, hrd0⟩ := h
  refine ⟨⟨e1, c1, rest1, hfs, by rw [hev]; exact he, by rw [hcc]; exact hc,
    isChain_keep hch hck⟩, ?_, hnE, hnC, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro f hf
    obtain ⟨⟨o1, ho1, hb1, ht1⟩, ⟨o2, ho2, hb2, ht2⟩⟩ := hobj f hf
    obtain ⟨o1', ho1', hb1', ht1', -⟩ := hext o1 ho1
    obtain ⟨o2', ho2', hb2', ht2', -⟩ := hext o2 ho2
    exact ⟨⟨o1', ho1', hb1'.trans hb1, ht1'.trans ht1⟩, ⟨o2', ho2', hb2'.trans hb2, ht2'.trans ht2⟩⟩
  · intro ch pa ha
    obtain ⟨-, hpa'⟩ := adj_mem ha
    rw [hpa pa hpa' evSp (by simp [evParentSlots]), hpa pa hpa' evStackCap (by simp [evParentSlots])]
    exact hst' ch pa ha
  · intro ch pa ha
    obtain ⟨hch', hpa'⟩ := adj_mem ha
    rw [hck ch hch' ckMemMark (by simp [ckChainSlots]),
      hpa pa hpa' evMem (by simp [evParentSlots]), hpa pa hpa' evMemCap (by simp [evParentSlots])]
    exact hmm ch pa ha
  · intro ch pa ha
    obtain ⟨hch', hpa'⟩ := adj_mem ha
    rw [hck ch hch' ckOutSize (by simp [ckChainSlots]),
      hck ch hch' ckOutStart (by simp [ckChainSlots]),
      hpa pa hpa' evMemLen (by simp [evParentSlots])]
    exact hout ch pa ha
  · intro e' c' rest' hfs' p' hp'
    simp only [List.cons.injEq, Prod.mk.injEq] at hfs'
    obtain ⟨⟨rfl, rfl⟩, rfl⟩ := hfs'
    exact htmT p' hp'
  · intro l1 ch pa l2 hfs'
    exact childMarks_keep hobj hck hhead hst hfs' (hmk l1 ch pa l2 hfs')
  · intro f hf
    rcases List.mem_cons.mp hf with rfl | hf'
    · exact hrdT
    · exact retOK_ext hext (hrd f hf' evRetd (by simp)) (hrd f hf' evRetdCap (by simp)) (hrd0 f hf)


/-- **`pa_coreX` with memory growth**: slot 5 (`MEM_CAP`) may be written and `frame_mem_ptr` may
move, given the running frame's contiguity after the call (`htm`); `Φ` changes exactly by the
running frame's gas cells. -/
theorem pa_coreM {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {Γa Γ' : Gam} {s st : State σ} {e c : BitVec 64} {rest : List Frame}
    (hG : G C H Γa s) (hch : ChainL C tEV tCK Γa s ((e, c) :: rest)) {sg : Sig} {ks : List Nat}
    (hks : ∀ k ∈ ks, 8 * k + 8 ≤ 280) (hnot : ∀ j ∈ [3, 13], j ∉ ks)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} {pu pt : Ptrs}
    (hc : SumCore C H sg (fun a => ProtCell C Γa a ∧ PWtop tEV tCK ks vs s Γa a) Γa s vs r st Γ'
      pu pt)
    (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γa a)
    (htm : ∀ p', ptrsOf st = some p' →
      (fld st.memory e evMem).toNat + (fld st.memory e evMemCap).toNat = p'.fp)
    (hrdT : (18 ∉ ks ∧ 27 ∉ ks) ∨ RetOK C Γ' st.memory e) :
    ChainL C tEV tCK Γ' st ((e, c) :: rest) ∧
      Phi st + ((fld s.memory e 64).toNat + (fld s.memory e 192).toNat) =
        Phi s + ((fld st.memory e 64).toNat + (fld st.memory e 192).toNat) ∧
      (∀ j, j < 13 → fld st.memory c (8 * j) = fld s.memory c (8 * j)) ∧
      (∀ j ∈ evProtSlots, j ∉ ks → fld st.memory e (8 * j) = fld s.memory e (8 * j)) := by
  have hpk := sumCore_prot hc hG hac
  obtain ⟨hpu, hpt, hmo, hext, hnf, hG', -, hpg, -⟩ := hc
  obtain ⟨q, hq, hord, hL, -⟩ := hG
  obtain rfl : pu = q := Option.some.inj (hpu.symm.trans hq)
  have hG'c := hG'
  obtain ⟨q', hq', hord', hL', -⟩ := hG'
  obtain rfl : pt = q' := Option.some.inj (hpt.symm.trans hq')
  have hesz : ∀ x ∈ Γa, x.ty = tEV → ∀ k ∈ ks, x.HasSlot k := by
    intro x hx hxt k hk
    have := ev_size hF hL hx hxt
    unfold Obj.HasSlot; have := hks k hk; omega
  obtain ⟨e1, c1, rest1, hfs1, hev, hcc, hic⟩ := hch.chain
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs1
  obtain ⟨⟨rfl, rfl⟩, rfl⟩ := hfs1
  have hEV : ∀ o ∈ Γa, o.ty = tEV → ∀ j ∈ evProtSlots, (o.base = e → j ∉ ks) →
      fld st.memory o.base (8 * j) = fld s.memory o.base (8 * j) := by
    intro o ho hot j hj hnr
    have hsz := ev_size hF hL ho hot
    have hj' : j ≤ 29 := by simp [evProtSlots] at hj; omega
    refine frame_keep hord hL hesz hpk ho (Or.inl hot) (by unfold Obj.HasSlot; omega)
      (by rw [hot]; exact hF.evProt j hj) fun heb => hnr ?_
    rw [hev] at heb; exact (Option.some.inj heb).symm
  have hCK : ∀ o ∈ Γa, o.ty = tCK → ∀ j, j < 13 →
      fld st.memory o.base (8 * j) = fld s.memory o.base (8 * j) := by
    intro o ho hot j hj
    have hsz := ck_size hF hL ho hot
    refine frame_keep hord hL hesz hpk ho (Or.inr hot) (by unfold Obj.HasSlot; omega)
      (by rw [hot]; exact hF.ckProt j hj) fun heb => ?_
    exfalso
    rw [hev] at heb
    obtain ⟨o', ho', hob', hot'⟩ := (hch.objs (e, c) (by simp)).1
    exact base_ne_of_ty hL ho ho' (by rw [hot, hot']; exact hF.ne.symm)
      ((Option.some.inj heb).symm.trans hob'.symm)
  have hnd := hch.nodupE
  simp only [List.map_cons, List.nodup_cons] at hnd
  have hne : ∀ f ∈ rest, f.1 ≠ e := fun f hf h => hnd.1 (h ▸ List.mem_map_of_mem hf)
  have hfE : ∀ f ∈ (e, c) :: rest, ∀ j ∈ evProtSlots, (f.1 = e → j ∉ ks) →
      fld st.memory f.1 (8 * j) = fld s.memory f.1 (8 * j) := by
    intro f hf j hj hnr
    obtain ⟨o, ho, hob, hot⟩ := (hch.objs f hf).1
    rw [← hob]; exact hEV o ho hot j hj fun hb => hnr (hob.symm.trans hb)
  have hfC : ∀ f ∈ (e, c) :: rest, ∀ j, j < 13 →
      fld st.memory f.2 (8 * j) = fld s.memory f.2 (8 * j) := by
    intro f hf j hj
    obtain ⟨o, ho, hob, hot⟩ := (hch.objs f hf).2
    rw [← hob]; exact hCK o ho hot j hj
  have hst : GStep C tEV Γa Γ' s st e := ⟨pu, pt, hpu, hpt, hord, hord', hL, hL', hmo, hext, hnf,
    fun x hx hxt hxe => ⟨hEV x hx hxt 1 (by simp [evProtSlots]) fun h => absurd h hxe,
      hEV x hx hxt 3 (by simp [evProtSlots]) fun h => absurd h hxe⟩⟩
  have hrdT' : RetOK C Γ' st.memory e := by
    rcases hrdT with ⟨h18, h27⟩ | h
    · have hr := hch.retd (e, c) (by simp)
      exact retOK_ext hext (hfE (e, c) (by simp) 18 (by simp [evProtSlots]) fun _ => h18)
        (hfE (e, c) (by simp) 27 (by simp [evProtSlots]) fun _ => h27) hr
    · exact h
  have hch' : ChainL C tEV tCK Γ' st ((e, c) :: rest) := by
    refine chainL_keepM hch (by unfold gword; rw [hpg _ hF.pgEv hgw.1])
      (by unfold gword; rw [hpg _ hF.pgCC hgw.2]) ?_ ?_ htm ?_ hrdT' hst
    · intro f hf k hk
      simp only [ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart,
        ckOutSize, List.mem_cons, List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl | rfl | rfl | rfl | rfl | rfl
      · exact hfC f hf 0 (by omega)
      · exact hfC f hf 1 (by omega)
      · exact hfC f hf 2 (by omega)
      · exact hfC f hf 6 (by omega)
      · exact hfC f hf 7 (by omega)
      · exact hfC f hf 9 (by omega)
      · exact hfC f hf 10 (by omega)
    · intro f hf k hk
      have hf' : f ∈ (e, c) :: rest := List.mem_cons_of_mem _ hf
      have hnr : f.1 = e → False := hne f hf
      simp only [evParentSlots, evSp, evStackCap, evMem, evMemCap, evMemLen, List.mem_cons,
        List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl | rfl | rfl | rfl
      · exact hfE f hf' 2 (by simp [evProtSlots]) fun h => absurd h hnr
      · exact hfE f hf' 29 (by simp [evProtSlots]) fun h => absurd h hnr
      · exact hfE f hf' 3 (by simp [evProtSlots]) fun h => absurd h hnr
      · exact hfE f hf' 5 (by simp [evProtSlots]) fun h => absurd h hnr
      · exact hfE f hf' 4 (by simp [evProtSlots]) fun h => absurd h hnr
    · intro f hf k hk
      have hf' : f ∈ (e, c) :: rest := List.mem_cons_of_mem _ hf
      simp only [evRetd, evRetdCap, List.mem_cons, List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl
      · exact hfE f hf' 18 (by simp [evProtSlots]) fun h => absurd h (hne f hf)
      · exact hfE f hf' 27 (by simp [evProtSlots]) fun h => absurd h (hne f hf)
  refine ⟨hch', ?_, fun j hj => hfC (e, c) (by simp) j hj,
    fun j hj hnk => hfE (e, c) (by simp) j hj fun _ => hnk⟩
  rw [phi_eq hch'.chain, phi_eq hch.chain, wsum_cons, wsum_cons]
  have hrest : wsum st.memory rest = wsum s.memory rest := by
    refine wsum_keep fun f hf => ⟨fun k hk => ?_, ?_⟩
    · have hf' : f ∈ (e, c) :: rest := List.mem_cons_of_mem _ hf
      simp only [evGasLeft, evSpilled, evRunning, List.mem_cons, List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl | rfl
      · exact hfE f hf' 8 (by simp [evProtSlots]) fun h => absurd h (hne f hf)
      · exact hfE f hf' 24 (by simp [evProtSlots]) fun h => absurd h (hne f hf)
      · exact hfE f hf' 13 (by simp [evProtSlots]) fun h => absurd h (hne f hf)
    · exact hfC f (List.mem_cons_of_mem _ hf) 4 (by omega)
  have h13 := hfE (e, c) (by simp) 13 (by simp [evProtSlots]) fun _ => hnot 13 (by simp)
  have h4 := hfC (e, c) (by simp) 4 (by omega)
  simp only [show (8 * 13 : Nat) = 104 from rfl, show (8 * 4 : Nat) = 32 from rfl] at h13 h4
  rw [hrest, wt_eq, wt_eq, h13, h4]
  omega

section
variable {H : Hooks σ}


/-- **`kc_core` with memory growth**: the callee may write `MEM_CAP` (slot 5) and move
`frame_mem_ptr`, given the running frame's contiguity after the call from the post (`htm`); `Φ`
changes exactly by the running frame's gas cells (`GAS_LEFT + STATE_GAS_SPILLED`). -/
theorem kc_coreM (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) {sg : Sig} (hsub : ∀ g, g ∈ sg.gw → g ∈ gw)
    (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw) {ks : List Nat}
    (hks8 : ∀ k ∈ ks, 8 * k + 8 ≤ 280) (hnot : ∀ j ∈ [3, 13], j ∉ ks)
    (hksX : ∀ k ∈ ks, k ∉ evXSlots)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {Γ1 : Gam} {p1 : Ptrs} {u : State σ} (hrun : RunT guestC H gw Γ0 s0 Γ1 u p0 p1)
    (hch : ChainL guestC tEV tCK Γ1 u fs) (hE : ChainE GP GR Γ1 u fs) (hJ : JrNZ u)
    {vs : List (ValueHOL 64)} {callee : Locs} {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelX guestC H sg Pre (fun vs s Γ a => ProtCell guestC Γ a ∧ PW vs s Γ a) Q vs
      (callEntryStateHOLFinite u callee) r st)
    (hg : Good (some r)) (hna : ¬ Abortive r) (hargs : ArgsOK guestC Γ1 p1 sg.params vs)
    (hpre : Pre vs (callEntryStateHOLFinite u callee) Γ1)
    (hpw : ∀ a, ProtCell guestC Γ1 a → PW vs (callEntryStateHOLFinite u callee) Γ1 a →
      PWtopM tEV tCK ks vs (callEntryStateHOLFinite u callee) Γ1 a)
    (htm : ∀ Γ2, Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 → ∀ p', ptrsOf st = some p' →
      (fld st.memory e evMem).toNat + (fld st.memory e evMemCap).toNat = p'.fp)
    (hrd : (18 ∉ ks ∧ 27 ∉ ks) ∨ ∀ Γ2, Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 →
      RetOK guestC Γ2 st.memory e) :
    ∃ Γ2 p2, RunT guestC H gw Γ0 s0 Γ2 st p0 p2 ∧ ChainL guestC tEV tCK Γ2 st fs ∧
      ChainE GP GR Γ2 st fs ∧
      Phi st + ((fld u.memory e 64).toNat + (fld u.memory e 192).toNat) =
        Phi u + ((fld st.memory e 64).toNat + (fld st.memory e 192).toNat) ∧
      JrNZ st ∧ act st = act u ∧
      Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 ∧
      (∀ j ∈ evProtSlots, j ∉ ks → fld st.memory e (8 * j) = fld u.memory e (8 * j)) ∧
      (∀ j, j < 13 → fld st.memory c (8 * j) = fld u.memory c (8 * j)) := by
  have hH := hF.hooks
  have hG1 := hrun.2.2.2.2.2.1
  have hp1 := hrun.2.1
  obtain ⟨Γ2, p2, hrun2, hc, hQ⟩ := run_callT hH hsub hrun hR hg hna hargs hpre
    (fun a ⟨hp, hw⟩ => by
      obtain ⟨q, hq, hord, hL, -⟩ := hrun.2.2.2.2.2.1
      exact not_kCell_of_pwtopM hord hL (hpw a hp hw))
  have hGe : G guestC H Γ1 (callEntryStateHOLFinite u callee) := (G_locFree hH u _ _).mpr hG1
  have hche : ChainL guestC tEV tCK Γ1 (callEntryStateHOLFinite u callee) fs :=
    chainL_congr (s := u) (s' := callEntryStateHOLFinite u callee) rfl rfl hch
  have hEe : ChainE GP GR Γ1 (callEntryStateHOLFinite u callee) fs :=
    chainE_congr (s := u) (s' := callEntryStateHOLFinite u callee) rfl rfl hE
  have hpe : ptrsOf (callEntryStateHOLFinite u callee) = some p1 := (ptrsOf_congr rfl).trans hp1
  obtain ⟨q, hq, hord, hL, -⟩ := id hGe
  obtain rfl : q = p1 := Option.some.inj (hq.symm.trans hpe)
  have hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell guestC Γ1 a :=
    fun a ha => argCells_not_prot hord hL hargs ha
  have hcT : SumCore guestC H sg (fun a => ProtCell guestC Γ1 a ∧
      PWtop tEV tCK ks vs (callEntryStateHOLFinite u callee) Γ1 a) Γ1
      (callEntryStateHOLFinite u callee) vs r st Γ2 q p2 :=
    sumCore_pwM hc fun a ⟨hp, hw⟩ => ⟨hp, (hpw a hp hw).1⟩
  subst hfs
  obtain ⟨hch2, hΦ2, hkC, hkE⟩ := pa_coreM hF hGe hche hks8 hnot hgwE hcT hac (htm Γ2 hQ)
    (hrd.imp id fun h => h Γ2 hQ)
  obtain ⟨e', c', rest', hfs', he', hc', -⟩ := hche.chain
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs'
  obtain ⟨⟨he1, hc1⟩, -⟩ := hfs'
  rw [← he1] at he'
  rw [← hc1] at hc'
  obtain ⟨oe, hoe, hoeb, hoet⟩ := (hche.objs (e, c) (List.mem_cons_self ..)).1
  have hE2 := chainE_sumCoreM hF xCfg_guest (by decide) hks8 hksX hGe hc hac
    (fun a hp hw => hpw a hp hw) he' ⟨oe, hoe, hoeb, hoet⟩ hche.objs hEe
  obtain ⟨e2, c2, rest2, hfs2, he2, hc2, -⟩ := hch2.chain
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs2
  obtain ⟨⟨rfl, rfl⟩, -⟩ := hfs2
  have hact : act st = act u := by
    rw [act_eq he2 hc2, act_eq (s := u) he' hc', hkC 4 (by decide),
      hkE 13 (by simp [evProtSlots]) (hnot 13 (by simp))]
    rfl
  refine ⟨Γ2, p2, hrun2, hch2, hE2, ?_, jrNZ_sumCore (by decide) hgJ hc (jrNZ_congr (s := u) rfl hJ),
    hact, hQ, fun j hj hk => hkE j hj hk, fun j hj => hkC j hj⟩
  rw [phi_locFree.entry] at hΦ2; exact hΦ2


/-- **`kc_core` with the kept slots**: also returns the running EV's `prot` slots outside `ks` and
the running CK record's slots, unchanged. -/
theorem kc_coreK (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) {sg : Sig} (hsub : ∀ g, g ∈ sg.gw → g ∈ gw)
    (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw) {ks : List Nat}
    (hks8 : ∀ k ∈ ks, 8 * k + 8 ≤ 280) (hnot : ∀ j ∈ [3, 5, 13], j ∉ ks)
    (hksX : ∀ k ∈ ks, k ∉ evXSlots)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {Γ1 : Gam} {p1 : Ptrs} {u : State σ} (hrun : RunT guestC H gw Γ0 s0 Γ1 u p0 p1)
    (hch : ChainL guestC tEV tCK Γ1 u fs) (hE : ChainE GP GR Γ1 u fs) (hJ : JrNZ u)
    {vs : List (ValueHOL 64)} {callee : Locs} {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelX guestC H sg Pre (fun vs s Γ a => ProtCell guestC Γ a ∧ PW vs s Γ a) Q vs
      (callEntryStateHOLFinite u callee) r st)
    (hfpk : st.globals.lookup gFrame = (callEntryStateHOLFinite u callee).globals.lookup gFrame)
    (hg : Good (some r)) (hna : ¬ Abortive r) (hargs : ArgsOK guestC Γ1 p1 sg.params vs)
    (hpre : Pre vs (callEntryStateHOLFinite u callee) Γ1)
    (hpw : ∀ a, ProtCell guestC Γ1 a → PW vs (callEntryStateHOLFinite u callee) Γ1 a →
      PWtopM tEV tCK ks vs (callEntryStateHOLFinite u callee) Γ1 a)
    (hgas : (8 ∉ ks ∧ 24 ∉ ks) ∨ ∀ Γ2, Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 →
      (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
        (fld u.memory e 64).toNat + (fld u.memory e 192).toNat)
    (hrd : (18 ∉ ks ∧ 27 ∉ ks) ∨ ∀ Γ2, Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 →
      RetOK guestC Γ2 st.memory e) :
    ∃ Γ2 p2, RunT guestC H gw Γ0 s0 Γ2 st p0 p2 ∧ ChainL guestC tEV tCK Γ2 st fs ∧
      ChainE GP GR Γ2 st fs ∧ Phi st ≤ Phi u ∧ JrNZ st ∧ act st = act u ∧
      Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 ∧
      (∀ j ∈ evProtSlots, j ∉ ks → fld st.memory e (8 * j) = fld u.memory e (8 * j)) ∧
      (∀ j, j < 13 → fld st.memory c (8 * j) = fld u.memory c (8 * j)) := by
  have hH := hF.hooks
  have hG1 := hrun.2.2.2.2.2.1
  have hp1 := hrun.2.1
  obtain ⟨Γ2, p2, hrun2, hc, hQ⟩ := run_callT hH hsub hrun hR hg hna hargs hpre
    (fun a ⟨hp, hw⟩ => by
      obtain ⟨q, hq, hord, hL, -⟩ := hrun.2.2.2.2.2.1
      exact not_kCell_of_pwtopM hord hL (hpw a hp hw))
  have hGe : G guestC H Γ1 (callEntryStateHOLFinite u callee) := (G_locFree hH u _ _).mpr hG1
  have hche : ChainL guestC tEV tCK Γ1 (callEntryStateHOLFinite u callee) fs :=
    chainL_congr (s := u) (s' := callEntryStateHOLFinite u callee) rfl rfl hch
  have hEe : ChainE GP GR Γ1 (callEntryStateHOLFinite u callee) fs :=
    chainE_congr (s := u) (s' := callEntryStateHOLFinite u callee) rfl rfl hE
  have hpe : ptrsOf (callEntryStateHOLFinite u callee) = some p1 := (ptrsOf_congr rfl).trans hp1
  obtain ⟨q, hq, hord, hL, -⟩ := id hGe
  obtain rfl : q = p1 := Option.some.inj (hq.symm.trans hpe)
  have hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell guestC Γ1 a :=
    fun a ha => argCells_not_prot hord hL hargs ha
  have hfp : p2.fp = q.fp := fpQ_of_fp hfpk q p2 hpe hc.2.1
  have hcT : SumCore guestC H sg (fun a => ProtCell guestC Γ1 a ∧
      PWtop tEV tCK ks vs (callEntryStateHOLFinite u callee) Γ1 a) Γ1
      (callEntryStateHOLFinite u callee) vs r st Γ2 q p2 :=
    sumCore_pwM hc fun a ⟨hp, hw⟩ => ⟨hp, (hpw a hp hw).1⟩
  subst hfs
  have hgas' : (8 ∉ ks ∧ 24 ∉ ks) ∨ (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
      (fld (callEntryStateHOLFinite u callee).memory e 64).toNat +
        (fld (callEntryStateHOLFinite u callee).memory e 192).toNat :=
    hgas.imp id fun h => h Γ2 hQ
  obtain ⟨hch2, hΦ2, hkC, hkE⟩ := pa_coreX hF hGe hche hks8 hnot hgwE hcT hac hfp hgas'
    (hrd.imp id fun h => h Γ2 hQ)
  obtain ⟨e', c', rest', hfs', he', hc', -⟩ := hche.chain
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs'
  obtain ⟨⟨he1, hc1⟩, -⟩ := hfs'
  rw [← he1] at he'
  rw [← hc1] at hc'
  obtain ⟨oe, hoe, hoeb, hoet⟩ := (hche.objs (e, c) (List.mem_cons_self ..)).1
  have hE2 := chainE_sumCoreM hF xCfg_guest (by decide) hks8 hksX hGe hc hac
    (fun a hp hw => hpw a hp hw) he' ⟨oe, hoe, hoeb, hoet⟩ hche.objs hEe
  obtain ⟨e2, c2, rest2, hfs2, he2, hc2, -⟩ := hch2.chain
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs2
  obtain ⟨⟨rfl, rfl⟩, -⟩ := hfs2
  have hact : act st = act u := by
    rw [act_eq he2 hc2, act_eq (s := u) he' hc', hkC 4 (by decide),
      hkE 13 (by simp [evProtSlots]) (hnot 13 (by simp))]
    rfl
  refine ⟨Γ2, p2, hrun2, hch2, hE2, ?_, jrNZ_sumCore (by decide) hgJ hc (jrNZ_congr (s := u) rfl hJ),
    hact, hQ, fun j hj hk => hkE j hj hk, fun j hj => hkC j hj⟩
  rw [phi_locFree.entry] at hΦ2; exact hΦ2


end

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.chainL_keepM
#print axioms InitECandidate.Solver.MemSafe.Frames.pa_coreM
#print axioms InitECandidate.Solver.MemSafe.Frames.kc_coreM
#print axioms InitECandidate.Solver.MemSafe.Frames.kc_coreK
