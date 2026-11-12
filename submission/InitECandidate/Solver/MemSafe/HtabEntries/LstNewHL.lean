import InitECandidate.Solver.MemSafe.HtabEntries.LstNewScratchL

/-!
# `lst_new` (heap lists) under the list hook

```
fun 1 lst_new(1 esz, 1 cap) {
  var 1 l = alloc(24); var 1 p = alloc(esz * cap);
  st l + 0, p; st l + 8, 0; st l + 16, cap; return l; }
```

For a heap list type `t ∈ lstTys` and a constant capacity `c` with `0 < c`, `lstE t · c < 2^64`, a
return of `lst_new(lstE t, c)` adds the array `⟨p, tLSTAh, lstE t · c⟩` and the header
`⟨l, t, 24⟩` to `Γ` with `PTR = p`, `N = 0`, `CAP = c`: the list hook holds, so `LstHooks.make`
gives the header's hook.

* **`csumm_lst_newL`**: `CSumm … "lst_new" (lnSigL t c) []`,
  `lnSigL t c = ⟨[.eq (lstE t), .eq c], [fits (ptr t)], [], true⟩`;
* `lstNewTabL cs` (the instances `(t, c)` of a list), `lstNewTabL_sound`.

The guest's heap-list constructions are `lst_new(8, 1)`, `lst_new(8, 16)` (block logs, receipt logs:
`tLSTh`), and the BAL lists `lst_new(40, 4)`, `(16, 4)`, `(24, 2)`, `(40, 2)` (their header types
come with the BAL record typing); `lst_new(8, stable_log_cap)` (`process_transaction`) has a
variable capacity and needs a hand proof of the caller.
-/

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The `lst_new` signature for a heap list type `t` and the capacity `c`. -/
def lnSigL (t c : Nat) : Sig := ⟨[.eq (lstE t), .eq c], [.fits (.ptr t)], [], true⟩

/-- What a return of `lst_new(lstE t, c)` built. -/
def LnQL (t : Nat) (Γ0 : Gam) (Cc : BitVec 64) (v : ValueHOL 64) (t' : State σ) (Γ' : Gam) : Prop :=
  ∃ l q : BitVec 64, v = .val (.word l) ∧
    Γ' = Γ0 ++ [⟨q, tLSTAh, lstE t * Cc.toNat⟩] ++ [⟨l, t, 24⟩] ∧
    rd t'.memory (l + BitVec.ofNat 64 0) = q ∧ rd t'.memory (l + BitVec.ofNat 64 8) = 0 ∧
    rd t'.memory (l + BitVec.ofNat 64 16) = Cc

section body
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

