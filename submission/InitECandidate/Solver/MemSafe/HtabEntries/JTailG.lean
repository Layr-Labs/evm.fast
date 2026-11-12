import InitECandidate.Solver.MemSafe.HtabEntries.StateRestoreG

/-!
# The shared tail of `jset` / `jdel` for any hook family with `JHooks`

The proofs of `JTail.lean` with `guestHooksJ` replaced by `Hk` (`JQG`, `StSG`, `StRG`,
`jst_storeG`, `jst_storesG`, `jst_restG`, **`jTail_hoareG`**).
-/

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The post of the bodies: every return ends tracked. -/
def JQG (Hk : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (PW : BitVec 64 → Prop)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ Γ', TrkJ Hk Γ0 s0 p0 PW Γ' t

theorem jq_localsG {Hk : Hooks σ} (hJH : JHooks Hk) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop}
    (r : Option (PanSemResultExact 64)) (t : State σ) (L : HolFiniteMapExact MlS (ValueHOL 64))
    (h : JQG Hk Γ0 s0 p0 PW r t) : JQG Hk Γ0 s0 p0 PW r { t with locals := L } := by
  intro v hv
  obtain ⟨Γ', ht⟩ := h v hv
  exact ⟨Γ', trkJ_congr hJH.lawful ht rfl rfl rfl rfl⟩

section tail

variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop} {e0 : Obj} {n0 c0 : BitVec 64}

theorem gword_trkG {Hk : Hooks σ} (hJH : JHooks Hk) {PW : BitVec 64 → Prop} {Γ : Gam} {u : State σ}
    (h : Struct.Trk guestC Hk Γ0 s0 p0 PW Γ u) {g : MlS} (hg : g ∈ guestC.PG) :
    gword u g = gword s0 g := by
  obtain ⟨-, -, -, -, -, -, -, hpg, -⟩ := h
  unfold gword; rw [hpg g hg]

