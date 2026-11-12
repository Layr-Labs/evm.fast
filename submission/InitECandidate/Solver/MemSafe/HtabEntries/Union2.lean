import InitECandidate.Solver.MemSafe.HtabEntries.Union
import InitECandidate.Solver.MemSafe.Frames.Marks

/-!
# `htab_union_into` between two different header types

`sumSpec_htab_union_into` needs `D ≠ S`, which `G` cannot record for `bs` / `ts` tables. With
config step 3 (`research/notes/band-chain-plan.md`) the block state's tables have their own header
types, so `D ≠ S` follows from the types and **`sumSpec_htab_union_into2`** has no precondition.
The two types must agree on key length and value kind. The proof is `Union.lean`'s with the source
type separated.
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

/-- The signature with a different source type. -/
def unionSig2 (th ts : Nat) : Sig := ⟨[.fits (.ptr th), .fits (.ptr ts)], [], [], true⟩

section loop
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- `htab_set(dst, s.1, s.2)` for a found item of `src`. -/
theorem un_set2 (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hT : HtabHooks H)
    {th ts : Nat} (hth : th ∈ hdrTys) (hts : ts ∈ hdrTys) (hKLe : htKL ts = htKL th)
    (hVe : valK ts = valK th) (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {od0 os0 : Obj} (hod0 : od0 ∈ Γ0) (hos0 : os0 ∈ Γ0) (hodt : od0.ty = th) (host : os0.ty = ts)
    {D S : BitVec 64} (hodb : od0.base = D) (hosb : os0.base = S) (hDS : D ≠ S)
    {u : State σ} {Γ : Gam} (hTu : Struct.Trk guestC H Γ0 s0 p0 (unPW Γ0 s0 th) Γ u)
    (hlD : u.locals.lookup (nm "dst") = some (.val (.word D))) {I a b c : BitVec 64}
    (hls : u.locals.lookup (nm "s") = some (wv [a, b, c])) (ha : a ≠ 0)
    (hret : HiRet u S I (wv [a, b, c])) :
    Hoare σ X (fun x => x = u)
      (callD (nm "htab_set") [lv (nm "dst"), .rfield 1 (lv (nm "s")), .rfield 2 (lv (nm "s"))])
      (fun r t => r = none ∧ t.locals = u.locals ∧
        ∃ Γ', Struct.Trk guestC H Γ0 s0 p0 (unPW Γ0 s0 th) Γ' t) := by
  have hH := hF.hH
  have hk : hkOf th = .tab := hkOf_of_tab hth
  obtain ⟨hI, rfl, rfl⟩ := hret a b c rfl ha
  obtain ⟨q, hq, hmq, hxq, hnfq, hG, -⟩ := id hTu
  obtain ⟨q', hq', hordq, hLq, -, -, -, hW⟩ := id hG
  rw [hq] at hq'
  cases hq'
  obtain ⟨od, hod, hodb', hodt', -⟩ := hxq od0 hod0
  obtain ⟨os, hos, hosb', host', -⟩ := hxq os0 hos0
  have hkd : hkOf od.ty = .tab := by rw [hodt', hodt]; exact hk
  have hks : hkOf os.ty = .tab := by rw [host', host]; exact hkOf_of_tab hts
  have hwd : tabW Γ u od := hT.get Γ u od hkd (hW od hod)
  have hws : tabW Γ u os := hT.get Γ u os hks (hW os hos)
  have hne : od ≠ os := fun e => hDS (by rw [← hodb, ← hosb, ← hodb', ← hosb', e])
  have hwfS : Inv.TableWF u S := by have := hws.2.2.1; rw [hosb', hosb] at this; exact this
  obtain ⟨hkw, hkreg⟩ := item_key_reg hwfS hI
  have hKL : (Inv.hdr u.memory S 0).toNat = htKL th := by
    have := hws.2.2.2.2.2
    unfold KLOK at this
    rw [hosb', hosb, host', host] at this
    rw [this, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by have := htKL_le ts; omega)]
    exact hKLe
  rw [hKL] at hkw hkreg
  have hfit : Fits Γ (valK th) (Inv.LEFT u.memory S (Inv.ORD u.memory S I)) := by
    have := hws.2.2.2.2.1 _ (by rw [hosb', hosb]; exact item_leafVal hI)
    rw [host', host, hVe] at this
    exact this
  refine hoare_callD ((sumSpec_htab_set_k hF hM hT hth).and (Spec.Inv.funSpec_be _)) ?_
  rintro u4 hs4 rfl vs hvs callee v st ⟨hR, hbe⟩ hst
  rw [evs_cons (Mpt.Leaves.ev_lv' hlD) (evs_cons (ev_rfield_wv (ws := [a, _, _]) (by rw [ev_lv]; exact hls)
    (i := 1) (by simp)) (evs_cons (ev_rfield_wv (ws := [a, _, _]) (by rw [ev_lv]; exact hls)
    (i := 2) (by simp)) evs_nil))] at hvs
  cases hvs
  have hG3 : G guestC H Γ (callEntryStateHOLFinite u4 callee) :=
    Struct.G_congr (s := u4) hH rfl rfl rfl rfl hG
  have hval' : ArgOK guestC Γ q [.val (.word D), .val (.word (Inv.keyPtr u4.memory S
      (Inv.ORD u4.memory S I))), .val (.word (Inv.LEFT u4.memory S (Inv.ORD u4.memory S I)))]
      (valPT th) (.val (.word (Inv.LEFT u4.memory S (Inv.ORD u4.memory S I)))) := by
    unfold valPT
    split
    · trivial
    · exact ⟨_, rfl, hfit⟩
  have hargs : ArgsOK guestC Γ q (setSigK th).params [.val (.word D), .val (.word (Inv.keyPtr u4.memory S
      (Inv.ORD u4.memory S I))), .val (.word (Inv.LEFT u4.memory S (Inv.ORD u4.memory S I)))] :=
    argsOK3 ⟨_, rfl, od, hod, hodb'.trans hodb, hodt'.trans hodt⟩ trivial hval'
  have hpre : SetPreK th [.val (.word D), .val (.word (Inv.keyPtr u4.memory S
      (Inv.ORD u4.memory S I))), .val (.word (Inv.LEFT u4.memory S (Inv.ORD u4.memory S I)))]
      (callEntryStateHOLFinite u4 callee) Γ := by
    refine ⟨_, _, _, rfl, q, hq, hkw, fun x h1 h2 => ⟨fun hd' => ?_, fun hf => ?_⟩⟩
    · have hrs := hkreg x h1 h2
      rw [← hosb, ← hosb'] at hrs
      rw [← hodb, ← hodb'] at hd'
      exact tabReg_disj hkd hks hwd hws hne hd' hrs
    · have hrs := hkreg x h1 h2
      rw [← hosb, ← hosb'] at hrs
      exact reg_out_free hordq hLq hws hks x hrs hf
  obtain ⟨Γ', p1, p1', hc, -⟩ := hR (good_ret v) (nab_ret v) Γ hG3 ⟨q, hq, hargs⟩ hpre
  refine ⟨rfl, rfl, Γ', Struct.trk_congr hH (trk_callA hTu hord0 hL0 rfl rfl hc
    (fun g _ => by simp [setSigK]) (fun x hx => ?_) (fun x hpc hpw => ?_)
    (hst.2.1.trans hs4.2.1.symm) hbe) rfl rfl rfl rfl⟩
  · exfalso
    obtain ⟨i, w, -, ⟨n, hn, -⟩ | ⟨j, c', d, y, hb', -⟩⟩ := hx
    · match i, hn with
      | 0, hn => simp [setSigK] at hn
      | 1, hn => simp [setSigK] at hn
      | 2, hn => simp only [setSigK, List.getElem?_cons_succ, List.getElem?_cons_zero,
          Option.some.injEq] at hn; exact valPT_ne_buf th n hn
      | _ + 3, hn => simp [setSigK] at hn
    · match i, hb' with
      | 0, hb' => simp [setSigK] at hb'
      | 1, hb' => simp [setSigK] at hb'
      | 2, hb' => simp only [setSigK, List.getElem?_cons_succ, List.getElem?_cons_zero,
          Option.some.injEq] at hb'; exact valPT_ne_bufArg th j c' d hb'
      | _ + 3, hb' => simp [setSigK] at hb'
  · exact capBack hord0 hordq hmq hL0 hLq hnfq capsHT_self hpc hpw

/-- One iteration. -/
theorem un_body2 (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hT : HtabHooks H)
    {th ts : Nat} (hth : th ∈ hdrTys) (hts : ts ∈ hdrTys) (hKLe : htKL ts = htKL th)
    (hVe : valK ts = valK th) (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {od0 os0 : Obj} (hod0 : od0 ∈ Γ0) (hos0 : os0 ∈ Γ0) (hodt : od0.ty = th) (host : os0.ty = ts)
    {D S : BitVec 64} (hodb : od0.base = D) (hosb : os0.base = S) (hDS : D ≠ S) :
    Hoare σ X (fun u => UI H Γ0 s0 p0 th D S u ∧ CondTrue u (.cmp .less (lv (nm "i")) (lv (nm "cap"))))
      unLoop (fun r t => r = none ∧ UI H Γ0 s0 p0 th D S t) := by
  have hH := hF.hH
  unfold unLoop
  refine hoare_decCallS (funSpec_item_j hF.hX) fun s _ ⟨hU, _⟩ vs hvs callee v st ⟨hm, hgl, hd, hbe, hR⟩ _ hsh => ?_
  obtain ⟨hlD, hlS, ⟨I, hlI⟩, Γ, hTs⟩ := hU
  rw [evs_cons (Mpt.Leaves.ev_lv' hlS) (evs_cons (Mpt.Leaves.ev_lv' hlI) evs_nil)] at hvs
  cases hvs
  obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 3) hsh
  match ws, hws with
  | [a, b, c], _ =>
  have hRet := hR (wv [a, b, c]) rfl S I rfl
  have hgs : st.globals = s.globals := AllocImpl.hfm_ext (funext hgl)
  set u1 := setVarHOLFinite (nm "s") (wv [a, b, c]) { st with locals := s.locals } with hu1
  have hT1 : Struct.Trk guestC H Γ0 s0 p0 (unPW Γ0 s0 th) Γ u1 :=
    Struct.trk_congr hH hTs hm hgs hd hbe
  have hRet1 : HiRet u1 S I (wv [a, b, c]) := by
    unfold HiRet at hRet ⊢
    rw [show u1.memory = (callEntryStateHOLFinite s callee).memory from hm]
    exact hRet
  have hls1 : u1.locals.lookup (nm "s") = some (wv [a, b, c]) := lk_set_self _ _ _
  have hl1 : ∀ x, x ≠ nm "s" → u1.locals.lookup x = s.locals.lookup x := fun x hx =>
    lk_set_ne _ _ (Ne.symm hx)
  -- the post with `s` restored
  refine hoare_conseq (Q := fun r t => r = none ∧ UI H Γ0 s0 p0 th D S t) ?_ (fun _ _ h => h)
    fun r t _ _ ⟨hr, h1, h2, ⟨I', h3⟩, Γ', hT'⟩ => ⟨hr, ?_⟩
  · refine hoare_pre (P := fun t => t = u1) ?_ fun t _ ht => ht
    refine hoare_seq (R := fun r t => r = none ∧ t.locals = u1.locals ∧
        ∃ Γ', Struct.Trk guestC H Γ0 s0 p0 (unPW Γ0 s0 th) Γ' t) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_ite ?_ ?_
      · intro t hts1 ⟨ht, w, hw, hw0⟩ htr
        subst ht
        have ha : a ≠ 0 := by
          obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
          rw [ev_rfield_wv (ws := [a, b, c]) (by rw [ev_lv]; exact hls1) (i := 0) (by simp)] at hx
          rw [ev_cw] at hy
          cases hx; cases hy
          intro h0; subst h0; simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hxy
        exact un_set2 hF hM hT hth hts hKLe hVe hord0 hL0 hod0 hos0 hodt host hodb hosb hDS
          hT1 ((hl1 _ (by decide)).trans hlD) hls1 ha hRet1 _ hts1 rfl htr
      · exact hoare_skip fun t _ ⟨ht, _⟩ => ⟨rfl, by rw [ht], Γ, by rw [ht]; exact hT1⟩
    · refine hoare_assign fun t _ ⟨_, htl, Γ', hT'⟩ w hw _ => ?_
      have hIt : t.locals.lookup (nm "i") = some (.val (.word I)) := by
        rw [htl, hl1 _ (by decide)]; exact hlI
      rw [ev_add2 (Mpt.Leaves.ev_lv' hIt) (ev_cw _ 1)] at hw
      cases hw
      refine ⟨rfl, ?_, ?_, ⟨_, lk_set_self _ _ _⟩, Γ', Struct.trk_congr hH hT' rfl rfl rfl rfl⟩
      · rw [lk_set_ne _ _ (by decide), htl, hl1 _ (by decide)]; exact hlD
      · rw [lk_set_ne _ _ (by decide), htl, hl1 _ (by decide)]; exact hlS
  · refine ⟨by rw [Inv.lk_restore _ _ _ _ (by decide)]; exact h1,
      by rw [Inv.lk_restore _ _ _ _ (by decide)]; exact h2,
      ⟨I', by rw [Inv.lk_restore _ _ _ _ (by decide)]; exact h3⟩, Γ',
      Struct.trk_congr hH hT' rfl rfl rfl rfl⟩

end loop

/-- **The `htab_union_into` entry for two different header types**: different types give different
objects, so no precondition is needed. -/
theorem sumSpec_htab_union_into2 {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hT : HtabHooks H) {th ts : Nat} (hth : th ∈ hdrTys) (hts : ts ∈ hdrTys) (hne : th ≠ ts)
    (hKLe : htKL ts = htKL th) (hVe : valK ts = valK th) :
    SumSpecA σ X guestC H (nm "htab_union_into") (unionSig2 th ts) (fun _ _ _ => True)
      (fun _ s Γ a => CapPW (capsHT th) s Γ a) (fun _ _ _ _ _ _ => True) := by
  have hH := hF.hH
  refine sumSpecA_of_returns (noExc_union hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, B, rfl, sa, sb, hA, hB⟩ := lookupCode_two code_union (by decide) hl'
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one sa
  obtain ⟨S, rfl⟩ := val_of_shapeEq_one sb
  obtain ⟨p0, hp0, -, hA0⟩ := hargs
  obtain ⟨w0, e0, od0, hod0, hodb, hodt⟩ := hA0 0 _ _ rfl rfl
  obtain ⟨w1, e1, os0, hos0, hosb, host⟩ := hA0 1 _ _ rfl rfl
  simp only [wordOf, Option.some.injEq] at e0 e1
  subst e0 e1
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have hDS : D ≠ S := fun e => by
    have hb : od0 = os0 := Frames.base_unique hL0 hod0 hos0 (hodb.trans (e.trans hosb.symm))
    subst hb
    exact hne (hodt.symm.trans host)
  have hlD : s0.locals.lookup (nm "dst") = some (.val (.word D)) := by rw [hloc]; exact hA
  have hlS : s0.locals.lookup (nm "src") = some (.val (.word S)) := by rw [hloc]; exact hB
  have H' : Hoare σ X (fun u => u = s0) unBody (fun r t => ∀ v, r = some (.returned v) →
      ∃ Γ', Struct.Trk guestC H Γ0 s0 p0 (unPW Γ0 s0 th) Γ' t) := by
    unfold unBody
    have hQ : ∀ (r : Option (PanSemResultExact 64)) (t : State σ) (L : HolFiniteMapExact MlS (ValueHOL 64)),
        (∀ v, r = some (.returned v) →
        ∃ Γ', Struct.Trk guestC H Γ0 s0 p0 (unPW Γ0 s0 th) Γ' t) → ∀ v, r = some (.returned v) →
        ∃ Γ', Struct.Trk guestC H Γ0 s0 p0 (unPW Γ0 s0 th) Γ' { t with locals := L } :=
      fun r t L h v hv => let ⟨Γ', hT⟩ := h v hv; ⟨Γ', Struct.trk_congr hH hT rfl rfl rfl rfl⟩
    refine Mpt.Leaves.hoare_decL hQ fun u _ hu vc _ _ => ?_
    subst u
    refine Mpt.Leaves.hoare_decL hQ fun u1 _ hu1 vi hvi _ => ?_
    subst u1
    rw [ev_cw] at hvi
    cases hvi
    refine hoare_pre (P := UI H Γ0 s0 p0 th D S) ?_ fun t _ ht => by
      subst ht
      refine ⟨?_, ?_, ⟨_, lk_set_self _ _ _⟩, Γ0, Struct.trk_congr hH (Struct.trk_refl hG0 hp0)
        rfl rfl rfl rfl⟩
      · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hlD
      · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hlS
    refine hoare_seq (R := fun r t => r = none ∧ UI H Γ0 s0 p0 th D S t) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_while (fun u h => ui_congr hH h rfl rfl rfl rfl rfl) ?_
        (fun u _ h _ => ⟨rfl, h⟩)
      refine hoare_post (un_body2 hF hM hT hth hts hKLe hVe hord0 hL0 hod0 hos0 hodt host hodb hosb hDS) ?_
      rintro r t _ _ ⟨rfl, h⟩
      exact ⟨fun _ => h, fun h' => (by cases h'), fun h' => (by cases h'), fun _ h' => (by cases h')⟩
    · refine hoare_return fun t _ ⟨_, _, _, _, Γ', hT⟩ w _ => fun _ _ => ⟨Γ', ?_⟩
      exact Struct.trk_congr hH hT rfl rfl rfl rfl
  have H2 := H' s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H2
  obtain ⟨Γ', hT⟩ := H2 v rfl
  obtain ⟨p', hc⟩ := Struct.trk_sumCore (sg := unionSig2 th ts) (PWs := fun a => ProtCell guestC Γ0 a ∧
      CapPW (capsHT th) s0 Γ0 a) (vs := [.val (.word D), .val (.word S)]) (r := r) hT hp0
    (fun _ h => h) (fun h => by simp [unionSig2] at h) (fun _ _ _ _ i rt w hrt => by simp [unionSig2] at hrt)
  exact ⟨Γ', p0, p', hc, trivial⟩

end InitECandidate.Solver.MemSafe.HtabEntries

#print axioms InitECandidate.Solver.MemSafe.HtabEntries.sumSpec_htab_union_into2
