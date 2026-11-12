import InitECandidate.Solver.MemSafe.HtabEntries.JTail

/-!
# `jset` / `jdel` as capability entries (journal family)

For every heap header type `th` (`th ∈ hdrTys`, `th ≠ tHTs20`: the journal hook admits heap
tables only):

* **`csumm_jset th`**: `CSumm σ X guestC guestHooksJ "jset" (jsetSig th) (jCaps th)`, signature
  `⟨[fits (ptr th), buf (htKL th), valPT th], [], [journal_n], true⟩` (as `Sigs1`; the parameters
  are `htab_set`'s);
* **`csumm_jdel th`**: `CSumm … "jdel" (jdelSig th) (jCaps th)`, signature
  `⟨[fits (ptr th), any], [], [journal_n], true⟩` (as `Sigs1`; the key is only read: copied by
  `memcpy`, looked up by `htab_get`, deleted by `htab_del`, none of which needs anything of it);
* capabilities `jCaps th = capJw :: capsHT th`: `capJw = ⟨journal, tJOURNAL, [], true⟩` is both a
  requirement (`ReqOK`: the global `journal` names a `Γ` journal array) and the all-cells
  capability of the journal type (the record stores); `capsHT th` are `htab_set` / `htab_del`'s.

The value of a found entry fits the table's value kind (`hg_leafVal` + the table hook's
`ValOK`), so `tHTt20` tables (pointer values) need no extra precondition. The tables `jsetTab`,
`jdelTab` (`_sound`) collect the entries for `Shards.baseHCTab`; they are not merged.
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

/-! ## Signatures and capabilities -/

/-- The journal capability: requirement and all-cells write capability of `tJOURNAL`. -/
def capJw : Cap := ⟨gJ, tJOURNAL, [], true⟩

def jCaps (th : Nat) : List Cap := capJw :: capsHT th

def jsetSig (th : Nat) : Sig := ⟨(setSig th).params, [], [gJn], true⟩
def jdelSig (th : Nat) : Sig := ⟨(delSig th).params, [], [gJn], true⟩

/-- The heap header types (the journal admits these). -/
def jTys : List Nat := hdrTys.filter (· ≠ tHTs20)

theorem jTys_mem {th : Nat} (h : th ∈ jTys) : th ∈ hdrTys ∧ th ≠ tHTs20 := by
  unfold jTys at h
  simp only [List.mem_filter, decide_eq_true_eq] at h
  exact h

theorem capsHT_sub_j {th : Nat} : ∀ c ∈ capsHT th, c.ks = [] ∧
    ∃ c0 ∈ jCaps th, c0.all = true ∧ ∀ t, AllTy c t → AllTy c0 t := by
  intro c hc
  refine ⟨?_, c, List.mem_cons_of_mem _ hc, ?_, fun _ h => h⟩ <;>
    simp only [capsHT, List.mem_cons, List.not_mem_nil, or_false] at hc <;>
    rcases hc with rfl | rfl <;> rfl

/-- The tracked footprint: the capability cells and the argument buffers. -/
def jPW (Γ0 : Gam) (s0 : State σ) (th : Nat) (ps : List PT) (vs : List (ValueHOL 64))
    (a : BitVec 64) : Prop :=
  (ProtCell guestC Γ0 a ∧ CapPW (jCaps th) s0 Γ0 a) ∨ ArgCells ps vs a

theorem jFix_of {Γ0 : Gam} {s0 : State σ} {th : Nat} {ps : List PT} {vs : List (ValueHOL 64)}
    {e0 : Obj} (he0 : e0 ∈ Γ0) (het : e0.ty = tJOURNAL) (hej : gword s0 gJ = some e0.base)
    {n0 c0 : BitVec 64} (hn0 : gword s0 gJn = some n0) (hc0 : gword s0 gJc = some c0)
    (hcs : 32 * c0.toNat ≤ e0.size) (hce : e0.lo + 32 * c0.toNat ≤ scratchEnd) :
    JFix Γ0 s0 (jPW Γ0 s0 th ps vs) e0 n0 c0 := by
  refine ⟨he0, het, hej, hn0, hc0, hcs, hce, fun q hq => Or.inl ⟨?_, ?_⟩⟩
  · exact ⟨e0, he0, q, by unfold Obj.HasSlot; omega, by rw [het]; exact journal_prot q,
      (cell_jc e0 q).symm⟩
  · exact ⟨capJw, List.mem_cons_self, Or.inr ⟨rfl, e0, he0, Or.inl het, q,
      by unfold Obj.HasSlot; omega, (cell_jc e0 q).symm⟩⟩

/-! ## The table calls -/

