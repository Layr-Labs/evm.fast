import InitECandidate.Solver.MemSafe.Frames.CreateFin

/-!
# `lst_new_scratch(8, 4)`: the frame-local logs list (a constructor for `frame_new`)

```
fun 1 lst_new_scratch(1 esz, 1 cap) {
  var 1 l = scratch_alloc(LST_SIZE); var 1 p = scratch_alloc(esz * cap);
  st l + LST_PTR, p; st l + LST_N, 0; st l + LST_CAP, cap; return l; }
```

**`lstNew_spec`**: from `esz = 8`, `cap = 4`, a return adds the array `⟨p, tLSTAs, 32⟩` and the
header `⟨l, tLSTs, 24⟩` (both all-`prot`, fresh at entry) to `Γ`, with `PTR = p`, `N = 0`,
`CAP = 4`; no `prot` cell of `Γ` is written. Hooks: list objects have the trivial hook.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Struct
open InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

def lstBody : ProgHOL 64 :=
  .decCall (nm "l") .one (nm "scratch_alloc") [cw 24]
    (.decCall (nm "p") .one (nm "scratch_alloc") [.panop .mul [lv (nm "esz"), lv (nm "cap")]]
      (.seq (stL "l" 0 (lv (nm "p")))
        (.seq (stL "l" 8 (cw 0))
          (.seq (stL "l" 16 (lv (nm "cap"))) (.return (lv (nm "l")))))))

theorem entry_lst : fnEntry Guest.Software.guestFn_lst_new_scratch =
    (nm "lst_new_scratch", [(nm "esz", .one), (nm "cap", .one)], lstBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_lst : guestCode (nm "lst_new_scratch") =
    some ([(nm "esz", .one), (nm "cap", .one)], lstBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 409) (by decide)) ⟨_, rfl⟩
    entry_lst

section trkx
variable {C : Cfg} {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop}

/-- A write to a cell outside `Γ` that was unallocated at entry. -/
theorem trk_tmp (hH : HooksLawful C H) {Γ : Gam} {t : State σ} (h : Trk C H Γ0 s0 p0 PW Γ t)
    {a : BitVec 64} (hna : ¬ InObj Γ a.toNat) (hfa : ¬ p0.Allocated a.toNat) (w : BitVec 64) :
    Trk C H Γ0 s0 p0 PW Γ { t with memory := upd t.memory a w } := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod, hpg, hd, hbe⟩ := h
  refine ⟨p, hp, hm, hx, hnf, G_frame hH hG rfl (fun _ _ _ => rfl) (fun _ _ => rfl) rfl rfl
    (fun b hb => upd_ne _ _ (fun e => hna (e ▸ hb))), fun b hb => ?_, hpg, hd, hbe⟩
  have hne : b ≠ a := fun e => hb (Or.inr (Or.inl (e ▸ hfa)))
  show upd t.memory a w b = s0.memory b
  rw [upd_ne _ _ hne]
  exact hmod b hb

/-- A fresh, disjoint object with all-`prot` slots joins the typing. -/
theorem trk_addObj (hH : HooksLawful C H) (hM : HooksMono C H) {Γ : Gam} {t : State σ}
    (h : Trk C H Γ0 s0 p0 PW Γ t) {x : Obj} {p : Ptrs} (hp : ptrsOf t = some p)
    (hal : x.lo % 8 = 0) (hsz8 : x.size % 8 = 0) (hpos : 0 < x.size)
    (hmin : (C.ty x.ty).minSz ≤ x.size) (hlive : (C.ty x.ty).region.Live p x.lo x.size)
    (hfr : ∀ a : BitVec 64, x.lo ≤ a.toNat → a.toNat < x.hi → Fresh p0 p a)
    (hdisj : ∀ a : BitVec 64, InO x a → ¬ InObj Γ a.toNat)
    (hpr : ∀ k, (C.ty x.ty).slot k = .prot) (htag : C.tags.lookup x.ty = none)
    (hwf : H.wf (Γ ++ [x]) t x) : Trk C H Γ0 s0 p0 PW (Γ ++ [x]) t := by
  obtain ⟨p', hp', hm, hx, hnf, hG, hmod, hpg, hd, hbe⟩ := h
  rw [hp] at hp'
  cases hp'
  refine ⟨p, hp, hm, ext_trans hx (ext_append Γ x), ?_,
    G_addObj hH hM hG hal hsz8 hpos hmin (fun q hq => by rw [hp] at hq; cases hq; exact hlive) hdisj
      (fun k _ => by rw [hpr k]; trivial) htag hwf, hmod, hpg, hd, hbe⟩
  intro o ho a h1 h2
  rcases List.mem_append.mp ho with ho | ho
  · rcases hnf o ho a h1 h2 with h' | h'
    · exact Or.inl h'
    · exact Or.inr h'
  · simp only [List.mem_singleton] at ho
    subst ho
    exact Or.inr (hfr a h1 h2)

