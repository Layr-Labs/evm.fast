import InitECandidate.Solver.MemSafe.HtabEntries.LstPush

/-!
# `lst_new_scratch(8, 4)` under the list hook (the frame-logs constructor)

```
fun 1 lst_new_scratch(1 esz, 1 cap) {
  var 1 l = scratch_alloc(24); var 1 p = scratch_alloc(esz * cap);
  st l + 0, p; st l + 8, 0; st l + 16, cap; return l; }
```

A return adds the array `⟨q, tLSTAs, l - q⟩` (it covers the 32-byte block and ends at the header:
scratch grows down, so everything between the second block and the header is fresh) and the header
`⟨l, tLSTs, 24⟩` to `Γ`, with `PTR = q`, `N = 0`, `CAP = 4`: the list hook holds (`LstOK`), so
`LstHooks.make` gives the header's hook. No `prot` cell of `Γ` is written.

* **`sumSpec_lst_new_scratchL`**: the `SumSpecA` with the shape of `Frames.lstNew_spec`
  (Pre `vs = [8, 4]`, PW `∅`, Q `LstQL`), for any hook family with `LstHooks` (no trivial-hook
  hypothesis on `tLSTs`);
* **`csumm_lst_new_scratchL`**: the fold entry `⟨[.eq 8, .eq 4], [fits (ptr tLSTs)], [], true⟩`,
  caps `[]`; `lstNewScratchTabL`, `lstNewScratchTabL_sound`.
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def lnsBody : ProgHOL 64 :=
  .decCall (nm "l") .one (nm "scratch_alloc") [cw 24]
    (.decCall (nm "p") .one (nm "scratch_alloc") [.panop .mul [lv (nm "esz"), lv (nm "cap")]]
      (.seq (lpSt 0 (lv (nm "p")))
        (.seq (lpSt 8 (cw 0))
          (.seq (lpSt 16 (lv (nm "cap"))) (.return (lv (nm "l")))))))

theorem entry_lst_new_scratchL : fnEntry Guest.Software.guestFn_lst_new_scratch =
    (nm "lst_new_scratch", [(nm "esz", .one), (nm "cap", .one)], lnsBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_lst_new_scratchL : guestCode (nm "lst_new_scratch") =
    some ([(nm "esz", .one), (nm "cap", .one)], lnsBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 409) (by decide)) ⟨_, rfl⟩
    entry_lst_new_scratchL