section calls
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- `htab_set(t, key, value)` from a tracked state. -/
theorem jset_call (hF : FoldOK σ X guestC guestHooksJ) (hord0 : p0.Ordered)
    (hL0 : Layout guestC p0 Γ0) {th : Nat} (hth : th ∈ hdrTys) {T K V : BitVec 64} {o0 : Obj}
    (ho0 : o0 ∈ Γ0) (hoT : o0.base = T) (hot : o0.ty = th)
    (hbuf : BufOK guestC Γ0 p0 K.toNat (htKL th)) (hval : Fits Γ0 (valK th) V) :
    ∀ (Γ : Gam) (u : State σ),
      TrkJ guestHooksJ Γ0 s0 p0 (jPW Γ0 s0 th (jsetSig th).params
        [.val (.word T), .val (.word K), .val (.word V)]) Γ u →
      LkF T K (some (.val (.word V))) u →
      Hoare σ X (fun x => x = u) jsetCall (fun r t => r = none ∧ ∃ Γ', TrkJ guestHooksJ Γ0 s0 p0
        (jPW Γ0 s0 th (jsetSig th).params [.val (.word T), .val (.word K), .val (.word V)]) Γ' t) := by
  intro Γ u htrk hlk
  obtain ⟨q, hq, hmq, hxq, hnfq, hG, -⟩ := id htrk
  obtain ⟨q', hq', hordq, hLq, -⟩ := id hG
  rw [hq] at hq'
  cases hq'
  refine hoare_callD ((csumm_fs (csumm_htab_set hF guestHooksJ_mono htabHooks_guestJ hth)).and
    (Spec.Inv.funSpec_be _)) ?_
  rintro u4 hs4 rfl vs hvs callee v st ⟨hR, hbe⟩ hst
  rw [evs_cons (ev_lvw hlk.1) (evs_cons (ev_lvw hlk.2.1) (evs_cons (ev_lvw hlk.2.2) evs_nil))] at hvs
  cases hvs
  obtain ⟨x, hx, hxb, hxt, -⟩ := hxq o0 ho0
  have hG3 : G guestC guestHooksJ Γ (callEntryStateHOLFinite u4 callee) :=
    Struct.G_congr guestHooksJ_lawful rfl rfl rfl rfl hG
  have hval' : ArgOK guestC Γ q [.val (.word T), .val (.word K), .val (.word V)] (valPT th)
      (.val (.word V)) := by
    unfold valPT
    split
    · trivial
    · exact ⟨_, rfl, Struct.fits_ext hxq hval⟩
  obtain ⟨Γ', p1, p1', hc, -⟩ := hR (good_ret v) (nab_ret v) Γ hG3
    ⟨q, hq, argsOK3 ⟨_, rfl, x, hx, hxb.trans hoT, hxt.trans hot⟩
      ⟨_, rfl, bufOK_ext hord0 hordq hmq hxq hnfq hbuf⟩ hval'⟩ reqOK_tab
  refine ⟨rfl, Γ', trkJ_congr guestHooksJ_lawful (trkJ_call htrk hord0 hL0 rfl rfl hc
    (fun g _ => by simp [setSig]) (fun a ha => Or.inr (Or.inr (Or.inr ha))) (fun a hpc hpw => ?_)
    (hst.2.1.trans hs4.2.1.symm) hbe) rfl rfl rfl rfl⟩
  rcases capBack hord0 hordq hmq hL0 hLq hnfq capsHT_sub_j hpc hpw with h | h
  · exact Or.inl (Or.inl h)
  · exact Or.inr h

