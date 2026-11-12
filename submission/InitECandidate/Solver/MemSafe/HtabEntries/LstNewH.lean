import InitECandidate.Solver.MemSafe.HtabEntries.SetK
import InitECandidate.Solver.MemSafe.Hooks.Journal
import InitECandidate.Solver.MemSafe.HtabEntries.JGet

/-!
# `lst_new` (heap lists): a constructor entry with trivial list hooks

```
fun 1 lst_new(1 esz, 1 cap) {
  var 1 l = alloc(24); var 1 p = alloc(esz * cap);
  st l + 0, p; st l + 8, 0; st l + 16, cap; return l; }
```

**`csumm_lst_new`**: `CSumm σ X guestC H "lst_new" lnSig []`, `lnSig = ⟨[any, any], [fits (ptr
tLSTh)], [], true⟩` (= `Sigs0`). A return adds the array `⟨p, tLSTAh, 8 ⌈n / 8⌉⟩` (when
`n = esz · cap mod 2^64 > 0`) and the header `⟨l, tLSTh, 24⟩` to `Γ` (the `lstNew_spec` layout,
both all-`prot`, fresh at entry); no `prot` cell of `Γ` is written. Hypothesis: list objects have
the trivial hook (`lstHooks_guestJ` for the journal family).
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

def lnBody : ProgHOL 64 :=
  .decCall (nm "l") .one (nm "alloc") [cw 24]
    (.decCall (nm "p") .one (nm "alloc") [.panop .mul [lv (nm "esz"), lv (nm "cap")]]
      (.seq (.store (.op .add [lv (nm "l"), cw 0]) (lv (nm "p")))
        (.seq (.store (.op .add [lv (nm "l"), cw 8]) (cw 0))
          (.seq (.store (.op .add [lv (nm "l"), cw 16]) (lv (nm "cap"))) (.return (lv (nm "l")))))))

theorem entry_lst_new : fnEntry Guest.Software.guestFn_lst_new =
    (nm "lst_new", [(nm "esz", .one), (nm "cap", .one)], lnBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_lst_new : guestCode (nm "lst_new") =
    some ([(nm "esz", .one), (nm "cap", .one)], lnBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 408) (by decide)) ⟨_, rfl⟩
    entry_lst_new

theorem xchk_lst_new : xChk htabX false (declPair Guest.Software.guestFn_lst_new).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_lst_new (hX : X.code.lookup = guestCode) : NoExc σ X (nm "lst_new") :=
  noExc_of_pair (noExc_htabX hX) hX (p := declPair Guest.Software.guestFn_lst_new)
    (declPair_valid (List.getElem_mem (n := 408) (by decide)) ⟨_, rfl⟩) xchk_lst_new

def lnSig : Sig := ⟨[.any, .any], [.fits (.ptr tLSTh)], [], true⟩

/-- The array object (none for an empty array). -/
def arrL (q : BitVec 64) (n : Nat) : Gam :=
  if 0 < n then [⟨q, tLSTAh, 8 * ((n + 7) / 8)⟩] else []