/-- What a return of `lst_new_scratch(8, 4)` built. -/
def LstQL (Γ0 : Gam) (v : ValueHOL 64) (t : State σ) (Γ' : Gam) : Prop :=
  ∃ l q : BitVec 64, v = .val (.word l) ∧ q.toNat + 32 ≤ l.toNat ∧
    Γ' = Γ0 ++ [⟨q, tLSTAs, l.toNat - q.toNat⟩] ++ [⟨l, tLSTs, 24⟩] ∧
    rd t.memory (l + BitVec.ofNat 64 0) = q ∧ rd t.memory (l + BitVec.ofNat 64 8) = 0 ∧
    rd t.memory (l + BitVec.ofNat 64 16) = 4

section body
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- The post of the body (returns only). -/
def LnsQ (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (r : Option (PanSemResultExact 64))
    (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ Γ', Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ' t ∧
    LstQL Γ0 v t Γ'

theorem lnsQ_locals (hH : HooksLawful guestC H) (r : Option (PanSemResultExact 64)) (t : State σ)
    (L : HolFiniteMapExact MlS (ValueHOL 64)) (h : LnsQ H Γ0 s0 p0 r t) :
    LnsQ H Γ0 s0 p0 r { t with locals := L } := by
  intro v hv
  obtain ⟨Γ', hT, hq⟩ := h v hv
  exact ⟨Γ', Struct.trk_congr hH hT rfl rfl rfl rfl, hq⟩

theorem lns_hoare (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hLH : LstHooks H)
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    (hE : s0.locals.lookup (nm "esz") = some (.val (.word 8)))
    (hC : s0.locals.lookup (nm "cap") = some (.val (.word 4))) :
    Hoare σ X (fun u => u = s0) lnsBody (LnsQ H Γ0 s0 p0) := by
  have hH := hF.hH
  have hA : Struct.AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have hse : scratchEnd < 2 ^ 32 := hse32
  unfold lnsBody
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (allocSpec_scratch_alloc hF.hX) (Frames.funSpec_dom _))
    (lnsQ_locals hH) fun s _ hs vs hvs callee v st ⟨hAl, hd, hbe⟩ _ _ => ?_
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
  have hE1 : u1.locals.lookup (nm "esz") = some (.val (.word 8)) := (lk_set_ne _ _ (by decide)).trans hE
  have hC1 : u1.locals.lookup (nm "cap") = some (.val (.word 4)) := (lk_set_ne _ _ (by decide)).trans hC
  have hl1 : u1.locals.lookup (nm "l") = some (.val (.word l)) := lk_set_self _ _ _
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (allocSpec_scratch_alloc hF.hX) (Frames.funSpec_dom _))
    (lnsQ_locals hH) fun s' _ hs' vs hvs callee v st2 ⟨hAl2, hd2, hbe2⟩ _ _ => ?_
  subst s'
  rw [evs_cons (ev_mul2 (lp_ev_lv hE1) (lp_ev_lv hC1)) evs_nil] at hvs
  cases hvs
  have hpe1 : ptrsOf (callEntryStateHOLFinite u1 callee) = some p1 :=
    (Frames.ptrsOf_congr rfl).trans hp1
  obtain ⟨hm2, hgl2, p2, hp2, hord2, hmo2, hret2⟩ := hAl2 (by simp [Good]) _ p1 rfl hpe1 hord1
  obtain ⟨q, rfl, hq8, hlive2, hna2⟩ := hret2 _ rfl
  have h32 : ((8 : BitVec 64) * (4 : BitVec 64)).toNat = 32 := rfl
  rw [h32] at hlive2 hna2
  have hT2 := Struct.trk_alloc hH hA hT1' rfl rfl hpe1 hm2 hgl2 hp2 hord2 hmo2 hd2 hbe2
  set u2 := setVarHOLFinite (nm "p") (.val (.word q)) { st2 with locals := u1.locals } with hu2
  have hT2' : Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u2 :=
    Struct.trk_congr hH hT2 rfl rfl rfl rfl
  have hl2 : u2.locals.lookup (nm "l") = some (.val (.word l)) := (lk_set_ne _ _ (by decide)).trans hl1
  have hq2 : u2.locals.lookup (nm "p") = some (.val (.word q)) := lk_set_self _ _ _
  have hc2 : u2.locals.lookup (nm "cap") = some (.val (.word 4)) := (lk_set_ne _ _ (by decide)).trans hC1
  have hpu2 : ptrsOf u2 = some p2 := (Frames.ptrsOf_congr rfl).trans hp2
  -- the scratch geometry: `q + 32 ≤ sp₁ ≤ l`, `l + 24 ≤ sp₀`
  obtain ⟨m11, m12, m13⟩ := hmo1
  obtain ⟨m21, m22, m23⟩ := hmo2
  obtain ⟨b1, b2, b3, b4, b5, -, -, -⟩ := hord0
  obtain ⟨c1, c2, c3, c4, c5, -, -, -⟩ := hord1
  obtain ⟨d1, d2, d3, d4, d5, -, -, -⟩ := hord2
  have hl1a := hlive1.1
  have hl1b := hlive1.2
  have hl2a := hlive2.1
  have hl2b := hlive2.2
  have hq32 : q.toNat + 32 ≤ p1.sp := by
    by_contra hc
    by_cases hqs : q.toNat ≤ p1.sp
    · have := hna2 p1.sp hqs (by omega)
      unfold Ptrs.Allocated at this
      omega
    · have := hna2 q.toNat (le_refl _) (by omega)
      unfold Ptrs.Allocated at this
      omega
  have hl24 : l.toNat + 24 ≤ p0.sp := by
    by_contra hc
    by_cases hls : p0.sp ≤ l.toNat
    · have := hna1 l.toNat (le_refl _) (by omega)
      unfold Ptrs.Allocated at this
      omega
    · have := hna1 p0.sp (by omega) (by omega)
      unfold Ptrs.Allocated at this
      omega
  have hna0 : ∀ a : Nat, q.toNat ≤ a → a < l.toNat + 24 → ¬ p0.Allocated a := by
    intro a h1 h2 hal
    unfold Ptrs.Allocated at hal
    unfold heapBase heapEnd at *
    omega
  have hnio : ∀ a : Nat, q.toNat ≤ a → a < l.toNat + 24 → ¬ InObj Γ0 a :=
    fun a h1 h2 hin => hna0 a h1 h2 (Helpers.allocated_of_inObj hL0 hin)
  have hlt : ∀ k, k < 24 → (l + BitVec.ofNat 64 k).toNat = l.toNat + k := fun k hk => by
    rw [BitVec.toNat_add, toNat_ofNat_small (by omega), Nat.mod_eq_of_lt (by omega)]
  have hst : ∀ (u : State σ) (k : Nat), k < 24 →
      Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u → ∀ w,
        Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0
          { u with memory := Spec.Inv.upd u.memory (l + BitVec.ofNat 64 k) w } := by
    intro u k hk hT w
    refine trk_tmpI hH hT ?_ ?_ w
    · rw [hlt k hk]; exact hnio _ (by omega) (by omega)
    · rw [hlt k hk]; exact hna0 _ (by omega) (by omega)
  have hne : ∀ i j, i < 24 → j < 24 → i ≠ j → l + BitVec.ofNat 64 i ≠ l + BitVec.ofNat 64 j := by
    intro i j hi hj hij h
    have := congrArg BitVec.toNat h
    rw [hlt i hi, hlt j hj] at this
    omega
  -- the three stores
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
      rd u.memory (l + BitVec.ofNat 64 8) = 0 ∧ rd u.memory (l + BitVec.ofNat 64 16) = 4) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine Spec.Inv.hoare_store_w (fun _ => l + BitVec.ofNat 64 16) (fun _ => 4) ?_ ?_ ?_
    · intro u _ ⟨_, ⟨hlu, _, _⟩, _⟩ w hw
      rw [ev_add2 (lp_ev_lv (by rw [hlu]; exact hl2)) (ev_cw _ 16)] at hw
      cases hw; rfl
    · intro u _ ⟨_, ⟨hlu, _, _⟩, _⟩ v hv
      rw [lp_ev_lv (by rw [hlu]; exact hc2)] at hv
      cases hv; rfl
    · intro u _ ⟨_, ⟨hlu, hgu, hTu⟩, h0, h8⟩
      refine ⟨rfl, ⟨hlu, hgu, hst u 16 (by omega) hTu 4⟩, ?_, ?_, rd_iupd_self _ _ _⟩
      · rw [rd_iupd_ne (hne 0 16 (by omega) (by omega) (by omega))]; exact h0
      · rw [rd_iupd_ne (hne 8 16 (by omega) (by omega) (by omega))]; exact h8
  -- the return: the array and the header join `Γ`
  refine hoare_return fun t _ ⟨_, ⟨hlt', hgt, hTt⟩, h0, h8, h16⟩ v hv w hw => ?_
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
  subst hw
  rw [show ev t (lv (nm "l")) = t.locals.lookup (nm "l") from rfl, hlt', hl2] at hv
  cases hv
  have hpt : ptrsOf (emptyLocalsHOLFinite t) = some p2 := by
    rw [show ptrsOf (emptyLocalsHOLFinite t) = ptrsOf u2 from Frames.ptrsOf_congr hgt]; exact hpu2
  have hTe : Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 (emptyLocalsHOLFinite t) :=
    Struct.trk_congr hH hTt rfl rfl rfl rfl
  set arr : Obj := ⟨q, tLSTAs, l.toNat - q.toNat⟩ with harr
  set hdr : Obj := ⟨l, tLSTs, 24⟩ with hhdr
  have hT3 := trk_addObjI (x := arr) hH hM hTe hpt hq8
    (by show (l.toNat - q.toNat) % 8 = 0; omega) (by show 0 < l.toNat - q.toNat; omega)
    (by show 8 ≤ l.toNat - q.toNat; omega)
    (by show p2.sp ≤ q.toNat ∧ q.toNat + (l.toNat - q.toNat) ≤ scratchEnd; omega)
    (fun a (h1 : q.toNat ≤ a.toNat) (h2 : a.toNat < q.toNat + (l.toNat - q.toNat)) => by
      unfold Fresh; right; right; constructor <;> omega)
    (fun a ⟨(h1 : q.toNat ≤ a.toNat), (h2 : a.toNat < q.toNat + (l.toNat - q.toNat))⟩ hio =>
      hnio _ h1 (by omega) hio) (fun k => lstas_prot k) (by show guestC.tags.lookup tLSTAs = none; decide)
    (hLH.arr _ _ _ (Or.inr rfl))
  have hT4 := trk_addObjLL (x := hdr) hM hT3 hpt hl8 (by show (24 : Nat) % 8 = 0; rfl)
    (by show 0 < 24; omega) (by show (guestC.ty tLSTs).minSz ≤ 24; decide)
    (by show p2.sp ≤ l.toNat ∧ l.toNat + 24 ≤ scratchEnd; omega)
    (fun a (h1 : l.toNat ≤ a.toNat) (h2 : a.toNat < l.toNat + 24) => by
      unfold Fresh; right; right; constructor <;> omega)
    (fun a ⟨(h1 : l.toNat ≤ a.toNat), (h2 : a.toNat < l.toNat + 24)⟩ ⟨o, ho, hlo, hhi⟩ => by
      rcases List.mem_append.mp ho with ho | ho
      · exact hnio _ (by omega) h2 ⟨o, ho, hlo, hhi⟩
      · simp only [List.mem_singleton] at ho
        subst ho
        have : a.toNat < q.toNat + (l.toNat - q.toNat) := hhi
        omega)
    (fun k => lsts_prot k) (by show guestC.tags.lookup tLSTs = none; decide)
    (fun p hLay => hLH.make _ _ hdr (by show tLSTs ∈ lstTys; decide) ⟨List.mem_append_right _ (List.mem_singleton_self _),
      gamOK_of_layout hLay, by show l.toNat + 24 ≤ scratchEnd; omega,
      by show (rd t.memory (l + BitVec.ofNat 64 8)).toNat ≤ (rd t.memory (l + BitVec.ofNat 64 16)).toNat
         rw [h8, h16]; decide,
      by show 0 < (rd t.memory (l + BitVec.ofNat 64 16)).toNat
         rw [h16]; decide,
      arr, List.mem_append_left _ (List.mem_append_right _ (List.mem_singleton_self _)),
      h0.symm, Or.inr ⟨rfl, by show q.toNat + (l.toNat - q.toNat) = l.toNat; omega⟩,
      by show lstE tLSTs * (rd t.memory (l + BitVec.ofNat 64 16)).toNat ≤ l.toNat - q.toNat
         rw [h16]; show 8 * 4 ≤ _; omega⟩)
  exact ⟨_, hT4, l, q, rfl, by omega, rfl, h0, h8, h16⟩

end body

/-- **`lst_new_scratch(8, 4)` under the list hook**: the `Frames.lstNew_spec` shape, for any hook
family with `LstHooks`. -/
theorem sumSpec_lst_new_scratchL {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hLH : LstHooks H) :
    SumSpecA σ X guestC H (nm "lst_new_scratch") ⟨[.any, .any], [.fits (.ptr tLSTs)], [], true⟩
      (fun vs _ _ => vs = [.val (.word 8), .val (.word 4)]) (fun _ _ _ _ => False)
      (fun _ _ Γ r t Γ' => ∀ v, r = .returned v → LstQL Γ v t Γ') := by
  refine sumSpecA_of_returns (noExc_lst_new_scratch hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, B, rfl, -, -, hA, hB⟩ := lookupCode_two code_lst_new_scratchL (by decide) hl'
  simp only [List.cons.injEq, and_true] at hpre
  obtain ⟨rfl, rfl⟩ := hpre
  obtain ⟨p0, hp0, -⟩ := hargs
  have hE : s0.locals.lookup (nm "esz") = some (.val (.word 8)) := by rw [hloc]; exact hA
  have hC : s0.locals.lookup (nm "cap") = some (.val (.word 4)) := by rw [hloc]; exact hB
  have H' := lns_hoare hF hM hLH hG0 hp0 hE hC s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H'
  obtain ⟨Γ', hT, hq⟩ := H' v rfl
  have hret : ∀ pf, ptrsOf (evaluateHOLFiniteState s0 lnsBody).2 = some pf → ∀ w, r = .returned w →
      RetOK Γ' p0 pf [.val (.word 8), .val (.word 4)] [.fits (.ptr tLSTs)] w := by
    intro pf _ w hw
    rw [hv] at hw
    cases hw
    obtain ⟨l, q, rfl, -, hΓ, -⟩ := hq
    intro i rt w' hi hfl
    match i, hi with
    | 0, hi =>
      simp only [List.getElem?_cons_zero, Option.some.injEq] at hi
      subst hi
      simp only [flattenHOL, List.getElem?_cons_zero, Option.some.injEq, HolWordLab.word.injEq] at hfl
      subst hfl
      exact ⟨⟨l, tLSTs, 24⟩, by rw [hΓ]; simp, rfl, rfl⟩
    | _ + 1, hi => simp at hi
  obtain ⟨p', hc⟩ := Struct.trk_sumCore (sg := ⟨[.any, .any], [.fits (.ptr tLSTs)], [], true⟩)
    (PWs := fun a => ProtCell guestC Γ0 a ∧ False) (vs := [.val (.word 8), .val (.word 4)]) (r := r)
    hT hp0 (fun _ h => h.elim) (fun h => by cases h) hret
  exact ⟨Γ', p0, p', hc, fun w hw => by rw [hv] at hw; cases hw; exact hq⟩

/-- **The `lst_new_scratch(8, 4)` fold entry** under the list hook. -/
theorem csumm_lst_new_scratchL {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hLH : LstHooks H) :
    CSumm σ X guestC H (nm "lst_new_scratch") ⟨[.eq 8, .eq 4], [.fits (.ptr tLSTs)], [], true⟩ [] := by
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs _
  obtain ⟨p, hp, ha⟩ := hargs
  have hvs := args_eq2 ha
  obtain ⟨Γ', p0, p', ⟨c1, c2, c3, c4, c5, c6, c7, c8, c9, c10⟩, -⟩ :=
    sumSpec_lst_new_scratchL hF hM hLH vs body callee rs hl s hs hloc r hr hg hna Γ hG
      ⟨p, hp, by rw [hvs]; rfl, fun i pt w hpt _ => by
        rcases i with _ | _ | i <;> simp at hpt <;> subst hpt <;> trivial⟩ hvs
  refine ⟨Γ', p0, p', ⟨c1, c2, c3, c4, c5, c6, fun a ha => c7 a fun h => ha ?_, c8, c9, c10⟩, trivial⟩
  rcases h with h | h | h | ⟨-, h⟩
  · exact Or.inl h
  · obtain ⟨i, w, -, h⟩ := h
    rcases h with ⟨n, hn, -⟩ | ⟨j, c, d, x, hj, -⟩
    · rcases i with _ | _ | i <;> simp at hn
    · rcases i with _ | _ | i <;> simp at hj
  · exact Or.inr (Or.inr (Or.inl h))
  · exact h.elim

/-- The `lst_new_scratch` entry (for the base table; not yet merged). -/
def lstNewScratchTabL : CTab :=
  [(nm "lst_new_scratch", ⟨[.eq 8, .eq 4], [.fits (.ptr tLSTs)], [], true⟩, [])]

theorem lstNewScratchTabL_sound {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hLH : LstHooks H) : CTabSound σ X guestC H lstNewScratchTabL := by
  intro f sg cs hm
  simp only [lstNewScratchTabL, List.mem_cons, List.not_mem_nil, or_false, Prod.mk.injEq] at hm
  obtain ⟨rfl, rfl, rfl⟩ := hm
  exact csumm_lst_new_scratchL hF hM hLH

end InitECandidate.Solver.MemSafe.HtabEntries
