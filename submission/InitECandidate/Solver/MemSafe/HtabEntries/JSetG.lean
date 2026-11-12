import InitECandidate.Solver.MemSafe.HtabEntries.JTailG

/-!
# `jset` / `jdel` for any hook family with `JHooks`

The proofs of `JSet.lean` with `guestHooksJ` replaced by `Hk`: **`csumm_jsetG`**,
**`csumm_jdelG`**, `jsetTab_soundG`, `jdelTab_soundG` (same signatures, capabilities and tables
`jsetTab` / `jdelTab`).
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

section calls

variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- `htab_set(t, key, value)` from a tracked state. -/
theorem jset_callG {Hk : Hooks σ} (hJH : JHooks Hk) (hF : FoldOK σ X guestC Hk) (hord0 : p0.Ordered)
    (hL0 : Layout guestC p0 Γ0) {th : Nat} (hth : th ∈ hdrTys) {T K V : BitVec 64} {o0 : Obj}
    (ho0 : o0 ∈ Γ0) (hoT : o0.base = T) (hot : o0.ty = th)
    (hbuf : BufOK guestC Γ0 p0 K.toNat (htKL th)) (hval : Fits Γ0 (valK th) V) :
    ∀ (Γ : Gam) (u : State σ),
      TrkJ Hk Γ0 s0 p0 (jPW Γ0 s0 th (jsetSig th).params
        [.val (.word T), .val (.word K), .val (.word V)]) Γ u →
      LkF T K (some (.val (.word V))) u →
      Hoare σ X (fun x => x = u) jsetCall (fun r t => r = none ∧ ∃ Γ', TrkJ Hk Γ0 s0 p0
        (jPW Γ0 s0 th (jsetSig th).params [.val (.word T), .val (.word K), .val (.word V)]) Γ' t) := by
  intro Γ u htrk hlk
  obtain ⟨q, hq, hmq, hxq, hnfq, hG, -⟩ := id htrk
  obtain ⟨q', hq', hordq, hLq, -⟩ := id hG
  rw [hq] at hq'
  cases hq'
  refine hoare_callD ((csumm_fs (csumm_htab_set hF hJH.mono hJH.htab hth)).and
    (Spec.Inv.funSpec_be _)) ?_
  rintro u4 hs4 rfl vs hvs callee v st ⟨hR, hbe⟩ hst
  rw [evs_cons (ev_lvw hlk.1) (evs_cons (ev_lvw hlk.2.1) (evs_cons (ev_lvw hlk.2.2) evs_nil))] at hvs
  cases hvs
  obtain ⟨x, hx, hxb, hxt, -⟩ := hxq o0 ho0
  have hG3 : G guestC Hk Γ (callEntryStateHOLFinite u4 callee) :=
    Struct.G_congr (s := u4) hJH.lawful rfl rfl rfl rfl hG
  have hval' : ArgOK guestC Γ q [.val (.word T), .val (.word K), .val (.word V)] (valPT th)
      (.val (.word V)) := by
    unfold valPT
    split
    · trivial
    · exact ⟨_, rfl, Struct.fits_ext hxq hval⟩
  obtain ⟨Γ', p1, p1', hc, -⟩ := hR (good_ret v) (nab_ret v) Γ hG3
    ⟨q, hq, argsOK3 ⟨_, rfl, x, hx, hxb.trans hoT, hxt.trans hot⟩
      ⟨_, rfl, bufOK_ext hord0 hordq hmq hxq hnfq hbuf⟩ hval'⟩ reqOK_tab
  refine ⟨rfl, Γ', trkJ_congr hJH.lawful (trkJ_call htrk hord0 hL0 rfl rfl hc
    (fun g _ => by simp [setSig]) (fun a ha => Or.inr (Or.inr (Or.inr ha))) (fun a hpc hpw => ?_)
    (hst.2.1.trans hs4.2.1.symm) hbe) rfl rfl rfl rfl⟩
  rcases capBack hord0 hordq hmq hL0 hLq hnfq capsHT_sub_j hpc hpw with h | h
  · exact Or.inl (Or.inl h)
  · exact Or.inr h