/-- The state between the record stores: `k` stores done. -/
def StSG (Hk : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (PW : BitVec 64 → Prop) (th : Nat) (e0 : Obj)
    (n0 T K q a b F : BitVec 64) (Lv : Option (ValueHOL 64)) (k : Nat)
    (u : State σ) : Prop :=
  u.locals.lookup (nm "r") = some (.val (.word (jc e0.base (4 * n0.toNat)))) ∧
  u.locals.lookup (nm "kc") = some (.val (.word q)) ∧
  u.locals.lookup (nm "old") = some (wv [a, b]) ∧ LkF T K Lv u ∧
  ∃ Γ, Struct.Trk guestC Hk Γ0 s0 p0 PW Γ u ∧ (∃ x ∈ Γ, x.base = T ∧ x.ty = th) ∧
    (∃ y ∈ Γ, y.base = q ∧ y.ty = tB8 ∧ htKL th ≤ y.size) ∧ (F ≠ 0 → Fits Γ (valK th) b) ∧
    ∀ i, i < k → rd u.memory (jc e0.base (4 * n0.toNat + i)) = recW T q F b i

/-- One record store. -/
theorem jst_storeG {Hk : Hooks σ} (hJH : JHooks Hk) (hJ : JFix Γ0 s0 PW e0 n0 c0) (hlt : n0.toNat < c0.toNat) {th : Nat}
    {T K q a b F : BitVec 64} {Lv : Option (ValueHOL 64)} {k : Nat} (hk : k < 4)
    {ae ve : ExpHOL 64}
    (ha : ∀ u : State σ, StSG Hk Γ0 s0 p0 PW th e0 n0 T K q a b F Lv k u →
      ev u ae = some (.val (.word (jc e0.base (4 * n0.toNat + k)))))
    (hv : ∀ u : State σ, StSG Hk Γ0 s0 p0 PW th e0 n0 T K q a b F Lv k u →
      ev u ve = some (.val (.word (recW T q F b k)))) :
    Hoare σ X (StSG Hk Γ0 s0 p0 PW th e0 n0 T K q a b F Lv k) (.store ae ve)
      (fun r u => r = none ∧ StSG Hk Γ0 s0 p0 PW th e0 n0 T K q a b F Lv (k + 1) u) := by
  refine Inv.hoare_store_w (fun _ => jc e0.base (4 * n0.toNat + k)) (fun _ => recW T q F b k)
    (fun u _ hu w hw => by rw [ha u hu] at hw; cases hw; rfl)
    (fun u _ hu v hv' => by rw [hv u hu] at hv'; exact (Option.some.inj hv').symm) ?_
  intro u _ ⟨hr, hkc, hold, hlk, Γ, hT, htab, hkcO, hfv, hrec⟩
  refine ⟨rfl, hr, hkc, hold, hlk, Γ, ?_, htab, hkcO, hfv, fun i hi => ?_⟩
  · refine trk_jstoreG hJH hT hJ.he0 hJ.het ((gword_trkG hJH hT gJ_pg).trans hJ.hej)
      ((gword_trkG hJH hT gJn_pg).trans hJ.hn0) ((gword_trkG hJH hT gJc_pg).trans hJ.hc0) hlt hk
      (hJ.hPW _ (by omega)) _
  · show rd (Inv.upd u.memory _ _) _ = _
    by_cases hik : i = k
    · subst hik; exact rdM_upd_self _ _ _
    · rw [rdM_upd_ne (jrecA_ne hJ hlt (by omega) hk hik)]
      exact hrec i (by omega)

/-- **The four record stores, the increment, the table call and the return.** -/
theorem jst_storesG {Hk : Hooks σ} (hJH : JHooks Hk) (hJ : JFix Γ0 s0 PW e0 n0 c0) (hlt : n0.toNat < c0.toNat) {th : Nat}
    (hth : th ∈ hdrTys) (hts : th ≠ tHTs20)
    {T K q a b F : BitVec 64} {Lv : Option (ValueHOL 64)} {fe : ExpHOL 64}
    (hfe : ∀ u : State σ, u.locals.lookup (nm "old") = some (wv [a, b]) →
      ev u fe = some (.val (.word F)))
    {call : ProgHOL 64}
    (hcall : ∀ (Γ : Gam) (u : State σ), TrkJ Hk Γ0 s0 p0 PW Γ u → LkF T K Lv u →
      Hoare σ X (fun x => x = u) call
        (fun r t => r = none ∧ ∃ Γ', TrkJ Hk Γ0 s0 p0 PW Γ' t)) :
    Hoare σ X (StSG Hk Γ0 s0 p0 PW th e0 n0 T K q a b F Lv 0) (jStores fe call) (JQG Hk Γ0 s0 p0 PW) := by
  unfold jStores
  have step : ∀ {k : Nat} {ae ve : ExpHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
      {rest : ProgHOL 64}, k < 4 →
      (∀ u : State σ, StSG Hk Γ0 s0 p0 PW th e0 n0 T K q a b F Lv k u →
        ev u ae = some (.val (.word (jc e0.base (4 * n0.toNat + k))))) →
      (∀ u : State σ, StSG Hk Γ0 s0 p0 PW th e0 n0 T K q a b F Lv k u →
        ev u ve = some (.val (.word (recW T q F b k)))) →
      Hoare σ X (StSG Hk Γ0 s0 p0 PW th e0 n0 T K q a b F Lv (k + 1)) rest Q →
      Hoare σ X (StSG Hk Γ0 s0 p0 PW th e0 n0 T K q a b F Lv k) (.seq (.store ae ve) rest) Q := by
    intro k ae ve Q rest hk ha hv hrest
    exact hoare_seq (jst_storeG hJH hJ hlt hk ha hv) (fun _ _ _ hr _ h => absurd h.1 hr)
      (hoare_pre hrest fun _ _ h => h.2)
  refine step (by decide) (fun u hu => by rw [Nat.add_zero]; exact ev_lvw hu.1)
    (fun u hu => ev_lvw hu.2.2.2.1.1) ?_
  refine step (by decide) (fun u hu => by rw [ev_add2 (ev_lvw hu.1) (ev_cw _ 8), jc_add1])
    (fun u hu => ev_lvw hu.2.1) ?_
  refine step (by decide) (fun u hu => by rw [ev_add2 (ev_lvw hu.1) (ev_cw _ 16), jc_add2])
    (fun u hu => hfe u hu.2.2.1) ?_
  refine step (by decide) (fun u hu => by rw [ev_add2 (ev_lvw hu.1) (ev_cw _ 24), jc_add3])
    (fun u hu => ev_old1 hu.2.2.1) ?_
  -- the increment
  refine hoare_seq (R := fun r u => r = none ∧ ∃ Γ, TrkJ Hk Γ0 s0 p0 PW Γ u ∧ LkF T K Lv u)
    ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assignK fun u _ hu v hv _ => ?_
    obtain ⟨-, -, -, hlk, Γ, hT, ⟨x, hx, hxb, hxt⟩, ⟨y, hy, hyb, hyt, hys⟩, hfv, hrec⟩ := hu
    have hgn : gword u gJn = some n0 := (gword_trkG hJH hT gJn_pg).trans hJ.hn0
    have hgn' : u.globals.lookup gJn = some (.val (.word n0)) := AllocImpl.lookup_of_gword hgn
    rw [ev_add2 (ev_gv (g := nm "journal_n") hgn') (ev_cw _ 1)] at hv
    cases hv
    obtain ⟨e, he, heb, -, -⟩ := Struct.trk_ext hT e0 hJ.he0
    have r0 := hrec 0 (by decide)
    have r1 := hrec 1 (by decide)
    have r2 := hrec 2 (by decide)
    have r3 := hrec 3 (by decide)
    simp only [Nat.add_zero, recW] at r0 r1 r2 r3
    refine ⟨rfl, Γ, trkJ_incG hJH (trkJ_of_trk hT) hgn' he
      (by rw [heb]; exact (gword_trkG hJH hT gJ_pg).trans hJ.hej) (fun c hc => ?_) ?_, hlk⟩
    · rw [(gword_trkG hJH hT gJc_pg).trans hJ.hc0] at hc
      cases hc
      exact hlt
    · rw [heb]
      refine ⟨x, hx, by rw [r0]; exact hxb, by rw [hxt]; exact hkOf_of_tab hth, by rw [hxt]; exact hts,
        ⟨y, hy, by rw [r1]; exact hyb, hyt, by rw [hxt]; exact hys⟩, fun hf => ?_⟩
      rw [r2] at hf
      rw [r3, hxt]
      exact hfv hf
  -- the call and the return
  refine hoare_pre (P := fun u => ∃ Γ, TrkJ Hk Γ0 s0 p0 PW Γ u ∧ LkF T K Lv u) ?_
    fun _ _ h => h.2
  refine hoare_seq (R := fun r t => r = none ∧ ∃ Γ', TrkJ Hk Γ0 s0 p0 PW Γ' t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · intro u hu ⟨Γ, hT, hlk⟩ htr
    exact hcall Γ u hT hlk u hu rfl htr
  · refine hoare_return fun u _ ⟨_, Γ', hT⟩ v _ => fun w _ => ⟨Γ', ?_⟩
    exact trkJ_congr hJH.lawful hT rfl rfl rfl rfl

/-- The state after the guard. -/
def StRG (Hk : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (PW : BitVec 64 → Prop) (th : Nat)
    (T K a b F : BitVec 64) (Lv : Option (ValueHOL 64)) (u : State σ) : Prop :=
  u.locals.lookup (nm "old") = some (wv [a, b]) ∧ LkF T K Lv u ∧
  rd u.memory (T + BitVec.ofNat 64 0) = BitVec.ofNat 64 (htKL th) ∧
  ∃ Γ, Struct.Trk guestC Hk Γ0 s0 p0 PW Γ u ∧ (∃ x ∈ Γ, x.base = T ∧ x.ty = th) ∧
    (F ≠ 0 → Fits Γ (valK th) b)

/-- **`klen`, the key copy, `memcpy` and the record pointer**, then the stores. -/
theorem jst_restG {Hk : Hooks σ} (hJH : JHooks Hk) (hF : FoldOK σ X guestC Hk) (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    (hJ : JFix Γ0 s0 PW e0 n0 c0) (hlt : n0.toNat < c0.toNat) {th : Nat}
    (hth : th ∈ hdrTys) (hts : th ≠ tHTs20)
    {T K a b F : BitVec 64} {Lv : Option (ValueHOL 64)} {fe : ExpHOL 64}
    (hfe : ∀ u : State σ, u.locals.lookup (nm "old") = some (wv [a, b]) →
      ev u fe = some (.val (.word F)))
    {call : ProgHOL 64}
    (hcall : ∀ (Γ : Gam) (u : State σ), TrkJ Hk Γ0 s0 p0 PW Γ u → LkF T K Lv u →
      Hoare σ X (fun x => x = u) call
        (fun r t => r = none ∧ ∃ Γ', TrkJ Hk Γ0 s0 p0 PW Γ' t)) :
    Hoare σ X (StRG Hk Γ0 s0 p0 PW th T K a b F Lv) (jRest fe call) (JQG Hk Γ0 s0 p0 PW) := by
  have hH := hJH.lawful (σ := σ)
  have hA : Struct.AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  have hKL : (BitVec.ofNat 64 (htKL th)).toNat = htKL th := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (htKL_lt th)]
  have hK0 := htKL_pos hth
  unfold jRest
  refine Mpt.Leaves.hoare_decL (jq_localsG hJH) fun u _ ⟨hold, hlk, hkl, Γ, hT, htab, hfv⟩ v hv _ => ?_
  have hv' := ev_ld (ev_add2 (ev_lvw hlk.1) (ev_cw _ 0)) hv
  rw [hkl] at hv'
  subst hv'
  -- `kc = alloc(klen)`
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (allocSpec_alloc hF.hX) (Frames.funSpec_dom _)) (jq_localsG hJH)
    fun s _ hs vs hvs callee v st ⟨hAl, hd, hbe⟩ _ _ => ?_
  subst hs
  have hl1 : ∀ x, x ≠ nm "klen" → (setVarHOLFinite (nm "klen") (.val (.word (BitVec.ofNat 64 (htKL th)))) u).locals.lookup x =
      u.locals.lookup x := fun x hx => lk_set_ne _ _ (Ne.symm hx)
  rw [evs_cons (ev_lvw (lk_set_self _ _ _)) evs_nil] at hvs
  cases hvs
  obtain ⟨p, hps, -, -, -, ⟨q0, hq0, hord, -⟩, -⟩ := id hT
  rw [hps] at hq0
  cases hq0
  have hpe : ptrsOf (callEntryStateHOLFinite (setVarHOLFinite (nm "klen")
      (.val (.word (BitVec.ofNat 64 (htKL th)))) u) callee) = some p := by
    rw [show ptrsOf (callEntryStateHOLFinite (setVarHOLFinite (nm "klen")
      (.val (.word (BitVec.ofNat 64 (htKL th)))) u) callee) = ptrsOf u from Frames.ptrsOf_congr rfl]
    exact hps
  obtain ⟨hm, hgl, p', hp', hord', hmo, hret⟩ := hAl (by simp [Good]) _ p rfl hpe hord
  obtain ⟨q, rfl, hq8, hlive, hna⟩ := hret _ rfl
  rw [hKL] at hlive hna
  set sz := 8 * ((htKL th + 7) / 8) with hsz
  have hp8 := hord'.2.2.2.2.2.1
  have hlive' : Region.Live p' Region.heap q.toNat sz := by
    obtain ⟨h1, h2⟩ := hlive
    refine ⟨h1, ?_⟩
    omega
  have hna' : ∀ a, q.toNat ≤ a → a < q.toNat + sz → ¬ p.Allocated a := by
    intro a h1 h2 hal
    have hq := hna q.toNat (le_refl _) (by omega)
    obtain ⟨b1, b2, b3, b4, b5, -, -, -⟩ := hord
    obtain ⟨d1, d2, -, -, -, -, -, -⟩ := hord'
    obtain ⟨m1, m2, m3⟩ := hmo
    unfold Ptrs.Allocated at hal hq
    have := hlive.1
    have := hlive'.2
    omega
  have hT1 := Struct.trk_alloc_obj (ty := tB8) (n := sz) hH hJH.mono hA hT rfl rfl hpe hm hgl
    hp' hord' hmo hd hbe hq8 (by omega) (by omega) (by show 8 ≤ sz; omega) rfl hlive' hna'
    b8_scalar b8_untagged hJH.b8
  set u1 := setVarHOLFinite (nm "kc") (.val (.word q)) { st with locals :=
    (setVarHOLFinite (nm "klen") (.val (.word (BitVec.ofNat 64 (htKL th)))) u).locals } with hu1
  have hT1' : Struct.Trk guestC Hk Γ0 s0 p0 PW (Γ ++ [⟨q, tB8, sz⟩]) u1 :=
    Struct.trk_congr hH hT1 rfl rfl rfl rfl
  have hl2 : ∀ x, x ≠ nm "kc" → x ≠ nm "klen" → u1.locals.lookup x = u.locals.lookup x :=
    fun x h1 h2 => (lk_set_ne _ _ (Ne.symm h1)).trans (hl1 x h2)
  have hkc1 : u1.locals.lookup (nm "kc") = some (.val (.word q)) := lk_set_self _ _ _
  have hklen1 : u1.locals.lookup (nm "klen") = some (.val (.word (BitVec.ofNat 64 (htKL th)))) :=
    (lk_set_ne _ _ (by decide)).trans (lk_set_self _ _ _)
  have hlk1 : LkF T K Lv u1 :=
    ⟨(hl2 _ (by decide) (by decide)).trans hlk.1, (hl2 _ (by decide) (by decide)).trans hlk.2.1,
      (hl2 _ (by decide) (by decide)).trans hlk.2.2⟩
  have hold1 : u1.locals.lookup (nm "old") = some (wv [a, b]) :=
    (hl2 _ (by decide) (by decide)).trans hold
  have hy1 : (⟨q, tB8, sz⟩ : Obj) ∈ Γ ++ [⟨q, tB8, sz⟩] := List.mem_append_right _ (List.mem_singleton_self _)
  have hx1 : Ext Γ (Γ ++ [⟨q, tB8, sz⟩]) := Struct.ext_snoc Γ _
  -- `memcpy(kc, key, klen)`
  refine hoare_pre (P := fun t => t = u1) ?_ fun t _ ht => ht
  refine hoare_seq (R := fun r t => r = none ∧ t.locals = u1.locals ∧ ∃ Γ', Struct.Trk guestC Hk
      Γ0 s0 p0 PW Γ' t ∧ (∃ x ∈ Γ', x.base = T ∧ x.ty = th) ∧
      (∃ y ∈ Γ', y.base = q ∧ y.ty = tB8 ∧ htKL th ≤ y.size) ∧ (F ≠ 0 → Fits Γ' (valK th) b))
    ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callD (FunSpec.and (Struct.sumSpec_rel (Helpers.summ_memcpy hH
      Helpers.tagSlots_guestC hF.hX hF.hal)) (Frames.funSpec_dom _)) ?_
    rintro s _ hs vs hvs callee v st2 ⟨⟨hS, -⟩, hd2, hbe2⟩ _
    subst hs
    rw [evs_cons (ev_lvw hkc1) (evs_cons (ev_lvw hlk1.2.1) (evs_cons (ev_lvw hklen1) evs_nil))] at hvs
    cases hvs
    have hG1 := Struct.trk_G hT1'
    have hGe : G guestC Hk (Γ ++ [⟨q, tB8, sz⟩]) (callEntryStateHOLFinite u1 callee) :=
      Struct.G_congr (s := u1) hH rfl rfl rfl rfl hG1
    obtain ⟨pp, hpp, hordp, hLp, -⟩ := id hG1
    have hpe1 : ptrsOf (callEntryStateHOLFinite u1 callee) = some pp := by
      rw [show ptrsOf (callEntryStateHOLFinite u1 callee) = ptrsOf u1 from Frames.ptrsOf_congr rfl]
      exact hpp
    have hyhi : (⟨q, tB8, sz⟩ : Obj).lo + 1 * (BitVec.ofNat 64 (htKL th)).toNat + 0 ≤
        (⟨q, tB8, sz⟩ : Obj).hi := by
      unfold Obj.lo Obj.hi; dsimp only; rw [hKL]; omega
    have hsc : ∀ a, Overlap q.toNat (1 * (BitVec.ofNat 64 (htKL th)).toNat + 0) a →
        SCell guestC (Γ ++ [⟨q, tB8, sz⟩]) a := fun a ha =>
      Struct.overlap_scell hordp hLp hy1 b8_scalar (le_refl _) hyhi ha
    have hargs : ArgsOK guestC (Γ ++ [⟨q, tB8, sz⟩]) pp Helpers.sigMemcpy.params
        [.val (.word q), .val (.word K), .val (.word (BitVec.ofNat 64 (htKL th)))] := by
      refine ⟨rfl, fun i pt w hpt hw => ?_⟩
      rcases i with _ | _ | _ | i <;> simp [Helpers.sigMemcpy] at hpt hw <;> subst hpt <;> subst hw
      · exact ⟨q, _, rfl, rfl, fun a ha => Or.inl (hsc a ha)⟩
      · trivial
      · trivial
    obtain ⟨Γ', q1, q2, hc, -⟩ := hS (by simp [Good]) _ hGe ⟨pp, hpe1, hargs⟩ trivial
    have hq1 : q1 = pp := by have := hc.1; rw [hpe1] at this; exact (Option.some.inj this).symm
    subst hq1
    have hT2 := Struct.trk_call hT1' hord0 hL0 rfl rfl hc (fun g _ => by simp [Helpers.sigMemcpy])
      (fun a ha => Or.inl (Struct.sCell_wCell (hsc a (Struct.argCells_memcpy (gr := false) ha))))
      (fun a _ h => h.elim) hd2 hbe2
    have hx2 := hc.2.2.2.1
    obtain ⟨x, hx, hxb, hxt⟩ := htab
    obtain ⟨x', hx', hxb', hxt', -⟩ := hx2 x (List.mem_append_left _ hx)
    obtain ⟨y', hy', hyb', hyt', hys'⟩ := hx2 _ hy1
    refine ⟨rfl, rfl, Γ', Struct.trk_congr hH hT2 rfl rfl rfl rfl, ⟨x', hx', hxb'.trans hxb, hxt'.trans hxt⟩,
      ⟨y', hy', hyb', hyt', ?_⟩, fun hf => Struct.fits_ext hx2 (Struct.fits_ext hx1 (hfv hf))⟩
    show htKL th ≤ y'.size
    have : htKL th ≤ sz := by omega
    exact le_trans this hys'
  -- the record pointer
  refine hoare_pre (P := fun t => t.locals = u1.locals ∧ ∃ Γ', Struct.Trk guestC Hk
      Γ0 s0 p0 PW Γ' t ∧ (∃ x ∈ Γ', x.base = T ∧ x.ty = th) ∧
      (∃ y ∈ Γ', y.base = q ∧ y.ty = tB8 ∧ htKL th ≤ y.size) ∧ (F ≠ 0 → Fits Γ' (valK th) b)) ?_
    fun _ _ h => h.2
  refine Mpt.Leaves.hoare_decL (jq_localsG hJH) fun u2 _ ⟨hl2', Γ2, hT2, htab2, hkc2, hfv2⟩ vr hvr _ => ?_
  have hgj : u2.globals.lookup (nm "journal") = some (.val (.word e0.base)) :=
    AllocImpl.lookup_of_gword ((gword_trkG hJH hT2 gJ_pg).trans hJ.hej)
  have hgn : u2.globals.lookup (nm "journal_n") = some (.val (.word n0)) :=
    AllocImpl.lookup_of_gword ((gword_trkG hJH hT2 gJn_pg).trans hJ.hn0)
  have hb32 : 32 * (n0.toNat + 1) ≤ 2 ^ 64 := by
    have := hJ.hce
    have : scratchEnd < 2 ^ 64 := by decide
    omega
  unfold jRec at hvr
  rw [ev_add2 (ev_gv hgj) (ev_mul2 (ev_gv hgn) (ev_cw _ 32)), jc_rec hb32] at hvr
  cases hvr
  refine hoare_pre (jst_storesG hJH (q := q) hJ hlt hth hts hfe hcall) fun t _ ht => ?_
  subst ht
  refine ⟨lk_set_self _ _ _, ?_, ?_, ?_, Γ2, Struct.trk_congr hH hT2 rfl rfl rfl rfl, htab2, hkc2, hfv2,
    fun i hi => absurd hi (Nat.not_lt_zero _)⟩
  · rw [lk_set_ne _ _ (by decide), hl2']; exact hkc1
  · rw [lk_set_ne _ _ (by decide), hl2']; exact hold1
  · exact lkF_set (lkF_locals hlk1 hl2') (by decide) (by decide) (by decide) _

/-- **The shared tail** of `jset` / `jdel` (the guard, then `jRest`). -/
theorem jTail_hoareG {Hk : Hooks σ} (hJH : JHooks Hk) (hF : FoldOK σ X guestC Hk) (hord0 : p0.Ordered)
    (hL0 : Layout guestC p0 Γ0) (hJ : JFix Γ0 s0 PW e0 n0 c0) {th : Nat}
    (hth : th ∈ hdrTys) (hts : th ≠ tHTs20) {code : Nat}
    {T K a b F : BitVec 64} {Lv : Option (ValueHOL 64)} {fe : ExpHOL 64}
    (hfe : ∀ u : State σ, u.locals.lookup (nm "old") = some (wv [a, b]) →
      ev u fe = some (.val (.word F)))
    {call : ProgHOL 64}
    (hcall : ∀ (Γ : Gam) (u : State σ), TrkJ Hk Γ0 s0 p0 PW Γ u → LkF T K Lv u →
      Hoare σ X (fun x => x = u) call
        (fun r t => r = none ∧ ∃ Γ', TrkJ Hk Γ0 s0 p0 PW Γ' t)) :
    Hoare σ X (StRG Hk Γ0 s0 p0 PW th T K a b F Lv) (.seq (jTrap code) (jRest fe call))
      (JQG Hk Γ0 s0 p0 PW) := by
  refine hoare_seq (R := fun r u => r = none ∧ StRG Hk Γ0 s0 p0 PW th T K a b F Lv u ∧
      n0.toNat < c0.toNat) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_callD (funSpec_trap_with hF.hX) fun _ _ _ _ _ _ _ _ hR _ => ?_
      exact (TrapR.not_returned (hR (by simp [Good]))).elim
    · refine hoare_skip fun u _ ⟨hu, hc⟩ => ⟨rfl, hu, ?_⟩
      obtain ⟨-, -, -, Γ, hT, -⟩ := hu
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      have hgn : u.globals.lookup (nm "journal_n") = some (.val (.word n0)) :=
        AllocImpl.lookup_of_gword ((gword_trkG hJH hT gJn_pg).trans hJ.hn0)
      have hgc : u.globals.lookup (nm "journal_cap") = some (.val (.word c0)) :=
        AllocImpl.lookup_of_gword ((gword_trkG hJH hT gJc_pg).trans hJ.hc0)
      rw [ev_gv hgn] at hx
      rw [ev_gv hgc] at hy
      cases hx; cases hy
      exact Inv.notLower_false hxy
  · refine hoare_pre (P := fun u => StRG Hk Γ0 s0 p0 PW th T K a b F Lv u ∧ n0.toNat < c0.toNat) ?_
      fun _ _ h => h.2
    refine Mpt.Leaves.hoare_pure fun hlt => ?_
    exact jst_restG hJH hF hord0 hL0 hJ hlt hth hts hfe hcall

end tail

end InitECandidate.Solver.MemSafe.HtabEntries