def LnQH (H : Hooks σ) (t : Nat) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (Cc : BitVec 64)
    (r : Option (PanSemResultExact 64)) (t' : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ Γ', Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ' t' ∧
    LnQL t Γ0 Cc v t' Γ'

theorem lnQH_locals (hH : HooksLawful guestC H) {t : Nat} {Cc : BitVec 64}
    (r : Option (PanSemResultExact 64)) (u : State σ)
    (L : HolFiniteMapExact MlS (ValueHOL 64)) (h : LnQH H t Γ0 s0 p0 Cc r u) :
    LnQH H t Γ0 s0 p0 Cc r { u with locals := L } := by
  intro v hv
  obtain ⟨Γ', hT, hq⟩ := h v hv
  exact ⟨Γ', Struct.trk_congr hH hT rfl rfl rfl rfl, hq⟩

theorem lnL_hoare (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hLH : LstHooks H)
    {t : Nat} (ht : t ∈ lstTys) (hreg : (guestC.ty t).region = .heap)
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0) {Cc : BitVec 64} (hc0 : 0 < Cc.toNat)
    (hEC : lstE t * Cc.toNat < 2 ^ 64)
    (hE : s0.locals.lookup (nm "esz") = some (.val (.word (BitVec.ofNat 64 (lstE t)))))
    (hC : s0.locals.lookup (nm "cap") = some (.val (.word Cc))) :
    Hoare σ X (fun u => u = s0) lnBody (LnQH H t Γ0 s0 p0 Cc) := by
  have hH := hF.hH
  have hA : Struct.AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  obtain ⟨hE0, hE8, hE64⟩ := lstE_pos _ ht
  have hse : scratchEnd < 2 ^ 32 := hse32
  have hn : (BitVec.ofNat 64 (lstE t) * Cc).toNat = lstE t * Cc.toNat := by
    rw [toNat_mul_small (by rw [toNat_ofNat_small (by omega)]; exact hEC), toNat_ofNat_small (by omega)]
  have hn8 : lstE t * Cc.toNat % 8 = 0 := by rw [Nat.mul_mod, hE8]; simp
  have hnp : 8 ≤ lstE t * Cc.toNat := by
    have h8E : 8 ≤ lstE t := by omega
    have := Nat.mul_le_mul h8E (show 1 ≤ Cc.toNat by omega)
    omega
  unfold lnBody
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (allocSpec_alloc hF.hX) (Frames.funSpec_dom _))
    (lnQH_locals hH) fun s _ hs vs hvs callee v st ⟨hAl, hd, hbe⟩ _ _ => ?_
  subst s
  rw [evs_cons (ev_cw _ 24) evs_nil] at hvs
  cases hvs
  have hpe : ptrsOf (callEntryStateHOLFinite s0 callee) = some p0 :=
    (Frames.ptrsOf_congr rfl).trans hp0
  obtain ⟨hm, hgl, p1, hp1, hord1, hmo1, hret⟩ := hAl (by simp [Good]) _ p0 rfl hpe hord0
  obtain ⟨l, rfl, hl8, hlive1, hna1⟩ := hret _ rfl
  have h24 : (BitVec.ofNat 64 24).toNat = 24 := rfl
  rw [h24] at hlive1 hna1
  have hT1 := Struct.trk_alloc hH hA (Struct.trk_refl (PW := fun _ => False) hG0 hp0) rfl rfl hpe hm
    hgl hp1 hord1 hmo1 hd hbe
  set u1 := setVarHOLFinite (nm "l") (.val (.word l)) { st with locals := s0.locals } with hu1
  have hT1' : Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u1 :=
    Struct.trk_congr hH hT1 rfl rfl rfl rfl
  have hE1 : u1.locals.lookup (nm "esz") = some (.val (.word (BitVec.ofNat 64 (lstE t)))) :=
    (lk_set_ne _ _ (by decide)).trans hE
  have hC1 : u1.locals.lookup (nm "cap") = some (.val (.word Cc)) := (lk_set_ne _ _ (by decide)).trans hC
  have hl1 : u1.locals.lookup (nm "l") = some (.val (.word l)) := lk_set_self _ _ _
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (allocSpec_alloc hF.hX) (Frames.funSpec_dom _))
    (lnQH_locals hH) fun s' _ hs' vs hvs callee v st2 ⟨hAl2, hd2, hbe2⟩ _ _ => ?_
  subst s'
  rw [evs_cons (ev_mul2 (lp_ev_lv hE1) (lp_ev_lv hC1)) evs_nil] at hvs
  cases hvs
  have hpe1 : ptrsOf (callEntryStateHOLFinite u1 callee) = some p1 :=
    (Frames.ptrsOf_congr rfl).trans hp1
  obtain ⟨hm2, hgl2, p2, hp2, hord2, hmo2, hret2⟩ := hAl2 (by simp [Good]) _ p1 rfl hpe1 hord1
  obtain ⟨q, rfl, hq8, hlive2, hna2⟩ := hret2 _ rfl
  rw [hn] at hlive2 hna2
  have hT2 := Struct.trk_alloc hH hA hT1' rfl rfl hpe1 hm2 hgl2 hp2 hord2 hmo2 hd2 hbe2
  set u2 := setVarHOLFinite (nm "p") (.val (.word q)) { st2 with locals := u1.locals } with hu2
  have hT2' : Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u2 :=
    Struct.trk_congr hH hT2 rfl rfl rfl rfl
  have hl2 : u2.locals.lookup (nm "l") = some (.val (.word l)) := (lk_set_ne _ _ (by decide)).trans hl1
  have hq2 : u2.locals.lookup (nm "p") = some (.val (.word q)) := lk_set_self _ _ _
  have hc2 : u2.locals.lookup (nm "cap") = some (.val (.word Cc)) := (lk_set_ne _ _ (by decide)).trans hC1
  have hpu2 : ptrsOf u2 = some p2 := (Frames.ptrsOf_congr rfl).trans hp2
  obtain ⟨m11, m12, m13⟩ := hmo1
  obtain ⟨m21, m22, m23⟩ := hmo2
  obtain ⟨b1, b2, b3, b4, b5, -, -, -⟩ := hord0
  obtain ⟨c1, c2, c3, c4, c5, -, -, -⟩ := hord1
  obtain ⟨d1, d2, d3, d4, d5, -, -, -⟩ := hord2
  have hl1a := hlive1.1
  have hl1b := hlive1.2
  have hl2a := hlive2.1
  have hl2b := hlive2.2
  -- the blocks: `[l, l + 24)` and `[q, q + n)` were unallocated at entry and are disjoint
  have hql : p1.hp ≤ q.toNat := by
    have := hna2 q.toNat (le_refl _) (by omega)
    unfold Ptrs.Allocated at this
    omega
  have hlh : p0.hp ≤ l.toNat := by
    have := hna1 l.toNat (le_refl _) (by omega)
    unfold Ptrs.Allocated at this
    omega
  have hnio1 : ∀ a : Nat, l.toNat ≤ a → a < l.toNat + 24 → ¬ InObj Γ0 a :=
    fun a h1 h2 hin => hna1 a h1 h2 (Helpers.allocated_of_inObj hL0 hin)
  have hnio2 : ∀ a : Nat, q.toNat ≤ a → a < q.toNat + lstE t * Cc.toNat → ¬ InObj Γ0 a := by
    intro a h1 h2 hin
    have := Helpers.allocated_of_inObj hL0 hin
    unfold Ptrs.Allocated at this
    unfold heapBase heapEnd at *
    omega
  have hlt : ∀ k, k < 24 → (l + BitVec.ofNat 64 k).toNat = l.toNat + k := fun k hk => by
    rw [BitVec.toNat_add, toNat_ofNat_small (by omega), Nat.mod_eq_of_lt (by unfold heapEnd at *; omega)]
  have hst : ∀ (u : State σ) (k : Nat), k < 24 →
      Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u → ∀ w,
        Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0
          { u with memory := Spec.Inv.upd u.memory (l + BitVec.ofNat 64 k) w } := by
    intro u k hk hT w
    refine trk_tmpI hH hT ?_ ?_ w
    · rw [hlt k hk]; exact hnio1 _ (by omega) (by omega)
    · rw [hlt k hk]; exact hna1 _ (by omega) (by omega)
  have hne : ∀ i j, i < 24 → j < 24 → i ≠ j → l + BitVec.ofNat 64 i ≠ l + BitVec.ofNat 64 j := by
    intro i j hi hj hij h
    have := congrArg BitVec.toNat h
    rw [hlt i hi, hlt j hj] at this
    omega
  refine hoare_pre (P := fun u => u.locals = u2.locals ∧ u.globals = u2.globals ∧
    Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u) ?_ fun u _ hu => by rw [hu]; exact ⟨rfl, rfl, hT2'⟩
  refine hoare_seq (R := fun r u => r = none ∧ (u.locals = u2.locals ∧ u.globals = u2.globals ∧
      Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u) ∧ rd u.memory (l + BitVec.ofNat 64 0) = q) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine Spec.Inv.hoare_store_w (fun _ => l + BitVec.ofNat 64 0) (fun _ => q) ?_ ?_ ?_
    · intro u _ ⟨hlu, _, _⟩ w hw
      rw [ev_add2 (lp_ev_lv (by rw [hlu]; exact hl2)) (ev_cw _ 0)] at hw
      cases hw; rfl
    · intro u _ ⟨hlu, _, _⟩ v hv
      rw [lp_ev_lv (by rw [hlu]; exact hq2)] at hv
      cases hv; rfl
    · intro u _ ⟨hlu, hgu, hTu⟩
      exact ⟨rfl, ⟨hlu, hgu, hst u 0 (by omega) hTu q⟩, rd_iupd_self _ _ _⟩
  refine hoare_seq (R := fun r u => r = none ∧ (u.locals = u2.locals ∧ u.globals = u2.globals ∧
      Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u) ∧ rd u.memory (l + BitVec.ofNat 64 0) = q ∧
      rd u.memory (l + BitVec.ofNat 64 8) = 0) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine Spec.Inv.hoare_store_w (fun _ => l + BitVec.ofNat 64 8) (fun _ => 0) ?_ ?_ ?_
    · intro u _ ⟨_, ⟨hlu, _, _⟩, _⟩ w hw
      rw [ev_add2 (lp_ev_lv (by rw [hlu]; exact hl2)) (ev_cw _ 8)] at hw
      cases hw; rfl
    · intro u _ _ v hv
      rw [ev_cw] at hv
      cases hv; rfl
    · intro u _ ⟨_, ⟨hlu, hgu, hTu⟩, h0⟩
      refine ⟨rfl, ⟨hlu, hgu, hst u 8 (by omega) hTu 0⟩, ?_, rd_iupd_self _ _ _⟩
      rw [rd_iupd_ne (hne 0 8 (by omega) (by omega) (by omega))]
      exact h0
  refine hoare_seq (R := fun r u => r = none ∧ (u.locals = u2.locals ∧ u.globals = u2.globals ∧
      Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u) ∧ rd u.memory (l + BitVec.ofNat 64 0) = q ∧
      rd u.memory (l + BitVec.ofNat 64 8) = 0 ∧ rd u.memory (l + BitVec.ofNat 64 16) = Cc) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine Spec.Inv.hoare_store_w (fun _ => l + BitVec.ofNat 64 16) (fun _ => Cc) ?_ ?_ ?_
    · intro u _ ⟨_, ⟨hlu, _, _⟩, _⟩ w hw
      rw [ev_add2 (lp_ev_lv (by rw [hlu]; exact hl2)) (ev_cw _ 16)] at hw
      cases hw; rfl
    · intro u _ ⟨_, ⟨hlu, _, _⟩, _⟩ v hv
      rw [lp_ev_lv (by rw [hlu]; exact hc2)] at hv
      cases hv; rfl
    · intro u _ ⟨_, ⟨hlu, hgu, hTu⟩, h0, h8⟩
      refine ⟨rfl, ⟨hlu, hgu, hst u 16 (by omega) hTu Cc⟩, ?_, ?_, rd_iupd_self _ _ _⟩
      · rw [rd_iupd_ne (hne 0 16 (by omega) (by omega) (by omega))]; exact h0
      · rw [rd_iupd_ne (hne 8 16 (by omega) (by omega) (by omega))]; exact h8
  refine hoare_return fun t' _ ⟨_, ⟨hlt', hgt, hTt⟩, h0, h8, h16⟩ v hv w hw => ?_
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
  subst hw
  rw [show ev t' (lv (nm "l")) = t'.locals.lookup (nm "l") from rfl, hlt', hl2] at hv
  cases hv
  have hpt : ptrsOf (emptyLocalsHOLFinite t') = some p2 := by
    rw [show ptrsOf (emptyLocalsHOLFinite t') = ptrsOf u2 from Frames.ptrsOf_congr hgt]; exact hpu2
  have hTe : Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 (emptyLocalsHOLFinite t') :=
    Struct.trk_congr hH hTt rfl rfl rfl rfl
  set arr : Obj := ⟨q, tLSTAh, lstE t * Cc.toNat⟩ with harr
  set hdr : Obj := ⟨l, t, 24⟩ with hhdr
  have hT3 := trk_addObjI (x := arr) hH hM hTe hpt hq8 hn8 (by show 0 < lstE t * Cc.toNat; omega)
    (by show 8 ≤ lstE t * Cc.toNat; exact hnp)
    (by show heapBase ≤ q.toNat ∧ q.toNat + lstE t * Cc.toNat ≤ p2.hp; omega)
    (fun a (h1 : q.toNat ≤ a.toNat) (h2 : a.toNat < q.toNat + lstE t * Cc.toNat) => by
      unfold Fresh; left; constructor <;> omega)
    (fun a ⟨(h1 : q.toNat ≤ a.toNat), (h2 : a.toNat < q.toNat + lstE t * Cc.toNat)⟩ hio =>
      hnio2 _ h1 h2 hio) (fun k => lstah_prot k) (by show guestC.tags.lookup tLSTAh = none; decide)
    (hLH.arr _ _ _ (Or.inl rfl))
  have hT4 := trk_addObjLL (x := hdr) hM hT3 hpt hl8 (by show (24 : Nat) % 8 = 0; rfl)
    (by show 0 < 24; omega) (by show (guestC.ty t).minSz ≤ 24; rw [lst_minSz _ ht])
    (by show (guestC.ty t).region.Live p2 l.toNat 24; rw [hreg]; show heapBase ≤ l.toNat ∧ l.toNat + 24 ≤ p2.hp; omega)
    (fun a (h1 : l.toNat ≤ a.toNat) (h2 : a.toNat < l.toNat + 24) => by
      unfold Fresh; left; constructor <;> omega)
    (fun a ⟨(h1 : l.toNat ≤ a.toNat), (h2 : a.toNat < l.toNat + 24)⟩ ⟨o, ho, hlo, hhi⟩ => by
      rcases List.mem_append.mp ho with ho | ho
      · exact hnio1 _ h1 h2 ⟨o, ho, hlo, hhi⟩
      · simp only [List.mem_singleton] at ho
        subst ho
        have : q.toNat ≤ a.toNat := hlo
        omega)
    (fun k => lst_prot _ ht k) (lst_untagged _ ht)
    (fun p hLay => hLH.make _ _ hdr ht ⟨List.mem_append_right _ (List.mem_singleton_self _),
      gamOK_of_layout hLay, by show l.toNat + 24 ≤ scratchEnd; unfold heapEnd at *; omega,
      by show (rd t'.memory (l + BitVec.ofNat 64 8)).toNat ≤ (rd t'.memory (l + BitVec.ofNat 64 16)).toNat
         rw [h8, h16]; show 0 ≤ _; omega,
      by show 0 < (rd t'.memory (l + BitVec.ofNat 64 16)).toNat
         rw [h16]; exact hc0,
      arr, List.mem_append_left _ (List.mem_append_right _ (List.mem_singleton_self _)),
      h0.symm, Or.inl rfl,
      by show lstE t * (rd t'.memory (l + BitVec.ofNat 64 16)).toNat ≤ lstE t * Cc.toNat
         rw [h16]⟩)
  exact ⟨_, hT4, l, q, rfl, rfl, h0, h8, h16⟩

end body

/-- **The heap `lst_new` entry under the list hook**, for a heap list type `t` and capacity `c`. -/
theorem csumm_lst_newL {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hLH : LstHooks H) {t c : Nat} (ht : t ∈ lstTys) (hreg : (guestC.ty t).region = .heap)
    (hc0 : 0 < c) (hEC : lstE t * c < 2 ^ 64) :
    CSumm σ X guestC H (nm "lst_new") (lnSigL t c) [] := by
  have hcn : (BitVec.ofNat 64 c).toNat = c := toNat_ofNat_small (by
    have := (lstE_pos _ ht).1
    have := Nat.le_mul_of_pos_left c this
    omega)
  refine sumSpecA_of_returns (noExc_lst_new hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs _
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, B, rfl, -, -, hA, hB⟩ := lookupCode_two code_lst_new (by decide) hl'
  obtain ⟨p0, hp0, ha⟩ := hargs
  have hvs := args_eq2 ha
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  have hE : s0.locals.lookup (nm "esz") = some (.val (.word (BitVec.ofNat 64 (lstE t)))) := by
    rw [hloc]; exact hA
  have hC : s0.locals.lookup (nm "cap") = some (.val (.word (BitVec.ofNat 64 c))) := by
    rw [hloc]; exact hB
  have H' := lnL_hoare hF hM hLH ht hreg hG0 hp0 (Cc := BitVec.ofNat 64 c) (by rw [hcn]; exact hc0)
    (by rw [hcn]; exact hEC) hE hC s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H'
  obtain ⟨Γ', hT, l, q, hlv, hΓ, -⟩ := H' v rfl
  have hret : ∀ pf, ptrsOf (evaluateHOLFiniteState s0 lnBody).2 = some pf → ∀ w, r = .returned w →
      RetOK Γ' p0 pf [.val (.word (BitVec.ofNat 64 (lstE t))), .val (.word (BitVec.ofNat 64 c))]
        (lnSigL t c).ret w := by
    intro pf _ w hw
    rw [hv] at hw
    cases hw
    subst hlv
    intro i rt w' hi hfl
    match i, hi with
    | 0, hi =>
      simp only [lnSigL, List.getElem?_cons_zero, Option.some.injEq] at hi
      subst hi
      simp only [flattenHOL, List.getElem?_cons_zero, Option.some.injEq, HolWordLab.word.injEq] at hfl
      subst hfl
      exact ⟨⟨l, t, 24⟩, by rw [hΓ]; simp, rfl, rfl⟩
    | _ + 1, hi => simp [lnSigL] at hi
  obtain ⟨p', hc⟩ := Struct.trk_sumCore (sg := lnSigL t c) (PWs := fun a => ProtCell guestC Γ0 a ∧
      CapPW [] s0 Γ0 a) (r := r) hT hp0 (fun _ h => h.elim) (fun h => by simp [lnSigL] at h) hret
  exact ⟨Γ', p0, p', hc, trivial⟩

/-- The heap `lst_new` instances `(t, c)` (for the base table; not yet merged). -/
def lstNewTabL (cs : List (Nat × Nat)) : CTab := cs.map fun tc => (nm "lst_new", lnSigL tc.1 tc.2, [])

theorem lstNewTabL_sound {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hLH : LstHooks H) {cs : List (Nat × Nat)}
    (hcs : ∀ tc ∈ cs, tc.1 ∈ lstTys ∧ (guestC.ty tc.1).region = .heap ∧ 0 < tc.2 ∧
      lstE tc.1 * tc.2 < 2 ^ 64) :
    CTabSound σ X guestC H (lstNewTabL cs) := by
  intro f sg cs' hm
  simp only [lstNewTabL, List.mem_map, Prod.mk.injEq] at hm
  obtain ⟨tc, htc, rfl, rfl, rfl⟩ := hm
  obtain ⟨h1, h2, h3, h4⟩ := hcs tc htc
  exact csumm_lst_newL hF hM hLH h1 h2 h3 h4

/-- The guest's constant heap-list instances with header types today: the block and receipt logs. -/
def lstNewInst : List (Nat × Nat) := [(tLSTh, 1), (tLSTh, 16)]

theorem lstNewInst_ok : ∀ tc ∈ lstNewInst, tc.1 ∈ lstTys ∧ (guestC.ty tc.1).region = .heap ∧
    0 < tc.2 ∧ lstE tc.1 * tc.2 < 2 ^ 64 := by decide

end InitECandidate.Solver.MemSafe.HtabEntries