/-- `htab_del(t, key)` from a tracked state. -/
theorem jdel_callG {Hk : Hooks σ} (hJH : JHooks Hk) (hF : FoldOK σ X guestC Hk) (hord0 : p0.Ordered)
    (hL0 : Layout guestC p0 Γ0) {th : Nat} (hth : th ∈ hdrTys) {T K : BitVec 64} {o0 : Obj}
    (ho0 : o0 ∈ Γ0) (hoT : o0.base = T) (hot : o0.ty = th) {vs0 : List (ValueHOL 64)}
    {Lv : Option (ValueHOL 64)} :
    ∀ (Γ : Gam) (u : State σ),
      TrkJ Hk Γ0 s0 p0 (jPW Γ0 s0 th (jdelSig th).params vs0) Γ u → LkF T K Lv u →
      Hoare σ X (fun x => x = u) jdelCall (fun r t => r = none ∧ ∃ Γ', TrkJ Hk Γ0 s0 p0
        (jPW Γ0 s0 th (jdelSig th).params vs0) Γ' t) := by
  intro Γ u htrk hlk
  obtain ⟨q, hq, hmq, hxq, hnfq, hG, -⟩ := id htrk
  obtain ⟨q', hq', hordq, hLq, -⟩ := id hG
  rw [hq] at hq'
  cases hq'
  refine hoare_callD ((csumm_fs (csumm_htab_del hF hJH.htab hth)).and
    (Spec.Inv.funSpec_be _)) ?_
  rintro u4 hs4 rfl vs hvs callee v st ⟨hR, hbe⟩ hst
  rw [evs_cons (ev_lvw hlk.1) (evs_cons (ev_lvw hlk.2.1) evs_nil)] at hvs
  cases hvs
  obtain ⟨x, hx, hxb, hxt, -⟩ := hxq o0 ho0
  have hG3 : G guestC Hk Γ (callEntryStateHOLFinite u4 callee) :=
    Struct.G_congr (s := u4) hJH.lawful rfl rfl rfl rfl hG
  obtain ⟨Γ', p1, p1', hc, -⟩ := hR (good_ret v) (nab_ret v) Γ hG3
    ⟨q, hq, argsOK2 ⟨_, rfl, x, hx, hxb.trans hoT, hxt.trans hot⟩ trivial⟩ reqOK_tab
  refine ⟨rfl, Γ', trkJ_congr hJH.lawful (trkJ_call htrk hord0 hL0 rfl rfl hc
    (fun g _ => by simp [delSig]) (fun a ha => absurd ha argCells_del) (fun a hpc hpw => ?_)
    (hst.2.1.trans hs4.2.1.symm) hbe) rfl rfl rfl rfl⟩
  rcases capBack hord0 hordq hmq hL0 hLq hnfq capsHT_sub_j hpc hpw with h | h
  · exact Or.inl (Or.inl h)
  · exact Or.inr h

end calls