end trkx


/-- What a return of `lst_new_scratch(8, 4)` built. -/
def LstQ (Γ0 : Gam) (v : ValueHOL 64) (t : State σ) (Γ' : Gam) : Prop :=
  ∃ l q, v = .val (.word l) ∧ Γ' = Γ0 ++ [⟨q, tLSTAs, 32⟩] ++ [⟨l, tLSTs, 24⟩] ∧
    fld t.memory l 0 = q ∧ fld t.memory l 8 = 0 ∧ fld t.memory l 16 = 4

/-- The body post. -/
def QL (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (r : Option (PanSemResultExact 64))
    (t : State σ) : Prop :=
  ∀ rr, r = some rr → ∃ Γ', Trk guestC H Γ0 s0 p0 (fun _ => False) Γ' t ∧
    ∀ v, rr = .returned v → LstQ Γ0 v t Γ'

section lst
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

theorem ql_locals (hH : HooksLawful guestC H) {r : Option (PanSemResultExact 64)} {u : State σ}
    (h : QL H Γ0 s0 p0 r u) (l : Locs) : QL H Γ0 s0 p0 r { u with locals := l } := by
  intro rr hr
  obtain ⟨Γ', hT, hq⟩ := h rr hr
  exact ⟨Γ', trk_congr hH hT rfl rfl rfl rfl, hq⟩

theorem ql_abn {r : PanSemResultExact 64} (hab : MemSafe.Abn r) {u : State σ}
    (hT : Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u) : QL H Γ0 s0 p0 (some r) u := by
  intro rr hrr
  simp only [Option.some.injEq] at hrr
  subst hrr
  refine ⟨Γ0, hT, fun v hv => ?_⟩
  subst hv
  rcases hab with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h

theorem lst_hoare (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hlw : ∀ Γ (s : State σ) o, o.ty = tLSTs ∨ o.ty = tLSTAs → H.wf Γ s o)
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    (hE : s0.locals.lookup (nm "esz") = some (.val (.word 8)))
    (hC : s0.locals.lookup (nm "cap") = some (.val (.word 4))) :
    HoareG σ X (fun u => u = s0) lstBody (QL H Γ0 s0 p0) := by
  have hH := hF.hH
  have hA : AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have hT0 : Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 s0 := trk_refl hG0 hp0
  refine hoareG_decCall (FunSpec.and (allocSpec_scratch_alloc hF.hX) (funSpec_dom _)) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hAl, hd, hbe⟩ _ _
    rw [hs] at hvs hAl hd hbe ⊢
    rw [show evs s0 [cw 24] = some [.val (.word (BitVec.ofNat 64 24))] from
      evs_cons (ev_cw s0 24) evs_nil] at hvs
    cases hvs
    have hpe : ptrsOf (callEntryStateHOLFinite s0 callee) = some p0 := by
      rw [show ptrsOf (callEntryStateHOLFinite s0 callee) = ptrsOf s0 from ptrsOf_congr rfl]; exact hp0
    obtain ⟨hm, hgl, p1, hp1, hord1, hmo1, hret⟩ := hAl (by simp [Good]) _ p0 rfl hpe hord0
    obtain ⟨l, rfl, hl8, hlive1, hna1⟩ := hret _ rfl
    have h24 : (BitVec.ofNat 64 24).toNat = 24 := rfl
    rw [h24] at hlive1 hna1
    have hT1 := trk_alloc hH hA hT0 rfl rfl hpe hm hgl hp1 hord1 hmo1 hd hbe
    refine hoareG_conseq (Q := QL H Γ0 s0 p0) ?_ (fun _ _ h => h) (fun r t _ _ h => ql_locals hH h _)
    set u1 := setVarHOLFinite (nm "l") (.val (.word l)) { st with locals := s0.locals } with hu1
    have hT1' : Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u1 := trk_congr hH hT1 rfl rfl rfl rfl
    have hE1 : u1.locals.lookup (nm "esz") = some (.val (.word 8)) := (lk_set_ne _ _ (by decide)).trans hE
    have hC1 : u1.locals.lookup (nm "cap") = some (.val (.word 4)) := (lk_set_ne _ _ (by decide)).trans hC
    have hl1 : u1.locals.lookup (nm "l") = some (.val (.word l)) := lk_set_self _ _ _
    refine hoareG_decCall (FunSpec.and (allocSpec_scratch_alloc hF.hX) (funSpec_dom _)) ?_ ?_
    · intro s' _ hs' vs hvs callee v st2 ⟨hAl2, hd2, hbe2⟩ _ _
      rw [hs'] at hvs hAl2 hd2 hbe2 ⊢
      rw [show evs u1 [.panop .mul [lv (nm "esz"), lv (nm "cap")]] =
          some [.val (.word (BitVec.ofNat 64 8 * BitVec.ofNat 64 4))] from
        evs_cons (ev_mul2 (lv_of rfl hE1) (lv_of rfl hC1)) evs_nil] at hvs
      cases hvs
      have hpe1 : ptrsOf (callEntryStateHOLFinite u1 callee) = some p1 := by
        rw [show ptrsOf (callEntryStateHOLFinite u1 callee) = ptrsOf st from ptrsOf_congr rfl]; exact hp1
      obtain ⟨hm2, hgl2, p2, hp2, hord2, hmo2, hret2⟩ := hAl2 (by simp [Good]) _ p1 rfl hpe1 hord1
      obtain ⟨q, rfl, hq8, hlive2, hna2⟩ := hret2 _ rfl
      have h32 : (BitVec.ofNat 64 8 * BitVec.ofNat 64 4).toNat = 32 := rfl
      rw [h32] at hlive2 hna2
      have hT2 := trk_alloc hH hA hT1' rfl rfl hpe1 hm2 hgl2 hp2 hord2 hmo2 hd2 hbe2
      refine hoareG_conseq (Q := QL H Γ0 s0 p0) ?_ (fun _ _ h => h)
        (fun r t _ _ h => ql_locals hH h _)
      set u2 := setVarHOLFinite (nm "p") (.val (.word q)) { st2 with locals := u1.locals } with hu2
      have hT2' : Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u2 := trk_congr hH hT2 rfl rfl rfl rfl
      have hl2 : u2.locals.lookup (nm "l") = some (.val (.word l)) := (lk_set_ne _ _ (by decide)).trans hl1
      have hq2 : u2.locals.lookup (nm "p") = some (.val (.word q)) := lk_set_self _ _ _
      have hc2 : u2.locals.lookup (nm "cap") = some (.val (.word 4)) := (lk_set_ne _ _ (by decide)).trans hC1
      -- the header block
      have hle : l.toNat + 24 ≤ scratchEnd := hlive1.2
      have hlt : ∀ k, k < 24 → (l + BitVec.ofNat 64 k).toNat = l.toNat + k := fun k hk => by
        have : scratchEnd < 2 ^ 64 := by decide
        rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : k < 2 ^ 64),
          Nat.mod_eq_of_lt (by omega)]
      have hhd : ∀ k, k < 24 → ¬ InObj Γ0 (l + BitVec.ofNat 64 k).toNat ∧
          ¬ p0.Allocated (l + BitVec.ofNat 64 k).toNat := fun k hk => by
        rw [hlt k hk]
        exact ⟨fun hio => hna1 _ (by omega) (by omega) (allocated_of_inObj hL0 hio),
          hna1 _ (by omega) (by omega)⟩
      have hst : ∀ (u : State σ) (k : Nat), k < 24 → Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u →
          ∀ w, Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0
            { u with memory := upd u.memory (l + BitVec.ofNat 64 k) w } :=
        fun u k hk hT w => trk_tmp hH hT (hhd k hk).1 (hhd k hk).2 w
      refine hoareG_pre (P := fun u => u.locals = u2.locals ∧ Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u ∧
        u.globals = u2.globals) ?_ (fun u _ hu => by rw [hu]; exact ⟨rfl, hT2', rfl⟩)
      refine hoareG_seq (R := fun r u => r = none ∧ (u.locals = u2.locals ∧
          Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u ∧ u.globals = u2.globals) ∧
          fld u.memory l 0 = q) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      · refine hoareG_stL fun u _ ⟨hlu, hT, hg⟩ B v hB hv => ?_
        rw [hlu, hl2, Option.some.injEq] at hB
        cases hB
        rw [lv_of hlu hq2] at hv
        cases hv
        exact ⟨q, rfl, fun _ => ⟨rfl, ⟨hlu, hst u 0 (by omega) hT q, hg⟩, by unfold fld; exact rd_upd_self _ _ _⟩⟩
      refine hoareG_seq (R := fun r u => r = none ∧ (u.locals = u2.locals ∧
          Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u ∧ u.globals = u2.globals) ∧
          fld u.memory l 0 = q ∧ fld u.memory l 8 = 0) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      · refine hoareG_stL fun u _ ⟨_, ⟨hlu, hT, hg⟩, h0⟩ B v hB hv => ?_
        rw [hlu, hl2, Option.some.injEq] at hB
        cases hB
        rw [ev_cw] at hv
        cases hv
        refine ⟨_, rfl, fun _ => ⟨rfl, ⟨hlu, hst u 8 (by omega) hT _, hg⟩, ?_, by unfold fld; exact rd_upd_self _ _ _⟩⟩
        unfold fld at h0 ⊢
        rw [rd_upd_ne _ _ (off_ne _ (by decide) (by decide) (by decide))]
        exact h0
      refine hoareG_seq (R := fun r u => r = none ∧ (u.locals = u2.locals ∧
          Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u ∧ u.globals = u2.globals) ∧
          fld u.memory l 0 = q ∧ fld u.memory l 8 = 0 ∧ fld u.memory l 16 = 4) ?_
        (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      · refine hoareG_stL fun u _ ⟨_, ⟨hlu, hT, hg⟩, h0, h8⟩ B v hB hv => ?_
        rw [hlu, hl2, Option.some.injEq] at hB
        cases hB
        rw [lv_of hlu hc2] at hv
        cases hv
        refine ⟨_, rfl, fun _ => ⟨rfl, ⟨hlu, hst u 16 (by omega) hT _, hg⟩, ?_, ?_,
          by unfold fld; exact rd_upd_self _ _ _⟩⟩
        · unfold fld at h0 ⊢
          rw [rd_upd_ne _ _ (off_ne _ (by decide) (by decide) (by decide))]
          exact h0
        · unfold fld at h8 ⊢
          rw [rd_upd_ne _ _ (off_ne _ (by decide) (by decide) (by decide))]
          exact h8
      · refine hoareG_return fun u _ ⟨_, ⟨hlu, hT, hg⟩, h0, h8, h16⟩ v hv rr hrr => ?_
        simp only [Option.some.injEq] at hrr
        subst hrr
        rw [lv_of hlu hl2] at hv
        cases hv
        have hpu : ptrsOf (emptyLocalsHOLFinite u) = some p2 := by
          rw [show ptrsOf (emptyLocalsHOLFinite u) = ptrsOf st2 from ptrsOf_congr hg]; exact hp2
        have hTu : Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 (emptyLocalsHOLFinite u) :=
          trk_congr hH hT rfl rfl rfl rfl
        obtain ⟨m11, m12, m13⟩ := hmo1
        obtain ⟨m21, m22, m23⟩ := hmo2
        have hT3 := trk_addObj (x := ⟨q, tLSTAs, 32⟩) hH hM hTu hpu hq8 (by show (32 : Nat) % 8 = 0; rfl)
          (by show 0 < 32; omega) (by show (guestC.ty tLSTAs).minSz ≤ 32; decide) hlive2
          (fun a (h1 : q.toNat ≤ a.toNat) (h2 : a.toNat < q.toNat + 32) => by
            have := hna2 a.toNat h1 h2
            unfold Fresh; unfold Ptrs.Allocated at this
            have := hlive2.1; have := hlive2.2; right; right; constructor <;> omega)
          (fun a ⟨h1, h2⟩ hio => hna2 _ h1 h2 (allocated_mono ⟨m11, m12, m13⟩
            (allocated_of_inObj hL0 hio))) (fun _ => rfl)
          (by show guestC.tags.lookup tLSTAs = none; decide) (hlw _ _ _ (Or.inr rfl))
        have hT4 := trk_addObj (x := ⟨l, tLSTs, 24⟩) hH hM hT3 hpu hl8 (by show (24 : Nat) % 8 = 0; rfl)
          (by show 0 < 24; omega) (by show (guestC.ty tLSTs).minSz ≤ 24; decide)
          (live_mono ⟨m21, m22, m23⟩ hlive1)
          (fun a (h1 : l.toNat ≤ a.toNat) (h2 : a.toNat < l.toNat + 24) => by
            have := hna1 a.toNat h1 h2
            unfold Fresh; unfold Ptrs.Allocated at this
            have := hlive1.1; have := hlive1.2; right; right; constructor <;> omega)
          (fun a ⟨(h1 : l.toNat ≤ a.toNat), (h2 : a.toNat < l.toNat + 24)⟩ ⟨o, ho, hlo, hhi⟩ => by
            rcases List.mem_append.mp ho with ho | ho
            · exact hna1 _ h1 h2 (allocated_of_inObj hL0 ⟨o, ho, hlo, hhi⟩)
            · simp only [List.mem_singleton] at ho
              subst ho
              have hlo' : q.toNat ≤ a.toNat := hlo
              have hhi' : a.toNat < q.toNat + 32 := hhi
              have := hna2 a.toNat hlo' hhi'
              unfold Ptrs.Allocated at this
              have := hlive1.1
              omega) (fun k => by
                show lstsTy.slot k = .prot
                rcases k with _ | _ | _ | k <;> rfl) (by show guestC.tags.lookup tLSTs = none; decide)
          (hlw _ _ _ (Or.inl rfl))
        exact ⟨_, hT4, fun v hv => ⟨l, q, by cases hv; rfl, rfl, h0, h8, h16⟩⟩
    · intro s' _ hs' vs hvs callee r st2 ⟨hAl2, hd2, hbe2⟩ _ habn
      rw [hs'] at hvs hAl2 hd2 hbe2
      rw [show evs u1 [.panop .mul [lv (nm "esz"), lv (nm "cap")]] =
          some [.val (.word (BitVec.ofNat 64 8 * BitVec.ofNat 64 4))] from
        evs_cons (ev_mul2 (lv_of rfl hE1) (lv_of rfl hC1)) evs_nil] at hvs
      cases hvs
      have hpe1 : ptrsOf (callEntryStateHOLFinite u1 callee) = some p1 := by
        rw [show ptrsOf (callEntryStateHOLFinite u1 callee) = ptrsOf st from ptrsOf_congr rfl]; exact hp1
      obtain ⟨hm2, hgl2, p2, hp2, hord2, hmo2, -⟩ :=
        hAl2 (good_of_abn habn) _ p1 rfl hpe1 hord1
      exact ql_abn habn (trk_congr hH (trk_alloc hH hA hT1' rfl rfl hpe1 hm2 hgl2 hp2 hord2 hmo2 hd2 hbe2)
        rfl rfl rfl rfl)
  · intro s _ hs vs hvs callee r st ⟨hAl, hd, hbe⟩ _ habn
    rw [hs] at hvs hAl hd hbe
    rw [show evs s0 [cw 24] = some [.val (.word (BitVec.ofNat 64 24))] from
      evs_cons (ev_cw s0 24) evs_nil] at hvs
    cases hvs
    have hpe : ptrsOf (callEntryStateHOLFinite s0 callee) = some p0 := by
      rw [show ptrsOf (callEntryStateHOLFinite s0 callee) = ptrsOf s0 from ptrsOf_congr rfl]; exact hp0
    obtain ⟨hm, hgl, p1, hp1, hord1, hmo1, -⟩ := hAl (good_of_abn habn) _ p0 rfl hpe hord0
    exact ql_abn habn (trk_congr hH (trk_alloc hH hA hT0 rfl rfl hpe hm hgl hp1 hord1 hmo1 hd hbe)
      rfl rfl rfl rfl)

end lst


/-- **`lst_new_scratch(8, 4)`**: a return adds the list array and header to `Γ`
(`LstQ`); no `prot` cell of `Γ` is written; the result is a `ptr tLSTs`. -/
theorem lstNew_spec {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hlw : ∀ Γ (s : State σ) o, o.ty = tLSTs ∨ o.ty = tLSTAs → H.wf Γ s o) :
    SumSpec σ X guestC H (nm "lst_new_scratch") ⟨[.any, .any], [.fits (.ptr tLSTs)], [], true⟩
      (fun vs _ _ => vs = [.val (.word 8), .val (.word 4)]) (fun _ _ _ _ => False)
      (fun _ _ Γ r t Γ' => ∀ v, r = .returned v → LstQ Γ v t Γ') := by
  rintro vs body callee rs hl s0 hs hloc r hr hg Γ0 hG0 ⟨p0, hp0, -⟩ rfl
  rw [hF.hX] at hl
  obtain ⟨rfl, -, A, B, hAB, -, -, hA, hB⟩ := lookupCode_two code_lst (by decide) hl
  simp only [List.cons.injEq, and_true] at hAB
  obtain ⟨rfl, rfl⟩ := hAB
  have hE : s0.locals.lookup (nm "esz") = some (.val (.word 8)) := by rw [hloc]; exact hA
  have hC : s0.locals.lookup (nm "cap") = some (.val (.word 4)) := by rw [hloc]; exact hB
  have Hb := lst_hoare hF hM hlw hG0 hp0 hE hC s0 hs rfl (by rw [hr]; exact hg)
  rw [hr] at Hb
  obtain ⟨Γ', hT, hq⟩ := Hb r rfl
  obtain ⟨p', hc⟩ := trk_sumCore (sg := ⟨[.any, .any], [.fits (.ptr tLSTs)], [], true⟩) (r := r)
    (vs := [.val (.word 8), .val (.word 4)])
    (PWs := fun a => ProtCell guestC Γ0 a ∧ False) hT hp0 (fun a h => h.elim)
    (fun h => by simp at h) (fun p _ v hv i rt w hrt hw => by
      obtain ⟨l, q, rfl, rfl, -⟩ := hq v hv
      rcases i with _ | i
      · simp at hrt
        subst hrt
        simp [flattenHOL] at hw
        subst hw
        exact ⟨⟨l, tLSTs, 24⟩, by simp, rfl, rfl⟩
      · simp at hrt)
  exact ⟨Γ', p0, p', hc, hq⟩


end InitECandidate.Solver.MemSafe.Frames