/-- `htab_del(t, key)` from a tracked state. -/
theorem jdel_call (hF : FoldOK σ X guestC guestHooksJ) (hord0 : p0.Ordered)
    (hL0 : Layout guestC p0 Γ0) {th : Nat} (hth : th ∈ hdrTys) {T K : BitVec 64} {o0 : Obj}
    (ho0 : o0 ∈ Γ0) (hoT : o0.base = T) (hot : o0.ty = th) {vs0 : List (ValueHOL 64)}
    {Lv : Option (ValueHOL 64)} :
    ∀ (Γ : Gam) (u : State σ),
      TrkJ guestHooksJ Γ0 s0 p0 (jPW Γ0 s0 th (jdelSig th).params vs0) Γ u → LkF T K Lv u →
      Hoare σ X (fun x => x = u) jdelCall (fun r t => r = none ∧ ∃ Γ', TrkJ guestHooksJ Γ0 s0 p0
        (jPW Γ0 s0 th (jdelSig th).params vs0) Γ' t) := by
  intro Γ u htrk hlk
  obtain ⟨q, hq, hmq, hxq, hnfq, hG, -⟩ := id htrk
  obtain ⟨q', hq', hordq, hLq, -⟩ := id hG
  rw [hq] at hq'
  cases hq'
  refine hoare_callD ((csumm_fs (csumm_htab_del hF htabHooks_guestJ hth)).and
    (Spec.Inv.funSpec_be _)) ?_
  rintro u4 hs4 rfl vs hvs callee v st ⟨hR, hbe⟩ hst
  rw [evs_cons (ev_lvw hlk.1) (evs_cons (ev_lvw hlk.2.1) evs_nil)] at hvs
  cases hvs
  obtain ⟨x, hx, hxb, hxt, -⟩ := hxq o0 ho0
  have hG3 : G guestC guestHooksJ Γ (callEntryStateHOLFinite u4 callee) :=
    Struct.G_congr guestHooksJ_lawful rfl rfl rfl rfl hG
  obtain ⟨Γ', p1, p1', hc, -⟩ := hR (good_ret v) (nab_ret v) Γ hG3
    ⟨q, hq, argsOK2 ⟨_, rfl, x, hx, hxb.trans hoT, hxt.trans hot⟩ trivial⟩ reqOK_tab
  refine ⟨rfl, Γ', trkJ_congr guestHooksJ_lawful (trkJ_call htrk hord0 hL0 rfl rfl hc
    (fun g _ => by simp [delSig]) (fun a ha => absurd ha argCells_del) (fun a hpc hpw => ?_)
    (hst.2.1.trans hs4.2.1.symm) hbe) rfl rfl rfl rfl⟩
  rcases capBack hord0 hordq hmq hL0 hLq hnfq capsHT_sub_j hpc hpw with h | h
  · exact Or.inl (Or.inl h)
  · exact Or.inr h

end calls

/-! ## After `htab_get` -/

/-- The state after `var {1,1} old = htab_get(t, key)`: the tail's precondition, with the flag
`a` (the found bit). -/
theorem after_get (hF : FoldOK σ X guestC guestHooksJ) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    (hG0 : G guestC guestHooksJ Γ0 s0) (hp0 : ptrsOf s0 = some p0) {PW : BitVec 64 → Prop}
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
      StR Γ0 s0 p0 PW th T K a b a (s0.locals.lookup (nm "value"))
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
  · exact Struct.trk_congr guestHooksJ_lawful (Struct.trk_refl hG0 hp0) hm hgs hd hbe

/-! ## The entries -/

/-- **The `jset` entry** for a heap header type `th`. -/
theorem csumm_jset (hF : FoldOK σ X guestC guestHooksJ) {th : Nat} (hth : th ∈ hdrTys)
    (hts : th ≠ tHTs20) : CSumm σ X guestC guestHooksJ (nm "jset") (jsetSig th) (jCaps th) := by
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
  have hw : tabW Γ0 s0 o0 := htabHooks_guestJ.get Γ0 s0 o0 hko (hW o0 ho0)
  obtain ⟨-, -, n0, c0, hn0, hc0, -, hcs, hce, -⟩ := (hW e0 he0).2 het hej
  have hJ := jFix_of (th := th) (ps := (jsetSig th).params)
    (vs := [.val (.word T), .val (.word K), .val (.word V)]) he0 het hej hn0 hc0 hcs hce
  have hlT : s0.locals.lookup (nm "t") = some (.val (.word T)) := by rw [hloc]; exact hA
  have hlK : s0.locals.lookup (nm "key") = some (.val (.word K)) := by rw [hloc]; exact hB
  have hlV : s0.locals.lookup (nm "value") = some (.val (.word V)) := by rw [hloc]; exact hC
  have H : Hoare σ X (fun u => u = s0) jsetBody (JQ Γ0 s0 pG (jPW Γ0 s0 th (jsetSig th).params
      [.val (.word T), .val (.word K), .val (.word V)])) := by
    unfold jsetBody
    refine Mpt.Leaves.hoare_decCallL (funSpec_get_j hF.hX) jq_locals
      fun s _ hs avs havs callee' w st ⟨hm, hgl, hd, hbe, hR⟩ _ hsh => ?_
    subst s
    rw [evs_cons (ev_lvw hlT) (evs_cons (ev_lvw hlK) evs_nil)] at havs
    cases havs
    obtain ⟨a, b, rfl, hSt⟩ := after_get hF hG0 hpG ho0 hoT hot hw hlT hlK hm hgl hd hbe hR hsh
    rw [hlV] at hSt
    refine hoare_pre (jTail_hoare hF hord0 hL0 hJ hth hts (code := 4) (a := a) (b := b) (fun _ h => ev_old0 h)
      (jset_call hF hord0 hL0 hth ho0 hoT hot hbuf hval)) fun t _ ht => ?_
    subst ht
    exact hSt
  have H' := H s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H'
  obtain ⟨Γ', ht⟩ := H' v rfl
  obtain ⟨p', hc⟩ := sumCore_of_trkJA (sg := jsetSig th)
    (vs := [.val (.word T), .val (.word K), .val (.word V)]) (r := r) ht hpG List.mem_cons_self rfl rfl
  exact ⟨Γ', pG, p', hc, trivial⟩

