import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Shrink
import InitECandidate.Solver.MemSafe.Aw.Rule
import InitECandidate.Solver.MemSafe.Frames.GuestRel
import InitECandidate.Solver.MemSafe.Frames.Release

/-!
# Dropping the heap-only typing's scratch-owned arrays

* `OwnerHeap Γ`: every owner-encoded type `tOwn b` of `Γ` has its owner `b` at a heap address (`b < heapEnd`).
* `ScratchOwn t`: `t = tOwn b` with `b >= heapEnd`.
* `G_dropOwn`: from `G Γh s` with `Γh` heap-only, `G` holds for the objects that are not scratch-owned arrays
  (a frame-local table's heap arrays, which no kept object refers to).
* `G_keepOwnerHeap`: the combined statement: from `G Γ s` with `ev` / `cur_cont` null, `G` holds for the heap objects that are
  not scratch-owned arrays, and the result satisfies `OwnerHeap`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Struct

variable {σ : Type}

/-- Every owner-encoded type has its owner at a heap address. -/
def OwnerHeap (Γ : Gam) : Prop := ∀ o ∈ Γ, ownBase ≤ o.ty → o.ty - ownBase < heapEnd

theorem recTy_lt {t : Nat} (h : RecTyOK t) : t < ownBase := h.2.2.2.2.2.2.2.2.2.1

theorem hdr_lt_own : ∀ t ∈ hdrTys, t < ownBase := by decide
/-- Every pointer kind targets types below `ownBase`. -/
def fkLtB : FK → Bool
  | .ptr t => decide (t < ownBase)
  | .nptr t => decide (t < ownBase)
  | .uptr ts => ts.all fun t => decide (t < ownBase)
  | _ => true

theorem valK_lt_own' : ∀ t ∈ hdrTys, fkLtB (valK t) = true := by decide

theorem valK_lt_own {t t' : Nat} (ht : t ∈ hdrTys) (h : valK t = .ptr t') : t' < ownBase := by
  have := valK_lt_own' t ht
  rw [h] at this
  simpa [fkLtB] using this

theorem recRef_lt {be : Bool} {e : RecD} (he : e ∈ recTab be) {Γ : Gam} {m : Mem} {o : Obj} {b : BitVec 64} {p : Ptrs}
    (hL : Layout guestC p Γ) (ho : o ∈ Γ) (het : e.ty = o.ty) (hew : e.wf Γ m o) (hr : e.ref Γ m o b) :
    ∀ x ∈ Γ, x.base = b → x.ty < ownBase := by
  have hG := gamOK_of_layout hL
  simp only [recTab, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · -- txD
    intro x hx hxb
    obtain ⟨-, -, -, h4, h5⟩ := hew
    rcases hr with ⟨hn, rfl⟩ | ⟨hn, rfl⟩
    · rcases h4 with h | ⟨y, hy, hyb, hyt, -⟩
      · exact absurd h hn
      · rw [gam_base_eq hG hx hy (hxb.trans hyb.symm), hyt]; decide
    · rcases h5 with h | ⟨y, hy, hyb, hyt, -⟩
      · exact absurd h hn
      · rw [gam_base_eq hG hx hy (hxb.trans hyb.symm), hyt]; decide
  · -- plD (F1a's hook: the slice array `tSLA`, or a `tVAL` object holding a slice, the fee recipient or the withdrawals)
    intro x hx hxb
    obtain ⟨-, -, h3, -⟩ := hew
    rcases hr with ⟨hn, rfl⟩ | ⟨x', hx', hx'b, hcase⟩
    · rcases h3.1 with h | ⟨y, hy, hyb, hyt, -⟩
      · exact absurd h hn
      · rw [gam_base_eq hG hx hy (hxb.trans hyb.symm), hyt]; decide
    · rw [gam_base_eq hG hx hx' (hxb.trans hx'b.symm)]
      rcases hcase with h | h | h <;> (rw [h.1]; decide)
  · -- siD (F1a's hook: the payload record, the two witness slice arrays, or a `tVAL` object holding a slice)
    intro x hx hxb
    obtain ⟨-, -, h3, h5, h7⟩ := hew
    rcases hr with rfl | ⟨hn, rfl⟩ | ⟨hn, rfl⟩ | ⟨x', hx', hx'b, hcase⟩
    · rcases h3 with h | ⟨y, hy, hyb, hyt, -⟩
      · omega
      · rw [gam_base_eq hG hx hy (hxb.trans hyb.symm), hyt]; decide
    · rcases h5.1 with h | ⟨y, hy, hyb, hyt, -⟩
      · exact absurd h hn
      · rw [gam_base_eq hG hx hy (hxb.trans hyb.symm), hyt]; decide
    · rcases h7.1 with h | ⟨y, hy, hyb, hyt, -⟩
      · exact absurd h hn
      · rw [gam_base_eq hG hx hy (hxb.trans hyb.symm), hyt]; decide
    · rw [gam_base_eq hG hx hx' (hxb.trans hx'b.symm)]
      rcases hcase with h | h <;> (rw [h.1]; decide)
  · -- wsD
    intro y hy hyb
    obtain ⟨-, -, hN, hC⟩ := hew
    have hval : ∀ {T : BitVec 64}, NdbSlRef Γ m T b → y.ty < ownBase := by
      rintro T ⟨n, -, -, -, x, hx, hxb, hxt, -⟩
      have hxy : y = x := gam_base_eq hG hy hx (hyb.trans hxb.symm)
      subst hxy
      rw [hxt]; decide
    rcases hr with ⟨a, ha, x, hx, hxb, h1, h2⟩ | hr | hr
    · have hxy : y = x := gam_base_eq hG hy hx (hyb.trans hxb.symm)
      subst hxy
      have hrc : RCell Γ a := by
        rcases ha with ha | ha
        · exact ndbFp_rcell hN ha
        · exact ndbFp_rcell hC ha
      obtain ⟨z, hz, hzt, k, hks, -, rfl, hz1, hz2⟩ := rcell_obj hrc
      have e : z = y := gam_eq hG hz hy hz1 hz2 h1 h2
      rw [← e]; exact recTy_lt hzt
    · exact hval hr
    · exact hval hr
  · exact hr.elim
  · -- teD
    intro x hx hxb
    obtain ⟨-, -, h3⟩ := hew
    obtain ⟨hn, rfl⟩ := hr
    rcases h3 with h | ⟨y, hy, hyb, hyt, -⟩
    · exact absurd h hn
    · rw [gam_base_eq hG hx hy (hxb.trans hyb.symm), hyt]; decide
  · -- nibLeafD
    intro y hy hyb
    have hr' : nibRef 4 Γ m o b := hr
    obtain ⟨-, x, hx, hxb, r, hr8, hxt⟩ := hr'
    have e : y = x := gam_base_eq hG hy hx (hyb.trans hxb.symm)
    subst e; rw [hxt]; show 56 + r < ownBase; unfold ownBase; omega
  · -- nibExtD
    intro y hy hyb
    have hr' : nibRef 4 Γ m o b := hr
    obtain ⟨-, x, hx, hxb, r, hr8, hxt⟩ := hr'
    have e : y = x := gam_base_eq hG hy hx (hyb.trans hxb.symm)
    subst e; rw [hxt]; show 56 + r < ownBase; unfold ownBase; omega
  · -- valLeafD
    intro y hy hyb
    have hr' : valRef tVAL 6 Γ m o b := hr
    obtain ⟨-, x, hx, hxb, hxt, -⟩ := hr'
    have e : y = x := gam_base_eq hG hy hx (hyb.trans hxb.symm)
    subst e; rw [hxt]; decide
  · -- valBrD
    intro y hy hyb
    have hr' : valRef tVAL 20 Γ m o b := hr
    obtain ⟨-, x, hx, hxb, hxt, -⟩ := hr'
    have e : y = x := gam_base_eq hG hy hx (hyb.trans hxb.symm)
    subst e; rw [hxt]; decide
  all_goals exact hr.elim

/-- An owner-encoded type whose owner address lies in scratch. -/
def ScratchOwn (t : Nat) : Prop := ownBase ≤ t ∧ heapEnd ≤ t - ownBase

instance (t : Nat) : Decidable (ScratchOwn t) := by unfold ScratchOwn; infer_instance

/-- **No kept heap object depends on a scratch-owned array.** -/
theorem refGR_not_own {Γ : Gam} {s : State σ} {p : Ptrs} (hL : Layout guestC p Γ) {o : Obj}
    (ho : o ∈ Γ) (hw : (Hooks.guestHooksR (σ := σ)).wf Γ s o) (hheap : (guestC.ty o.ty).region = .heap) (hob : o.base.toNat < heapEnd)
    {x : Obj} (hx : x ∈ Γ) (hxo : x ≠ o) (hxs : ScratchOwn x.ty) (href : refGR Γ s o x.base) : False := by
  have hG := gamOK_of_layout hL
  have hw0 : gwfJL Γ s o := hw.1
  have hwJ : gwfJ Γ s o := hw0.1
  have hwg : gwf Γ s o := hwJ.1
  have hlt : x.ty < ownBase → False := fun h => by have := hxs.1; omega
  rcases href with href | ⟨e, he, het, hr⟩
  · rcases href with href | ⟨hlt', hb⟩
    · rcases href with href | ⟨hj, hjg, n, hn, i, hi, hbb⟩
      · cases hk : hkOf o.ty with
        | ev =>
          have h1 := hkOf_ev hk
          rw [h1] at hheap
          exact absurd hheap (by decide)
        | tab =>
          simp only [refG, hk] at href
          have hwt : tabW Γ s o := (gwf_tab hk).1 hwg
          rcases href with ⟨y, hy, hyb, hown, -⟩ | ⟨hsc, hlv⟩
          · obtain rfl : x = y := (base_unique hL hy hx hyb).symm
            rcases hown with h | h | ⟨h1, h2⟩
            · exact hxo (base_unique hL hx ho h)
            · have h3 : x.ty - ownBase = o.base.toNat := by rw [h]; unfold tOwn; omega
              have := hxs.2
              omega
            · exact hlt (by rw [h1]; decide)
          · obtain ⟨t', ht', hr⟩ := valK_heap hsc
            have hf := hwt.2.2.2.2.1 x.base hlv
            rw [ht'] at hf
            obtain ⟨z, hz, hzb, hzt⟩ := hf
            obtain rfl : x = z := (base_unique hL hz hx hzb).symm
            exact hlt (hzt ▸ valK_lt_own (hkOf_tab hk) ht')
        | none => simp [refG, hk] at href
      · have hjr : jrW Γ s o := hwJ.2 hj
        obtain ⟨-, -, n', c, hn', -, -, -, -, he⟩ := hjr hjg
        rw [hn] at hn'
        cases hn'
        obtain ⟨y, hyΓ, hyb, hyk, hys, ⟨z, hzΓ, hzb, hzt, -⟩, hv⟩ := he i hi
        rcases hbb with hb | hb | ⟨hf, w, hwΓ, hwb, hwk, hb⟩
        · obtain rfl : x = y := (base_unique hL hyΓ hx (hyb.trans hb.symm)).symm
          exact hlt (hdr_lt_own _ (hkOf_tab hyk))
        · obtain rfl : x = z := (base_unique hL hzΓ hx (hzb.trans hb.symm)).symm
          exact hlt (by rw [hzt]; decide)
        · obtain rfl : w = y := base_unique hL hwΓ hyΓ (hwb.trans hyb.symm)
          obtain ⟨t', ht', hr⟩ := valK_heap hwk
          have hfit := hv hf
          rw [ht'] at hfit
          obtain ⟨v, hvΓ, hvb, hvt⟩ := hfit
          obtain rfl : x = v := (base_unique hL hvΓ hx (hvb.trans hb.symm)).symm
          exact hlt (hvt ▸ valK_lt_own (hkOf_tab hyk) ht')
    · obtain ⟨-, -, -, -, -, y, hy, hyb, hyt, -⟩ := hw0.2 hlt'
      obtain rfl : x = y := (base_unique hL hy hx (hyb.trans hb.symm)).symm
      rcases hyt with h | ⟨h, -⟩
      · exact hlt (by rw [h]; decide)
      · exact hlt (by rw [h]; decide)
  · obtain ⟨-, -, hew⟩ := hw.2 e he het
    exact hlt (recRef_lt he hL ho het hew hr x hx rfl)


def ownPtrsB (C : Cfg) : Bool := C.T.all fun d => d.fixed.all fkLtB && fkLtB d.rest

theorem ownPtrs_of {C : Cfg} (h : ownPtrsB C = true) : ∀ t k, fkLtB ((C.ty t).slot k) = true := by
  intro t k
  unfold Cfg.ty TyD.slot
  simp only [List.getD_eq_getElem?_getD]
  cases hget : C.T[t]? with
  | none => rfl
  | some d =>
    simp only [Option.getD_some]
    have hd := List.all_eq_true.mp h d (List.mem_of_getElem? hget)
    simp only [Bool.and_eq_true, List.all_eq_true] at hd
    cases hk : d.fixed[k]? with
    | none => exact hd.2
    | some f => exact hd.1 f (List.mem_of_getElem? hk)

theorem ownPtrs_guest : ∀ t k, fkLtB ((guestC.ty t).slot k) = true := ownPtrs_of (by decide)

theorem gtLt_guest : ∀ g k, guestC.GT.lookup g = some k → fkLtB k = true := by
  have h : guestC.GT.all (fun p => fkLtB p.2) = true := by decide
  intro g k hk
  exact List.all_eq_true.mp h _ (lookup_mem_gt hk)

theorem fits_shrink_own {Γ Γs : Gam} {k : FK} {v : BitVec 64} (hk : fkLtB k = true)
    (hdrop : ∀ o' ∈ Γ, o' ∉ Γs → ownBase ≤ o'.ty) (h : Fits Γ k v) : Fits Γs k v := by
  cases k with
  | scalar => trivial
  | prot => trivial
  | bnd => exact h
  | ptr t =>
    obtain ⟨o', ho', hb, ht⟩ := h
    by_cases hin : o' ∈ Γs
    · exact ⟨o', hin, hb, ht⟩
    · simp only [fkLtB, decide_eq_true_eq] at hk
      have := hdrop o' ho' hin
      omega
  | nptr t =>
    rcases h with h | ⟨o', ho', hb, ht⟩
    · exact Or.inl h
    · by_cases hin : o' ∈ Γs
      · exact Or.inr ⟨o', hin, hb, ht⟩
      · simp only [fkLtB, decide_eq_true_eq] at hk
        have := hdrop o' ho' hin
        omega
  | uptr ts =>
    rcases h with h | ⟨o', ho', hb, ht⟩
    · exact Or.inl h
    · by_cases hin : o' ∈ Γs
      · exact Or.inr ⟨o', hin, hb, ht⟩
      · simp only [fkLtB, List.all_eq_true, decide_eq_true_eq] at hk
        have := hk _ ht
        have := hdrop o' ho' hin
        omega

/-- **Dropping the scratch-owned arrays** from a heap-only typing keeps `G`. -/
theorem G_dropOwn {Γh : Gam} {s : State σ} (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γh s) (hheap : ∀ o ∈ Γh, (guestC.ty o.ty).region = .heap) :
    G guestC (Hooks.guestHooksR (σ := σ)) (Γh.filter fun o => decide (¬ ScratchOwn o.ty)) s := by
  have hG0 := hG
  obtain ⟨p, hp, hord, hL, hF, -, hGl, hW⟩ := hG0
  let Γs := Γh.filter fun o => decide (¬ ScratchOwn o.ty)
  have hmem : ∀ {o : Obj}, o ∈ Γs ↔ o ∈ Γh ∧ ¬ ScratchOwn o.ty := by
    intro o
    simp [Γs, List.mem_filter]
  have hsub : ∀ o ∈ Γs, o ∈ Γh := fun o ho => (hmem.mp ho).1
  have hnd' : Γs.Nodup := (layout_nodup hL).filter _
  have hdrop : ∀ o' ∈ Γh, o' ∉ Γs → ownBase ≤ o'.ty := by
    intro o' ho' hn
    by_contra hlt
    exact hn (hmem.mpr ⟨ho', fun h => hlt h.1⟩)
  have hFs : Fields guestC Γs s.memory := fun o ho k hk =>
    fits_shrink_own (ownPtrs_guest _ _) hdrop (hF o (hsub o ho) k hk)
  have hGls : Globs guestC Γs s := by
    intro g k hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    exact ⟨v, hv, fits_shrink_own (gtLt_guest g k hk) hdrop hf⟩
  refine G_shrink hG hsub hnd' hFs hGls Hooks.guestHooksR_shrinkR ?_
  intro o ho x hx href
  obtain ⟨ho', hot⟩ := hmem.mp ho
  refine hmem.mpr ⟨hx, fun hxs => ?_⟩
  have hob : o.base.toNat < heapEnd := by
    have h1 := (Struct.obj_bounds hord hL ho').2.2.1 (hheap o ho')
    have hpos := (hL.1 o ho').2.2.1
    have h2 := hord.2.1
    simp only [Obj.hi, Obj.lo] at h1 hpos
    omega
  exact refGR_not_own hL ho' (hW o ho') (hheap o ho') hob hx (fun e => hot (e ▸ hxs)) hxs href


/-- The heap objects that are not scratch-owned arrays. -/
abbrev keepG (Γ : Gam) : Gam :=
  (Γ.filter fun o => (guestC.ty o.ty).region == .heap).filter fun o => decide (¬ ScratchOwn o.ty)

theorem mem_keepG {Γ : Gam} {o : Obj} :
    o ∈ keepG Γ ↔ o ∈ Γ ∧ (guestC.ty o.ty).region = .heap ∧ ¬ ScratchOwn o.ty := by
  simp only [keepG, List.mem_filter, beq_iff_eq, decide_eq_true_eq]
  tauto

theorem ownerHeap_keepG (Γ : Gam) : OwnerHeap (keepG Γ) := by
  intro o ho h
  have := (mem_keepG.mp ho).2.2
  unfold ScratchOwn at this
  omega

/-- **`G` for the heap objects that are not scratch-owned arrays** (and `OwnerHeap` of that typing). -/
theorem G_keepOwnerHeap {Γ : Gam} {s : State σ} (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ s)
    (hev : ∃ e, gword s nmEv = some e ∧ e.toNat < nullMax) (hcc : ∃ c, gword s nmCC = some c ∧ c.toNat < nullMax) :
    G guestC (Hooks.guestHooksR (σ := σ)) (keepG Γ) s ∧ OwnerHeap (keepG Γ) := by
  refine ⟨?_, ownerHeap_keepG Γ⟩
  have h1 := Aw.G_heapOnly Hooks.relCfg_guestR Hooks.drvCfg_guestHooksR (by decide) hG hev hcc
  exact G_dropOwn h1 (fun o ho => by simpa [List.mem_filter] using (List.mem_filter.mp ho).2)

end InitECandidate.Solver.MemSafe.Ptx

#print axioms InitECandidate.Solver.MemSafe.Ptx.G_keepOwnerHeap
#print axioms InitECandidate.Solver.MemSafe.Ptx.G_dropOwn
#print axioms InitECandidate.Solver.MemSafe.Ptx.refGR_not_own
