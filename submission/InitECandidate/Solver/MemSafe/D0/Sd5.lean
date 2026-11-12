import InitECandidate.Solver.MemSafe.D0.Sd4

/-!
# `set_delegation`: the authorization check (`sdValid`) and its junction post `PLE`

`PLE b xs`: a normal end where the local `authority` holds a word `a` with either `a = 0` or `a` a
`buf 20` of the current typing (`KPd … (a = 0 ∨ BufOK)`), or an abnormal end.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
local notation "gwJ" => [Hooks.gJn]
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

/-- The junction post. -/
def PLE (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (fs : List Frame) (e mg : BitVec 64)
    (xs : List (MlS × ValueHOL 64)) (ro : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (ro = none ∧ ∃ a : BitVec 64,
      KPd HJ gwJ Γ0 s0 p0 fs e mg t (fun Γ p => a = 0 ∨ BufOK guestC Γ p a.toNat 20) ∧
      LA t.locals ((nm "authority", .val (.word a)) :: xs)) ∨
    (∃ r, ro = some r ∧ Abn r ∧ (¬ Abortive r → KP HJ gwJ Γ0 s0 p0 fs e mg t))

theorem la_swap {L : Locs} {xs : List (MlS × ValueHOL 64)} {m n : MlS} {v w : ValueHOL 64}
    (hlv : LA L ((m, v) :: xs)) (hm : xs.lookup m = none) (hn : L.lookup n = some w) :
    LA L ((n, w) :: xs) := by
  intro x y hxy
  by_cases hxn : x = n
  · subst hxn
    simp only [List.lookup, beq_self_eq_true, Option.some.injEq] at hxy
    subst hxy; exact hn
  · rw [lk_cons_ne hxn] at hxy
    have hxm : x ≠ m := by rintro rfl; rw [hm] at hxy; cases hxy
    exact hlv x y (by rw [lk_cons_ne hxm]; exact hxy)

theorem kpd_of_kp {B : Gam → Ptrs → Prop} {u : State σ} (h : KP HJ gwJ Γ0 s0 p0 fs e mg u)
    (hB : ∀ Γ p, B Γ p) : KPd HJ gwJ Γ0 s0 p0 fs e mg u B :=
  let ⟨hJ, Γ1, p1, a, b, c', d, f⟩ := h; ⟨hJ, Γ1, p1, a, b, c', d, f, hB Γ1 p1⟩

theorem ple_res {xs : List (MlS × ValueHOL 64)} {n : MlS} (hn : xs.lookup n = none)
    (hna : n ≠ nm "authority") (o : Option (ValueHOL 64))
    {ro : Option (PanSemResultExact 64)} {t : State σ}
    (h : PLE Γ0 s0 p0 fs e mg xs ro t) :
    PLE Γ0 s0 p0 fs e mg xs ro { t with locals := t.locals.resVarEq (n, o) } := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  rcases h with ⟨h0, a, hk, hl⟩ | ⟨r, h0, hA, hk⟩
  · refine Or.inl ⟨h0, a, kpd_same hH hk rfl rfl rfl rfl, ?_⟩
    refine la_res hl ?_ o
    rw [lk_cons_ne hna]; exact hn
  · exact Or.inr ⟨r, h0, hA, fun hna' => kp_locals hH (hk hna') _⟩

/-- Export from a re-based `KP` state `t` (base `(Γ2, st, p2)`) to the original base. -/
theorem kpd_export {st t : State σ} {Γ2 : Gam} {p2 : Ptrs} {r a : BitVec 64}
    (hkb : KP HJ gwJ Γ0 s0 p0 fs e mg st) (hrun : RunT guestC HJ gwJ Γ0 s0 Γ2 st p0 p2)
    (hbr : r = 0 ∨ BufOK guestC Γ2 p2 r.toNat 20) (ha : a = 0 ∨ a = r)
    (ht : KP HJ gwJ Γ2 st p2 fs e mg t) :
    KPd HJ gwJ Γ0 s0 p0 fs e mg t (fun Γ p => a = 0 ∨ BufOK guestC Γ p a.toNat 20) := by
  obtain ⟨hJt, Γ3, p3, hrun3, hch, hE, hΦ, h112⟩ := ht
  refine ⟨hJt, Γ3, p3, runT_trans hrun hrun3, hch, hE, le_trans hΦ hkb.2.choose_spec.choose_spec.2.2.2.1,
    h112, ?_⟩
  rcases ha with rfl | rfl
  · exact Or.inl rfl
  · rcases hbr with h | h
    · exact Or.inl h
    · exact Or.inr (bufOK_runT hrun.2.2.2.2.2.1 hrun3 h)

/-- Names introduced inside `sdValid`. -/
def ValidFresh (xs : List (MlS × ValueHOL 64)) : Prop :=
  xs.lookup (nm "rec") = none ∧ xs.lookup (nm "ok") = none ∧ xs.lookup (nm "authority") = none

/-- **The authorization check.** `authority` is `0` on entry; it ends `0` or a `buf 20`. -/
theorem sd_valid (hRA : RaH σ) (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) (hG0 : G guestC HJ Γ0 s0) {av : BitVec 64}
    {xs : List (MlS × ValueHOL 64)} (hxA : xs.lookup (nm "auth") = some (.val (.word av)))
    (hfr : ValidFresh xs)
    (hl : LA u0.locals ((nm "authority", .val (.word 0)) :: xs))
    (hAuth : ∀ Γ1 p1, RunT guestC HJ gwJ Γ0 s0 Γ1 u0 p0 p1 →
      ∃ x ∈ Γ1, x.ty = tAUTH ∧ x.lo ≤ av.toNat ∧ av.toNat + 120 ≤ x.hi) :
    HoareG σ guestCtx (fun t => t = u0) sdValid (PLE Γ0 s0 p0 fs e mg xs) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  obtain ⟨fRec, fOk, fAu⟩ := hfr
  have hxA' : ((nm "authority", ValueHOL.val (.word (0 : BitVec 64))) :: xs).lookup (nm "auth") =
      some (.val (.word av)) := by rw [lk_cons_ne (by decide)]; exact hxA
  have hkd0 : ∀ u : State σ, KP HJ gwJ Γ0 s0 p0 fs e mg u →
      KPd HJ gwJ Γ0 s0 p0 fs e mg u (fun Γ p => (0 : BitVec 64) = 0 ∨ BufOK guestC Γ p (0 : BitVec 64).toNat 20) :=
    fun u hk => kpd_of_kp hk fun _ _ => Or.inl rfl
  have hskip : ∀ u : State σ, KP HJ gwJ Γ0 s0 p0 fs e mg u →
      LA u.locals ((nm "authority", .val (.word 0)) :: xs) →
      PLE Γ0 s0 p0 fs e mg xs none u := fun u hk hlu => Or.inl ⟨rfl, 0, hkd0 u hk, hlu⟩
  unfold sdValid
  refine hoareG_ite (hoareG_pre ?_ fun _ _ h => h.1) (hoareG_pre (hoareG_skip fun _ _ h => by
    rw [h]; exact hskip u0 hu hl) fun _ _ h => h.1)
  have g0 := sgOK0 (sg := (⟨[.any], [], [], true⟩ : Sig)) (gw := gwJ) rfl
  refine hoareG_kpDecCallTn (Hooks.frameCfg_guestHooksR (σ := σ)) hfs (ra_kp hRA) ra_fp g0.1 g0.2.1 g0.2.2
    (ks := []) (by simp) hu ?_ (fun _ _ _ _ _ _ h => h) (Or.inl rfl) ?_ ?_
  · intro vs hvs Γ1 p1 hr hp hG hL hE'
    rw [evs_lv1 (la_lookup hl hxA') hvs]
    exact ⟨argsOK_any (by simp) rfl, fun callee => ⟨av, rfl, hAuth Γ1 p1 hr⟩⟩
  · intro vs callee hvs v st hst hsh
    obtain ⟨r, rfl⟩ := val_of_shapeEq_one' hsh
    have hst' := hst
    obtain ⟨hJ, Γ2, p2, hrun, hch, hE, hΦ, h112, Γ1', hQ, hp2⟩ := hst
    have hG2 := hrun.2.2.2.2.2.1
    have hkb : KP HJ gwJ Γ0 s0 p0 fs e mg st := kp_of_kpd hst'
    have hbr : r = 0 ∨ BufOK guestC Γ2 p2 r.toNat 20 := by
      obtain ⟨w, hw, h0⟩ := hQ (.val (.word r)) rfl
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
      subst hw
      rcases h0 with h | h
      · exact Or.inl h
      · exact Or.inr (h p2 hp2)
    have hu2 : KP HJ gwJ Γ2 st p2 fs e mg st :=
      ⟨hJ, Γ2, p2, runT_refl hG2 hrun.2.1, hch, hE, le_refl _, h112⟩
    set s2 := setVarHOLFinite (nm "rec") (.val (.word r)) { st with locals := u0.locals } with hs2
    have hu2s : KP HJ gwJ Γ2 st p2 fs e mg s2 := kp_locals hH hu2 s2.locals
    have hu1s : KP HJ gwJ Γ0 s0 p0 fs e mg s2 := kp_locals hH hkb s2.locals
    have hl2 : LA s2.locals ((nm "rec", .val (.word r)) :: (nm "authority", .val (.word 0)) :: xs) :=
      la_set hl _ _ st
    have hxr : s2.locals.lookup (nm "rec") = some (.val (.word r)) := lk_set_self _ _ _
    have hxr_loc := hxr
    have hAu0 : s2.locals.lookup (nm "authority") = some (.val (.word 0)) :=
      la_lookup hl2 (by rw [lk_cons_ne (by decide)]; simp [List.lookup])
    refine hoareG_conseq (P := fun t => t = s2)
      (Q := PLE Γ0 s0 p0 fs e mg xs) ?_ (fun _ _ h => h)
      (fun ro t _ _ h => ple_res fRec (by decide) _ h)
    have hl2' : LA s2.locals ((nm "authority", .val (.word 0)) :: xs) :=
      la_drop hl2 (by rw [lk_cons_ne (by decide)]; exact fRec)
    refine hoareG_iteNZ hxr (fun hr0 => ?_) (fun hr0 => ?_)
    · have hbr' : BufOK guestC Γ2 p2 r.toNat 20 := by
        rcases hbr with h | h
        · exact absurd h hr0
        · exact h
      let xs3 : List (MlS × ValueHOL 64) := (nm "rec", .val (.word r)) :: xs
      let PlV : Locs → Prop := fun L => LA L xs3 ∧
        (L.lookup (nm "authority") = some (.val (.word 0)) ∨
          L.lookup (nm "authority") = some (.val (.word r)))
      have hxs3a : xs3.lookup (nm "authority") = none := by
        show ((nm "rec", ValueHOL.val (.word r)) :: xs).lookup (nm "authority") = none
        rw [lk_cons_ne (by decide)]; exact fAu
      have hxs3o : xs3.lookup (nm "ok") = none := by
        show ((nm "rec", ValueHOL.val (.word r)) :: xs).lookup (nm "ok") = none
        rw [lk_cons_ne (by decide)]; exact fOk
      have hxs3A : xs3.lookup (nm "auth") = some (.val (.word av)) := by
        show ((nm "rec", ValueHOL.val (.word r)) :: xs).lookup (nm "auth") = _
        rw [lk_cons_ne (by decide)]; exact hxA
      have hlV : LA s2.locals xs3 := by
        intro x w hx
        by_cases hxr : x = nm "rec"
        · subst hxr
          have hw : w = .val (.word r) := by simpa [xs3, List.lookup] using hx.symm
          rw [hw]; exact hxr_loc
        · have hxa : x ≠ nm "authority" := by
            rintro rfl; rw [hxs3a] at hx; cases hx
          rw [lk_cons_ne hxr] at hx
          exact hl2 x w (by rw [lk_cons_ne hxr, lk_cons_ne hxa]; exact hx)
      have hPlV : PlV s2.locals := ⟨hlV, Or.inl hAu0⟩
      refine hoareG_conseq (P := fun t => t = s2)
        (Q := PLQ (KP HJ gwJ Γ2 st p2 fs e mg) PlV) ?_ (fun _ _ h => h) (fun ro t _ _ h => ?_)
      rotate_left
      · rcases h with ⟨h0, hk, hlv, hauth⟩ | ⟨r', h0, hA, hk⟩
        · have hexp : ∀ a : BitVec 64, (a = 0 ∨ a = r) → t.locals.lookup (nm "authority") =
              some (.val (.word a)) → PLE Γ0 s0 p0 fs e mg xs ro t := fun a ha hau =>
            Or.inl ⟨h0, a, kpd_export hkb hrun hbr ha hk, la_swap hlv fRec hau⟩
          rcases hauth with ha | ha
          · exact hexp 0 (Or.inl rfl) ha
          · exact hexp r (Or.inr rfl) ha
        · exact Or.inr ⟨r', h0, hA, fun hna => kp_trans hkb hrun (hk hna)⟩
      refine plq_seq (Pl := PlV)
        (plq_call hfs wa_kp wa_fp g0.1 g0.2.1 g0.2.2 hu2s hPlV
          (hargs_buf1 rfl (fun vs hvs => evs_lv1 hxr hvs) hu2s (fun Γ1 p1 hr => bufOK_runT hG2 hr hbr'))
          (fun _ _ _ _ _ _ h => h)) fun u7 hk7 hl7 => ?_
      have hauth7 : u7.locals.lookup (nm "auth") = some (.val (.word av)) := la_lookup hl7.1 hxs3A
      have hrec7 : u7.locals.lookup (nm "rec") = some (.val (.word r)) :=
        la_lookup hl7.1 (by simp [xs3, List.lookup])
      have g2 := sgOK0 (sg := (⟨[.any, .buf 20], [], [], true⟩ : Sig)) (gw := gwJ) rfl
      refine plq_decCall hfs vac_kp vac_fp g2.1 g2.2.1 g2.2.2 hk7
        (hargs_any_buf rfl (fun vs hvs => evs_lv2 hauth7 hrec7 hvs) hk7
          (fun Γ1 p1 hr => bufOK_runT hG2 hr hbr'))
        (fun _ _ _ _ _ _ h => h)
        (fun L o hL => ⟨la_res hL.1 hxs3o o, by
          rw [lookup_resVarEq_ne _ _ (by decide)]; exact hL.2⟩) ?_
      intro vs' callee' hvs' v' st' hst' hsh'
      have hk8 : KP HJ gwJ Γ2 st p2 fs e mg
          (setVarHOLFinite (nm "ok") v' { st' with locals := u7.locals }) :=
        kp_locals hH (kp_of_kpd hst') _
      have hl8 : PlV (setVarHOLFinite (nm "ok") v' { st' with locals := u7.locals }).locals :=
        ⟨la_setv hl7.1 hxs3o v' st', by
          rw [lk_set_ne _ _ (by decide)]; exact hl7.2⟩
      refine plq_iteG (plq_assign hk8 fun v hv => ?_) (plq_skipG hk8 hl8)
      have hv' : v = .val (.word r) := by
        rw [ev_lv] at hv
        have h1 := hl8.1 (nm "rec") (.val (.word r)) (by simp [xs3, List.lookup])
        rw [h1] at hv; exact (Option.some.inj hv).symm
      subst hv'
      exact ⟨la_setv hl8.1 hxs3a _ _, Or.inr (lk_set_self _ _ _)⟩
    · exact hoareG_skip fun _ _ h => by rw [h]; exact hskip s2 hu1s hl2'
  · intro r t hA hk
    exact Or.inr ⟨r, rfl, hA, hk⟩

end


end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.ple_res
#print axioms InitECandidate.Solver.MemSafe.D0.kpd_export
#print axioms InitECandidate.Solver.MemSafe.D0.sd_valid