/-- The list types have the trivial hook in the journal family. -/
theorem lstHooks_guestJ : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tLSTh ∨ o.ty = tLSTAh →
    (guestHooksJ (σ := σ)).wf Γ s o := by
  intro Γ s o ht
  refine ⟨gwf_none ?_, fun h => ?_⟩
  · rcases ht with h | h <;> rw [h] <;> rfl
  · rcases ht with h' | h' <;> rw [h'] at h <;> exact absurd h (by decide)

section trkx
variable {C : Cfg} {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop}

/-- A write to a cell outside `Γ` that was unallocated at entry. -/
theorem trk_tmpI (hH : HooksLawful C H) {Γ : Gam} {t : State σ} (h : Struct.Trk C H Γ0 s0 p0 PW Γ t)
    {a : BitVec 64} (hna : ¬ InObj Γ a.toNat) (hfa : ¬ p0.Allocated a.toNat) (w : BitVec 64) :
    Struct.Trk C H Γ0 s0 p0 PW Γ { t with memory := Spec.Inv.upd t.memory a w } := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod, hpg, hd, hbe⟩ := h
  refine ⟨p, hp, hm, hx, hnf, G_frame hH hG rfl (fun _ _ _ => rfl) (fun _ _ => rfl) rfl rfl
    (fun b hb => Spec.Inv.upd_ne (fun e => hna (e ▸ hb))), fun b hb => ?_, hpg, hd, hbe⟩
  have hne : b ≠ a := fun e => hb (Or.inr (Or.inl (e ▸ hfa)))
  show Spec.Inv.upd t.memory a w b = s0.memory b
  rw [Spec.Inv.upd_ne hne]
  exact hmod b hb

/-- A fresh, disjoint object with all-`prot` slots joins the typing. -/
theorem trk_addObjI (hH : HooksLawful C H) (hM : HooksMono C H) {Γ : Gam} {t : State σ}
    (h : Struct.Trk C H Γ0 s0 p0 PW Γ t) {x : Obj} {p : Ptrs} (hp : ptrsOf t = some p)
    (hal : x.lo % 8 = 0) (hsz8 : x.size % 8 = 0) (hpos : 0 < x.size)
    (hmin : (C.ty x.ty).minSz ≤ x.size) (hlive : (C.ty x.ty).region.Live p x.lo x.size)
    (hfr : ∀ a : BitVec 64, x.lo ≤ a.toNat → a.toNat < x.hi → Fresh p0 p a)
    (hdisj : ∀ a : BitVec 64, Frames.InO x a → ¬ InObj Γ a.toNat)
    (hpr : ∀ k, (C.ty x.ty).slot k = .prot) (htag : C.tags.lookup x.ty = none)
    (hwf : H.wf (Γ ++ [x]) t x) : Struct.Trk C H Γ0 s0 p0 PW (Γ ++ [x]) t := by
  obtain ⟨p', hp', hm, hx, hnf, hG, hmod, hpg, hd, hbe⟩ := h
  rw [hp] at hp'
  cases hp'
  refine ⟨p, hp, hm, Struct.ext_trans hx (Frames.ext_append Γ x), ?_,
    Frames.G_addObj hH hM hG hal hsz8 hpos hmin (fun q hq => by rw [hp] at hq; cases hq; exact hlive)
      hdisj (fun k _ => by rw [hpr k]; trivial) htag hwf, hmod, hpg, hd, hbe⟩
  intro o ho a h1 h2
  rcases List.mem_append.mp ho with ho | ho
  · rcases hnf o ho a h1 h2 with h' | h'
    · exact Or.inl h'
    · exact Or.inr h'
  · simp only [List.mem_singleton] at ho
    subst ho
    exact Or.inr (hfr a h1 h2)

end trkx

section body
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- The post of the body. -/
def LnQ (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (r : Option (PanSemResultExact 64))
    (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ (Γ' : Gam) (l : BitVec 64),
    Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ' t ∧ v = .val (.word l) ∧ (⟨l, tLSTh, 24⟩ : Obj) ∈ Γ'

theorem lnQ_locals (hH : HooksLawful guestC H) (r : Option (PanSemResultExact 64)) (t : State σ)
    (L : HolFiniteMapExact MlS (ValueHOL 64)) (h : LnQ H Γ0 s0 p0 r t) :
    LnQ H Γ0 s0 p0 r { t with locals := L } := by
  intro v hv
  obtain ⟨Γ', l, hT, hl, hm⟩ := h v hv
  exact ⟨Γ', l, Struct.trk_congr hH hT rfl rfl rfl rfl, hl, hm⟩

theorem ln_hoare (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hlw : ∀ Γ (s : State σ) o, o.ty = tLSTh ∨ o.ty = tLSTAh → H.wf Γ s o)
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0) {E Cc : BitVec 64}
    (hE : s0.locals.lookup (nm "esz") = some (.val (.word E)))
    (hC : s0.locals.lookup (nm "cap") = some (.val (.word Cc))) :
    Hoare σ X (fun u => u = s0) lnBody (LnQ H Γ0 s0 p0) := by
  have hH := hF.hH
  have hA : Struct.AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  unfold lnBody
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (allocSpec_alloc hF.hX) (Frames.funSpec_dom _))
    (lnQ_locals hH) fun s _ hs vs hvs callee v st ⟨hAl, hd, hbe⟩ _ _ => ?_
  subst s
  rw [evs_cons (ev_cw _ 24) evs_nil] at hvs
  cases hvs
  have hpe : ptrsOf (callEntryStateHOLFinite s0 callee) = some p0 := by
    rw [show ptrsOf (callEntryStateHOLFinite s0 callee) = ptrsOf s0 from Frames.ptrsOf_congr rfl]
    exact hp0
  obtain ⟨hm, hgl, p1, hp1, hord1, hmo1, hret⟩ := hAl (by simp [Good]) _ p0 rfl hpe hord0
  obtain ⟨l, rfl, hl8, hlive1, hna1⟩ := hret _ rfl
  have h24 : (BitVec.ofNat 64 24).toNat = 24 := rfl
  rw [h24] at hlive1 hna1
  have hT1 := Struct.trk_alloc hH hA (Struct.trk_refl (PW := fun _ => False) hG0 hp0) rfl rfl hpe hm
    hgl hp1 hord1 hmo1 hd hbe
  set u1 := setVarHOLFinite (nm "l") (.val (.word l)) { st with locals := s0.locals } with hu1
  have hT1' : Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u1 :=
    Struct.trk_congr hH hT1 rfl rfl rfl rfl
  have hE1 : u1.locals.lookup (nm "esz") = some (.val (.word E)) := (lk_set_ne _ _ (by decide)).trans hE
  have hC1 : u1.locals.lookup (nm "cap") = some (.val (.word Cc)) := (lk_set_ne _ _ (by decide)).trans hC
  have hl1 : u1.locals.lookup (nm "l") = some (.val (.word l)) := lk_set_self _ _ _
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (allocSpec_alloc hF.hX) (Frames.funSpec_dom _))
    (lnQ_locals hH) fun s' _ hs' vs hvs callee v st2 ⟨hAl2, hd2, hbe2⟩ _ _ => ?_
  subst s'
  rw [evs_cons (ev_mul2 (Mpt.Leaves.ev_lv' hE1) (Mpt.Leaves.ev_lv' hC1)) evs_nil] at hvs
  cases hvs
  have hpe1 : ptrsOf (callEntryStateHOLFinite u1 callee) = some p1 := by
    rw [show ptrsOf (callEntryStateHOLFinite u1 callee) = ptrsOf st from Frames.ptrsOf_congr rfl]
    exact hp1
  obtain ⟨hm2, hgl2, p2, hp2, hord2, hmo2, hret2⟩ := hAl2 (by simp [Good]) _ p1 rfl hpe1 hord1
  obtain ⟨q, rfl, hq8, hlive2, hna2⟩ := hret2 _ rfl
  have hT2 := Struct.trk_alloc hH hA hT1' rfl rfl hpe1 hm2 hgl2 hp2 hord2 hmo2 hd2 hbe2
  set u2 := setVarHOLFinite (nm "p") (.val (.word q)) { st2 with locals := u1.locals } with hu2
  have hT2' : Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u2 :=
    Struct.trk_congr hH hT2 rfl rfl rfl rfl
  have hl2 : u2.locals.lookup (nm "l") = some (.val (.word l)) := (lk_set_ne _ _ (by decide)).trans hl1
  have hq2 : u2.locals.lookup (nm "p") = some (.val (.word q)) := lk_set_self _ _ _
  have hc2 : u2.locals.lookup (nm "cap") = some (.val (.word Cc)) :=
    (lk_set_ne _ _ (by decide)).trans hC1
  have hpu2 : ptrsOf u2 = some p2 := by
    rw [show ptrsOf u2 = ptrsOf st2 from Frames.ptrsOf_congr rfl]; exact hp2
  -- the header block
  have hle : l.toNat + 24 ≤ heapEnd := by have := hlive1.2; have := hord1.2.1; omega
  have hlt : ∀ k, k < 24 → (l + BitVec.ofNat 64 k).toNat = l.toNat + k := fun k hk => by
    have : heapEnd < 2 ^ 64 := by decide
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : k < 2 ^ 64),
      Nat.mod_eq_of_lt (by omega)]
  have hhd : ∀ k, k < 24 → ¬ InObj Γ0 (l + BitVec.ofNat 64 k).toNat ∧
      ¬ p0.Allocated (l + BitVec.ofNat 64 k).toNat := fun k hk => by
    rw [hlt k hk]
    exact ⟨fun hio => hna1 _ (by omega) (by omega) (Helpers.allocated_of_inObj hL0 hio),
      hna1 _ (by omega) (by omega)⟩
  let P : State σ → Prop := fun u => u.locals = u2.locals ∧ u.globals = u2.globals ∧
    Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u
  refine hoare_pre (P := P) ?_ fun u _ hu => by rw [hu]; exact ⟨rfl, rfl, hT2'⟩
  have step : ∀ {k : Nat} {e : ExpHOL 64} {w : BitVec 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
      {rest : ProgHOL 64}, k < 24 → (∀ u : State σ, u.locals = u2.locals → ev u e = some (.val (.word w))) →
      Hoare σ X P rest Q → Hoare σ X P (.seq (.store (.op .add [lv (nm "l"), cw k]) e) rest) Q := by
    intro k e w Q rest hk he hrest
    refine hoare_seq (R := fun r u => r = none ∧ P u) ?_ (fun _ _ _ hr _ h => absurd h.1 hr)
      (hoare_pre hrest fun _ _ h => h.2)
    refine Inv.hoare_store_w (fun _ => l + BitVec.ofNat 64 k) (fun _ => w) ?_ ?_ ?_
    · intro u _ ⟨hlu, _, _⟩ w' hw'
      rw [ev_add2 (Mpt.Leaves.ev_lv' (by rw [hlu]; exact hl2)) (ev_cw _ k)] at hw'
      cases hw'; rfl
    · intro u _ ⟨hlu, _, _⟩ v' hv'
      rw [he u hlu] at hv'
      exact (Option.some.inj hv').symm
    · intro u _ ⟨hlu, hgu, hTu⟩
      exact ⟨rfl, hlu, hgu, trk_tmpI hH hTu (hhd k hk).1 (hhd k hk).2 w⟩
  refine step (k := 0) (w := q) (by omega) (fun u hlu => Mpt.Leaves.ev_lv' (by rw [hlu]; exact hq2)) ?_
  refine step (k := 8) (w := 0) (by omega) (fun u _ => ev_cw _ 0) ?_
  refine step (k := 16) (w := Cc) (by omega) (fun u hlu => Mpt.Leaves.ev_lv' (by rw [hlu]; exact hc2)) ?_
  -- the return: the array and the header join `Γ`
  refine hoare_return fun t _ ⟨hlt', hgt, hTt⟩ v hv => fun w hw => ?_
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
  subst hw
  rw [show ev t (lv (nm "l")) = t.locals.lookup (nm "l") from rfl, hlt', hl2] at hv
  cases hv
  have hpt : ptrsOf (emptyLocalsHOLFinite t) = some p2 := by
    rw [show ptrsOf (emptyLocalsHOLFinite t) = ptrsOf u2 from Frames.ptrsOf_congr hgt]; exact hpu2
  have hTe : Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 (emptyLocalsHOLFinite t) :=
    Struct.trk_congr hH hTt rfl rfl rfl rfl
  obtain ⟨m11, m12, m13⟩ := hmo1
  obtain ⟨m21, m22, m23⟩ := hmo2
  obtain ⟨b1, b2, b3, b4, b5, b6, -, -⟩ := hord0
  obtain ⟨c1, c2, c3, c4, c5, c6, -, -⟩ := hord1
  obtain ⟨d1, d2, d3, d4, d5, d6, -, -⟩ := hord2
  set n := (E * Cc).toNat with hn
  -- `q ≥ p1.hp` when the array is nonempty
  have hT3 : ∃ Γ1, Γ1 = Γ0 ++ arrL q n ∧
      Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ1 (emptyLocalsHOLFinite t) := by
    by_cases hn0 : 0 < n
    · have hqa := hna2 q.toNat (le_refl _) (by omega)
      unfold Ptrs.Allocated at hqa
      have := hlive2.1
      have := hlive2.2
      refine ⟨_, rfl, ?_⟩
      unfold arrL
      rw [if_pos hn0]
      refine trk_addObjI (x := ⟨q, tLSTAh, 8 * ((n + 7) / 8)⟩) hH hM hTe hpt hq8
        (by show 8 * ((n + 7) / 8) % 8 = 0; omega) (by show 0 < 8 * ((n + 7) / 8); omega)
        (by show (guestC.ty tLSTAh).minSz ≤ 8 * ((n + 7) / 8); show 8 ≤ _; omega)
        (by show heapBase ≤ q.toNat ∧ q.toNat + 8 * ((n + 7) / 8) ≤ p2.hp; omega)
        (fun a (h1 : q.toNat ≤ a.toNat) (h2 : a.toNat < q.toNat + 8 * ((n + 7) / 8)) => by
          unfold Fresh; left; constructor <;> omega)
        (fun a ⟨(h1 : q.toNat ≤ a.toNat), (h2 : a.toNat < q.toNat + 8 * ((n + 7) / 8))⟩ hio => by
          have := Helpers.allocated_of_inObj hL0 hio
          unfold Ptrs.Allocated at this
          omega) (fun _ => rfl) (by show guestC.tags.lookup tLSTAh = none; decide)
        (hlw _ _ _ (Or.inr rfl))
    · refine ⟨_, rfl, ?_⟩
      unfold arrL
      rw [if_neg hn0, List.append_nil]
      exact hTe
  obtain ⟨Γ1, hΓ1, hT3⟩ := hT3
  have hT4 := trk_addObjI (x := ⟨l, tLSTh, 24⟩) hH hM hT3 hpt hl8 (by show (24 : Nat) % 8 = 0; rfl)
    (by show 0 < 24; omega) (by show (guestC.ty tLSTh).minSz ≤ 24; decide)
    (by have := hlive1.1; have := hlive1.2; show heapBase ≤ l.toNat ∧ l.toNat + 24 ≤ p2.hp; omega)
    (fun a (h1 : l.toNat ≤ a.toNat) (h2 : a.toNat < l.toNat + 24) => by
      have := hna1 a.toNat h1 h2
      unfold Fresh; unfold Ptrs.Allocated at this
      have := hlive1.1; have := hlive1.2; left; constructor <;> omega)
    (fun a ⟨(h1 : l.toNat ≤ a.toNat), (h2 : a.toNat < l.toNat + 24)⟩ ⟨o, ho, hlo, hhi⟩ => by
      rw [hΓ1] at ho
      rcases List.mem_append.mp ho with ho | ho
      · exact hna1 _ h1 h2 (Helpers.allocated_of_inObj hL0 ⟨o, ho, hlo, hhi⟩)
      · unfold arrL at ho
        split at ho
        · simp only [List.mem_singleton] at ho
          subst ho
          have hlo' : q.toNat ≤ a.toNat := hlo
          rename_i hn0
          have := hna2 q.toNat (le_refl _) (by omega)
          unfold Ptrs.Allocated at this
          have := hlive1.2
          have := hlive2.1
          omega
        · simp at ho)
    (fun k => by show lsthTy.slot k = .prot; rcases k with _ | _ | _ | k <;> rfl)
    (by show guestC.tags.lookup tLSTh = none; decide) (hlw _ _ _ (Or.inl rfl))
  exact ⟨_, l, hT4, rfl, List.mem_append_right _ (List.mem_singleton_self _)⟩

end body

/-- **The `lst_new` entry** (heap lists, trivial list hooks). -/
theorem csumm_lst_new {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hlw : ∀ Γ (s : State σ) o, o.ty = tLSTh ∨ o.ty = tLSTAh → H.wf Γ s o) :
    CSumm σ X guestC H (nm "lst_new") lnSig [] := by
  refine sumSpecA_of_returns (noExc_lst_new hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs _
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_lst_new (by decide) hl'
  obtain ⟨E, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨Cc, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨p0, hp0, -⟩ := hargs
  have hE : s0.locals.lookup (nm "esz") = some (.val (.word E)) := by rw [hloc]; exact hA
  have hC : s0.locals.lookup (nm "cap") = some (.val (.word Cc)) := by rw [hloc]; exact hB
  have H' := ln_hoare hF hM hlw hG0 hp0 hE hC s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H'
  obtain ⟨Γ', l, hT, hl, hmem⟩ := H' v rfl
  have hret : ∀ pf, ptrsOf (evaluateHOLFiniteState s0 lnBody).2 = some pf → ∀ w, r = .returned w →
      RetOK Γ' p0 pf [.val (.word E), .val (.word Cc)] lnSig.ret w := by
    intro pf _ w hw
    rw [hv] at hw
    cases hw
    subst hl
    intro i rt w' hi hfl
    match i, hi with
    | 0, hi =>
      simp only [lnSig, List.getElem?_cons_zero, Option.some.injEq] at hi
      subst hi
      simp only [flattenHOL, List.getElem?_cons_zero, Option.some.injEq, HolWordLab.word.injEq] at hfl
      subst hfl
      exact ⟨_, hmem, rfl, rfl⟩
    | _ + 1, hi => simp [lnSig] at hi
  obtain ⟨p', hc⟩ := Struct.trk_sumCore (sg := lnSig) (PWs := fun a => ProtCell guestC Γ0 a ∧
      CapPW [] s0 Γ0 a) (vs := [.val (.word E), .val (.word Cc)]) (r := r) hT hp0 (fun _ h => h.elim)
    (fun h => by simp [lnSig] at h) hret
  exact ⟨Γ', p0, p', hc, trivial⟩

/-- The `lst_new` entry (for the base table; not yet merged). -/
def lstNewTab : CTab := [(nm "lst_new", lnSig, [])]

theorem lstNewTab_sound {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hlw : ∀ Γ (s : State σ) o, o.ty = tLSTh ∨ o.ty = tLSTAh → H.wf Γ s o) :
    CTabSound σ X guestC H lstNewTab := by
  intro f sg cs hm
  simp only [lstNewTab, List.mem_cons, List.not_mem_nil, or_false, Prod.mk.injEq] at hm
  obtain ⟨rfl, rfl, rfl⟩ := hm
  exact csumm_lst_new hF hM hlw

end InitECandidate.Solver.MemSafe.HtabEntries