theorem after_getG {Hk : Hooks σ} (hJH : JHooks Hk) (hF : FoldOK σ X guestC Hk) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    (hG0 : G guestC Hk Γ0 s0) (hp0 : ptrsOf s0 = some p0) {PW : BitVec 64 → Prop}
    {th : Nat} {T K : BitVec 64} {o0 : Obj} (ho0 : o0 ∈ Γ0) (hoT : o0.base = T) (hot : o0.ty = th)
    (hw : tabW Γ0 s0 o0)
    (hlT : s0.locals.lookup (nm "t") = some (.val (.word T)))
    (hlK : s0.locals.lookup (nm "key") = some (.val (.word K)))
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {w : ValueHOL 64} {st : State σ}
    (hm : st.memory = (callEntryStateHOLFinite s0 callee).memory)
    (hgl : ∀ g, st.globals.lookup g = (callEntryStateHOLFinite s0 callee).globals.lookup g)
    (hd : st.memaddrs = (callEntryStateHOLFinite s0 callee).memaddrs)
    (hbe : st.be = (callEntryStateHOLFinite s0 callee).be)
    (hR : ∀ v, PanSemResultExact.returned w = .returned v → ∀ T' key,
      ([.val (.word T), .val (.word K)] : List (ValueHOL 64)) = [.val (.word T'), .val (.word key)] →
        Mpt.Leaves.HgRet (callEntryStateHOLFinite s0 callee) T' key v)
    (hsh : shapeEqHOL (shapeOfHOLExact w) (.comb [.one, .one]) = true) :
    ∃ a b : BitVec 64, w = wv [a, b] ∧
      StRG Hk Γ0 s0 p0 PW th T K a b a (s0.locals.lookup (nm "value"))
        (setVarHOLFinite (nm "old") w { st with locals := s0.locals }) := by
  obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 2) hsh
  match ws, hws with
  | [a, b], _ =>
  have hRet := hR (wv [a, b]) rfl T K rfl
  have hgs : st.globals = s0.globals := AllocImpl.hfm_ext (funext hgl)
  have hfv : a ≠ 0 → Fits Γ0 (valK th) b := fun ha => by
    have hwf : Inv.TableWF (callEntryStateHOLFinite s0 callee) T := by
      have := hw.2.2.1; rw [hoT] at this; exact this
    have hlv := hg_leafVal hwf hRet ha
    have := hw.2.2.2.2.1 b (by rw [hoT]; exact hlv)
    rw [hot] at this
    exact this
  refine ⟨a, b, rfl, ⟨lk_set_self _ _ _, ⟨(lk_set_ne _ _ (by decide)).trans hlT,
    (lk_set_ne _ _ (by decide)).trans hlK, lk_set_ne _ _ (by decide)⟩, ?_, Γ0, ?_,
    ⟨o0, ho0, hoT, hot⟩, hfv⟩⟩
  · show rd st.memory (T + BitVec.ofNat 64 0) = _
    rw [hm]
    have := hw.2.2.2.2.2
    unfold KLOK at this
    rw [hoT, hot] at this
    exact this
  · exact Struct.trk_congr hJH.lawful (Struct.trk_refl hG0 hp0) hm hgs hd hbe

/-- **The `jset` entry** for a heap header type `th`. -/
theorem csumm_jsetG {Hk : Hooks σ} (hJH : JHooks Hk) (hF : FoldOK σ X guestC Hk) {th : Nat} (hth : th ∈ hdrTys)
    (hts : th ≠ tHTs20) : CSumm σ X guestC Hk (nm "jset") (jsetSig th) (jCaps th) := by
  refine sumSpecA_of_returns (noExc_jset hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hreq
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, B, C, rfl, sa, sb, sc, hA, hB, hC⟩ :=
    Spec.Inv.lookupCode_three_full code_jset (by decide) (by decide) (by decide) hl'
  obtain ⟨T, rfl⟩ := val_of_shapeEq_one sa
  obtain ⟨K, rfl⟩ := val_of_shapeEq_one sb
  obtain ⟨V, rfl⟩ := val_of_shapeEq_one sc
  obtain ⟨p0, hp0, hA0⟩ := hargs
  obtain ⟨⟨o0, ho0, hoT, hot⟩, hbuf, hval⟩ := setArgs hA0
  obtain ⟨e0, he0, het, hej⟩ := hreq capJw List.mem_cons_self (by decide)
  have hG := hG0
  obtain ⟨pG, hpG, hord0, hL0, -, -, -, hW⟩ := hG
  have hpp : pG = p0 := Option.some.inj (hpG.symm.trans hp0)
  subst hpp
  have hko : hkOf o0.ty = .tab := by rw [hot]; exact hkOf_of_tab hth
  have hw : tabW Γ0 s0 o0 := hJH.htab.get Γ0 s0 o0 hko (hW o0 ho0)
  obtain ⟨-, -, n0, c0, hn0, hc0, -, hcs, hce, -⟩ := hJH.jr _ _ _ (hW e0 he0) het hej
  have hJ := jFix_of (th := th) (ps := (jsetSig th).params)
    (vs := [.val (.word T), .val (.word K), .val (.word V)]) he0 het hej hn0 hc0 hcs hce
  have hlT : s0.locals.lookup (nm "t") = some (.val (.word T)) := by rw [hloc]; exact hA
  have hlK : s0.locals.lookup (nm "key") = some (.val (.word K)) := by rw [hloc]; exact hB
  have hlV : s0.locals.lookup (nm "value") = some (.val (.word V)) := by rw [hloc]; exact hC
  have H : Hoare σ X (fun u => u = s0) jsetBody (JQG Hk Γ0 s0 pG (jPW Γ0 s0 th (jsetSig th).params
      [.val (.word T), .val (.word K), .val (.word V)])) := by
    unfold jsetBody
    refine Mpt.Leaves.hoare_decCallL (funSpec_get_j hF.hX) (jq_localsG hJH)
      fun s _ hs avs havs callee' w st ⟨hm, hgl, hd, hbe, hR⟩ _ hsh => ?_
    subst s
    rw [evs_cons (ev_lvw hlT) (evs_cons (ev_lvw hlK) evs_nil)] at havs
    cases havs
    obtain ⟨a, b, rfl, hSt⟩ := after_getG hJH hF hG0 hpG ho0 hoT hot hw hlT hlK hm hgl hd hbe hR hsh
    rw [hlV] at hSt
    refine hoare_pre (jTail_hoareG hJH hF hord0 hL0 hJ hth hts (code := 4) (a := a) (b := b) (fun _ h => ev_old0 h)
      (jset_callG hJH hF hord0 hL0 hth ho0 hoT hot hbuf hval)) fun t _ ht => ?_
    subst ht
    exact hSt
  have H' := H s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H'
  obtain ⟨Γ', ht⟩ := H' v rfl
  obtain ⟨p', hc⟩ := sumCore_of_trkJA (sg := jsetSig th)
    (vs := [.val (.word T), .val (.word K), .val (.word V)]) (r := r) ht hpG List.mem_cons_self rfl rfl
  exact ⟨Γ', pG, p', hc, trivial⟩

/-- **The `jdel` entry** for a heap header type `th`. -/
theorem csumm_jdelG {Hk : Hooks σ} (hJH : JHooks Hk) (hF : FoldOK σ X guestC Hk) {th : Nat} (hth : th ∈ hdrTys)
    (hts : th ≠ tHTs20) : CSumm σ X guestC Hk (nm "jdel") (jdelSig th) (jCaps th) := by
  refine sumSpecA_of_returns (noExc_jdel hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hreq
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, B, rfl, sa, sb, hA, hB⟩ := lookupCode_two code_jdel (by decide) hl'
  obtain ⟨T, rfl⟩ := val_of_shapeEq_one sa
  obtain ⟨K, rfl⟩ := val_of_shapeEq_one sb
  obtain ⟨p0, hp0, -, hA0⟩ := hargs
  obtain ⟨w0, ew, o0, ho0, hoT, hot⟩ := hA0 0 _ _ rfl rfl
  simp only [wordOf, Option.some.injEq] at ew
  subst ew
  obtain ⟨e0, he0, het, hej⟩ := hreq capJw List.mem_cons_self (by decide)
  have hG := hG0
  obtain ⟨pG, hpG, hord0, hL0, -, -, -, hW⟩ := hG
  have hpp : pG = p0 := Option.some.inj (hpG.symm.trans hp0)
  subst hpp
  have hko : hkOf o0.ty = .tab := by rw [hot]; exact hkOf_of_tab hth
  have hw : tabW Γ0 s0 o0 := hJH.htab.get Γ0 s0 o0 hko (hW o0 ho0)
  obtain ⟨-, -, n0, c0, hn0, hc0, -, hcs, hce, -⟩ := hJH.jr _ _ _ (hW e0 he0) het hej
  have hJ := jFix_of (th := th) (ps := (jdelSig th).params)
    (vs := [.val (.word T), .val (.word K)]) he0 het hej hn0 hc0 hcs hce
  have hlT : s0.locals.lookup (nm "t") = some (.val (.word T)) := by rw [hloc]; exact hA
  have hlK : s0.locals.lookup (nm "key") = some (.val (.word K)) := by rw [hloc]; exact hB
  have H : Hoare σ X (fun u => u = s0) jdelBody (JQG Hk Γ0 s0 pG (jPW Γ0 s0 th (jdelSig th).params
      [.val (.word T), .val (.word K)])) := by
    unfold jdelBody
    refine Mpt.Leaves.hoare_decCallL (funSpec_get_j hF.hX) (jq_localsG hJH)
      fun s _ hs avs havs callee' w st ⟨hm, hgl, hd, hbe, hR⟩ _ hsh => ?_
    subst s
    rw [evs_cons (ev_lvw hlT) (evs_cons (ev_lvw hlK) evs_nil)] at havs
    cases havs
    obtain ⟨a, b, rfl, hSt⟩ := after_getG hJH (PW := jPW Γ0 s0 th (jdelSig th).params
      [.val (.word T), .val (.word K)]) hF hG0 hpG ho0 hoT hot hw hlT hlK hm hgl hd hbe hR hsh
    refine hoare_pre (P := StRG Hk Γ0 s0 pG _ th T K a b a (s0.locals.lookup (nm "value"))) ?_
      fun t _ ht => by subst ht; exact hSt
    refine Mpt.Leaves.hoare_retGuard (fun t _ hP w _ => fun v' _ => ?_) ?_
    · obtain ⟨-, -, -, Γ, hT, -⟩ := hP
      exact ⟨Γ, trkJ_congr hJH.lawful (trkJ_of_trk hT) rfl rfl rfl rfl⟩
    refine hoare_pre (jTail_hoareG hJH hF hord0 hL0 hJ hth hts (code := 5) (K := K) (Lv := s0.locals.lookup (nm "value")) (F := 1) (a := a) (b := b)
      (fun u _ => ev_cw u 1) (jdel_callG hJH hF hord0 hL0 hth ho0 hoT hot)) ?_
    rintro t _ ⟨⟨hold, hlk, hkl, Γ, hT, htab, hfv⟩, hc⟩
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    rw [ev_old0 hold] at hx
    rw [ev_cw] at hy
    cases hx; cases hy
    have ha := Spec.equal_false hxy
    exact ⟨hold, hlk, hkl, Γ, hT, htab, fun _ => hfv ha⟩
  have H' := H s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H'
  obtain ⟨Γ', ht⟩ := H' v rfl
  obtain ⟨p', hc⟩ := sumCore_of_trkJA (sg := jdelSig th)
    (vs := [.val (.word T), .val (.word K)]) (r := r) ht hpG List.mem_cons_self rfl rfl
  exact ⟨Γ', pG, p', hc, trivial⟩

theorem jsetTab_soundG {Hk : Hooks σ} (hJH : JHooks Hk) (hF : FoldOK σ X guestC Hk) :
    CTabSound σ X guestC Hk jsetTab := by
  intro f sg cs hm
  obtain ⟨th, hth, he⟩ := List.mem_map.mp hm
  simp only [Prod.mk.injEq] at he
  obtain ⟨rfl, rfl, rfl⟩ := he
  exact csumm_jsetG hJH hF (jTys_mem hth).1 (jTys_mem hth).2

theorem jdelTab_soundG {Hk : Hooks σ} (hJH : JHooks Hk) (hF : FoldOK σ X guestC Hk) :
    CTabSound σ X guestC Hk jdelTab := by
  intro f sg cs hm
  obtain ⟨th, hth, he⟩ := List.mem_map.mp hm
  simp only [Prod.mk.injEq] at he
  obtain ⟨rfl, rfl, rfl⟩ := he
  exact csumm_jdelG hJH hF (jTys_mem hth).1 (jTys_mem hth).2

end InitECandidate.Solver.MemSafe.HtabEntries