/-- **The `jdel` entry** for a heap header type `th`. -/
theorem csumm_jdel (hF : FoldOK σ X guestC guestHooksJ) {th : Nat} (hth : th ∈ hdrTys)
    (hts : th ≠ tHTs20) : CSumm σ X guestC guestHooksJ (nm "jdel") (jdelSig th) (jCaps th) := by
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
  have hw : tabW Γ0 s0 o0 := htabHooks_guestJ.get Γ0 s0 o0 hko (hW o0 ho0)
  obtain ⟨-, -, n0, c0, hn0, hc0, -, hcs, hce, -⟩ := (hW e0 he0).2 het hej
  have hJ := jFix_of (th := th) (ps := (jdelSig th).params)
    (vs := [.val (.word T), .val (.word K)]) he0 het hej hn0 hc0 hcs hce
  have hlT : s0.locals.lookup (nm "t") = some (.val (.word T)) := by rw [hloc]; exact hA
  have hlK : s0.locals.lookup (nm "key") = some (.val (.word K)) := by rw [hloc]; exact hB
  have H : Hoare σ X (fun u => u = s0) jdelBody (JQ Γ0 s0 pG (jPW Γ0 s0 th (jdelSig th).params
      [.val (.word T), .val (.word K)])) := by
    unfold jdelBody
    refine Mpt.Leaves.hoare_decCallL (funSpec_get_j hF.hX) jq_locals
      fun s _ hs avs havs callee' w st ⟨hm, hgl, hd, hbe, hR⟩ _ hsh => ?_
    subst s
    rw [evs_cons (ev_lvw hlT) (evs_cons (ev_lvw hlK) evs_nil)] at havs
    cases havs
    obtain ⟨a, b, rfl, hSt⟩ := after_get (PW := jPW Γ0 s0 th (jdelSig th).params
      [.val (.word T), .val (.word K)]) hF hG0 hpG ho0 hoT hot hw hlT hlK hm hgl hd hbe hR hsh
    refine hoare_pre (P := StR Γ0 s0 pG _ th T K a b a (s0.locals.lookup (nm "value"))) ?_
      fun t _ ht => by subst ht; exact hSt
    refine Mpt.Leaves.hoare_retGuard (fun t _ hP w _ => fun v' _ => ?_) ?_
    · obtain ⟨-, -, -, Γ, hT, -⟩ := hP
      exact ⟨Γ, trkJ_congr guestHooksJ_lawful (trkJ_of_trk hT) rfl rfl rfl rfl⟩
    refine hoare_pre (jTail_hoare hF hord0 hL0 hJ hth hts (code := 5) (K := K) (Lv := s0.locals.lookup (nm "value")) (F := 1) (a := a) (b := b)
      (fun u _ => ev_cw u 1) (jdel_call hF hord0 hL0 hth ho0 hoT hot)) ?_
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

/-! ## The tables -/

/-- The `jset` entries, one per heap header type (for `Shards.baseHCTab`; not yet merged). -/
def jsetTab : CTab := jTys.map fun th => (nm "jset", jsetSig th, jCaps th)

/-- The `jdel` entries, one per heap header type (for `Shards.baseHCTab`; not yet merged). -/
def jdelTab : CTab := jTys.map fun th => (nm "jdel", jdelSig th, jCaps th)

theorem jsetTab_sound (hF : FoldOK σ X guestC guestHooksJ) :
    CTabSound σ X guestC guestHooksJ jsetTab := by
  intro f sg cs hm
  obtain ⟨th, hth, he⟩ := List.mem_map.mp hm
  simp only [Prod.mk.injEq] at he
  obtain ⟨rfl, rfl, rfl⟩ := he
  exact csumm_jset hF (jTys_mem hth).1 (jTys_mem hth).2

theorem jdelTab_sound (hF : FoldOK σ X guestC guestHooksJ) :
    CTabSound σ X guestC guestHooksJ jdelTab := by
  intro f sg cs hm
  obtain ⟨th, hth, he⟩ := List.mem_map.mp hm
  simp only [Prod.mk.injEq] at he
  obtain ⟨rfl, rfl, rfl⟩ := he
  exact csumm_jdel hF (jTys_mem hth).1 (jTys_mem hth).2

end InitECandidate.Solver.MemSafe.HtabEntries
