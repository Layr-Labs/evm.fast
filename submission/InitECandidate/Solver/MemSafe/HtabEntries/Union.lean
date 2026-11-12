import InitECandidate.Solver.MemSafe.HtabEntries.SetK
import InitECandidate.Solver.MemSafe.HtabEntries.Item
import InitECandidate.Solver.MemSafe.HtabEntries.StateRestore

/-!
# `htab_union_into` (summary with a precondition)

```
fun 1 htab_union_into(1 dst, 1 src) {
  var cap = lds 1 (src + 24); var i = 0;
  while i < cap { var {1,1,1} s = htab_item(src, i); if s.0 != 0 { htab_set(dst, s.1, s.2); }
    i = i + 1; }
  return 0; }
```

**`sumSpec_htab_union_into th`**: `SumSpecA σ X guestC H "htab_union_into" (unionSig th) UnionPre
(CapPW (capsHT th)) True`, `unionSig th = ⟨[fits (ptr th), fits (ptr th)], [], [], true⟩`,
`UnionPre vs = ∃ D S, vs = [D, S] ∧ D ≠ S`. Each found item of `src` (`htab_item`) has its key in
`src`'s key array: a region disjoint from `dst`'s (two different tables, C-b′ `tabReg_disj`) and
from the free heap, so `htab_set(dst, key, value)` applies with the key precondition
(`sumSpec_htab_set_k`); its value is a leaf value of `src`, which fits the common value kind. No
loop invariant on the tables is needed: every iteration re-reads `src` through its hook.
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

/-! ## The code -/

def unLoop : ProgHOL 64 :=
  .decCall (nm "s") (.comb [.one, .one, .one]) (nm "htab_item") [lv (nm "src"), lv (nm "i")]
    (.seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "s"))) (cw 0))
        (callD (nm "htab_set") [lv (nm "dst"), .rfield 1 (lv (nm "s")), .rfield 2 (lv (nm "s"))]) .skip)
      (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))

def unBody : ProgHOL 64 :=
  .dec (nm "cap") .one (.load .one (.op .add [lv (nm "src"), cw 24]))
    (.dec (nm "i") .one (cw 0)
      (.seq (.while (.cmp .less (lv (nm "i")) (lv (nm "cap"))) unLoop) (.return (cw 0))))

theorem entry_union : fnEntry Guest.Software.guestFn_htab_union_into =
    (nm "htab_union_into", [(nm "dst", .one), (nm "src", .one)], unBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_union : guestCode (nm "htab_union_into") =
    some ([(nm "dst", .one), (nm "src", .one)], unBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 400) (by decide)) ⟨_, rfl⟩
    entry_union

theorem xchk_union :
    xChk (nm "htab_item" :: htabX) false (declPair Guest.Software.guestFn_htab_union_into).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_union (hX : X.code.lookup = guestCode) : NoExc σ X (nm "htab_union_into") :=
  noExc_of_pair (noExcTab_cons (noExc_htabX hX) (noExc_htab_item hX)) hX
    (p := declPair Guest.Software.guestFn_htab_union_into)
    (declPair_valid (List.getElem_mem (n := 400) (by decide)) ⟨_, rfl⟩) xchk_union

/-! ## Signature and precondition -/

def unionSig (th : Nat) : Sig := ⟨[.fits (.ptr th), .fits (.ptr th)], [], [], true⟩

/-- The two tables are different. -/
def UnionPre (vs : List (ValueHOL 64)) (_ : State σ) (_ : Gam) : Prop :=
  ∃ D S : BitVec 64, vs = [.val (.word D), .val (.word S)] ∧ D ≠ S

/-! ## Tracking with callee footprints that may be fresh -/

/-- `Struct.trk_call` where the callee's `prot` writes map back to `PW` or to cells unallocated at
entry (an all-cells capability, `capBack`). -/
theorem trk_callA {C : Cfg} {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    {PW : BitVec 64 → Prop} {Γ Γ' : Gam} {t t' st : State σ} {sg : Sig} {PW' : BitVec 64 → Prop}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (h : Struct.Trk C H Γ0 s0 p0 PW Γ t) (hord0 : p0.Ordered) (hL0 : Layout C p0 Γ0)
    (htm : t'.memory = t.memory) (htg : t'.globals = t.globals)
    (hc : SumCore C H sg (fun a => ProtCell C Γ a ∧ PW' a) Γ t' vs r st Γ' p p')
    (hgw : ∀ g ∈ C.PG, g ∉ sg.gw)
    (hArg : ∀ a, ArgCells sg.params vs a → WCell C Γ a ∨ ¬ p0.Allocated a.toNat ∨ PW a)
    (hPW : ∀ a, ProtCell C Γ a → PW' a → PW a ∨ ¬ p0.Allocated a.toNat)
    (hd : st.memaddrs = t.memaddrs) (hbe : st.be = t.be) : Struct.Trk C H Γ0 s0 p0 PW Γ' st := by
  obtain ⟨p1, hp1, hm1, hx1, hnf1, hG1, hmod1, hpg1, hd1, hbe1⟩ := h
  obtain ⟨hpe, hpst, hmc, hxc, hnfc, hGc, hmodc, hpgc, -, -⟩ := hc
  have hpe' : ptrsOf t = some p := by rw [← hpe]; unfold ptrsOf gword; rw [htg]
  rw [hp1] at hpe'
  cases hpe'
  obtain ⟨q, hq, hordp, hLp, -⟩ := hG1
  rw [hp1] at hq
  cases hq
  refine ⟨p', hpst, Struct.mono_trans hm1 hmc, Struct.ext_trans hx1 hxc,
    Struct.newFresh_trans hm1 hmc hnf1 hnfc, hGc, ?_, ?_, hd.trans hd1, hbe.trans hbe1⟩
  · intro a ha
    have e1 : st.memory a = t.memory a := by
      rw [← htm]
      refine hmodc a fun hc => ?_
      rcases hc with hw | harg | hna | ⟨hpc, hpw⟩
      · rcases Struct.wcell_back hord0 hordp hm1 hL0 hLp hnf1 hw with h' | h'
        · exact ha (Or.inl h')
        · exact ha (Or.inr (Or.inl h'))
      · rcases hArg a harg with hw | hna | hpw
        · rcases Struct.wcell_back hord0 hordp hm1 hL0 hLp hnf1 hw with h' | h'
          · exact ha (Or.inl h')
          · exact ha (Or.inr (Or.inl h'))
        · exact ha (Or.inr (Or.inl hna))
        · exact ha (Or.inr (Or.inr hpw))
      · exact ha (Or.inr (Or.inl (Struct.notAlloc_mono hm1 hna)))
      · rcases hPW a hpc hpw with h' | h'
        · exact ha (Or.inr (Or.inr h'))
        · exact ha (Or.inr (Or.inl h'))
    rw [e1, hmod1 a ha]
  · intro g hg
    rw [hpgc g hg (hgw g hg), htg, hpg1 g hg]

theorem capsHT_self {th : Nat} : ∀ c ∈ capsHT th, c.ks = [] ∧
    ∃ c0 ∈ capsHT th, c0.all = true ∧ ∀ t, AllTy c t → AllTy c0 t := by
  intro c hc
  refine ⟨?_, c, hc, ?_, fun _ h => h⟩ <;>
    simp only [capsHT, List.mem_cons, List.not_mem_nil, or_false] at hc <;>
    rcases hc with rfl | rfl <;> rfl

/-! ## The loop -/

section loop
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- The tracked footprint. -/
def unPW (Γ0 : Gam) (s0 : State σ) (th : Nat) (a : BitVec 64) : Prop :=
  ProtCell guestC Γ0 a ∧ CapPW (capsHT th) s0 Γ0 a

/-- The loop invariant. -/
def UI (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (th : Nat) (D S : BitVec 64)
    (u : State σ) : Prop :=
  u.locals.lookup (nm "dst") = some (.val (.word D)) ∧ u.locals.lookup (nm "src") = some (.val (.word S)) ∧
  (∃ I : BitVec 64, u.locals.lookup (nm "i") = some (.val (.word I))) ∧
  ∃ Γ, Struct.Trk guestC H Γ0 s0 p0 (unPW Γ0 s0 th) Γ u

theorem ui_congr {th : Nat} {D S : BitVec 64} (hH : HooksLawful guestC H) {u u' : State σ}
    (h : UI H Γ0 s0 p0 th D S u) (hl : u'.locals = u.locals) (hm : u'.memory = u.memory)
    (hg : u'.globals = u.globals) (hd : u'.memaddrs = u.memaddrs) (hbe : u'.be = u.be) :
    UI H Γ0 s0 p0 th D S u' := by
  obtain ⟨h1, h2, h3, Γ, hT⟩ := h
  exact ⟨by rw [hl]; exact h1, by rw [hl]; exact h2, by rw [hl]; exact h3, Γ,
    Struct.trk_congr hH hT hm hg hd hbe⟩

/-- `htab_set(dst, s.1, s.2)` for a found item of `src`. -/
theorem un_set (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hT : HtabHooks H)
    {th : Nat} (hth : th ∈ hdrTys) (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {od0 os0 : Obj} (hod0 : od0 ∈ Γ0) (hos0 : os0 ∈ Γ0) (hodt : od0.ty = th) (host : os0.ty = th)
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
  have hks : hkOf os.ty = .tab := by rw [host', host]; exact hk
  have hwd : tabW Γ u od := hT.get Γ u od hkd (hW od hod)
  have hws : tabW Γ u os := hT.get Γ u os hks (hW os hos)
  have hne : od ≠ os := fun e => hDS (by rw [← hodb, ← hosb, ← hodb', ← hosb', e])
  have hwfS : Inv.TableWF u S := by have := hws.2.2.1; rw [hosb', hosb] at this; exact this
  obtain ⟨hkw, hkreg⟩ := item_key_reg hwfS hI
  have hKL : (Inv.hdr u.memory S 0).toNat = htKL th := by
    have := hws.2.2.2.2.2
    unfold KLOK at this
    rw [hosb', hosb, host', host] at this
    rw [this, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by have := htKL_le th; omega)]
  rw [hKL] at hkw hkreg
  have hfit : Fits Γ (valK th) (Inv.LEFT u.memory S (Inv.ORD u.memory S I)) := by
    have := hws.2.2.2.2.1 _ (by rw [hosb', hosb]; exact item_leafVal hI)
    rw [host', host] at this
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
theorem un_body (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hT : HtabHooks H)
    {th : Nat} (hth : th ∈ hdrTys) (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    {od0 os0 : Obj} (hod0 : od0 ∈ Γ0) (hos0 : os0 ∈ Γ0) (hodt : od0.ty = th) (host : os0.ty = th)
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
      · intro t hts ⟨ht, w, hw, hw0⟩ htr
        subst ht
        have ha : a ≠ 0 := by
          obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
          rw [ev_rfield_wv (ws := [a, b, c]) (by rw [ev_lv]; exact hls1) (i := 0) (by simp)] at hx
          rw [ev_cw] at hy
          cases hx; cases hy
          intro h0; subst h0; simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hxy
        exact un_set hF hM hT hth hord0 hL0 hod0 hos0 hodt host hodb hosb hDS
          hT1 ((hl1 _ (by decide)).trans hlD) hls1 ha hRet1 _ hts rfl htr
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

/-- **The `htab_union_into` entry** for header type `th`: two different tables of type `th`. -/
theorem sumSpec_htab_union_into {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hT : HtabHooks H) {th : Nat} (hth : th ∈ hdrTys) :
    SumSpecA σ X guestC H (nm "htab_union_into") (unionSig th) UnionPre
      (fun _ s Γ a => CapPW (capsHT th) s Γ a) (fun _ _ _ _ _ _ => True) := by
  have hH := hF.hH
  refine sumSpecA_of_returns (noExc_union hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hpre
  obtain ⟨D, S, rfl, hDS⟩ := hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, B, hAB, -, -, hA, hB⟩ := lookupCode_two code_union (by decide) hl'
  simp only [List.cons.injEq, and_true] at hAB
  obtain ⟨rfl, rfl⟩ := hAB
  obtain ⟨p0, hp0, -, hA0⟩ := hargs
  obtain ⟨w0, e0, od0, hod0, hodb, hodt⟩ := hA0 0 _ _ rfl rfl
  obtain ⟨w1, e1, os0, hos0, hosb, host⟩ := hA0 1 _ _ rfl rfl
  simp only [wordOf, Option.some.injEq] at e0 e1
  subst e0 e1
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
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
      refine hoare_post (un_body hF hM hT hth hord0 hL0 hod0 hos0 hodt host hodb hosb hDS) ?_
      rintro r t _ _ ⟨rfl, h⟩
      exact ⟨fun _ => h, fun h' => (by cases h'), fun h' => (by cases h'), fun _ h' => (by cases h')⟩
    · refine hoare_return fun t _ ⟨_, _, _, _, Γ', hT⟩ w _ => fun _ _ => ⟨Γ', ?_⟩
      exact Struct.trk_congr hH hT rfl rfl rfl rfl
  have H2 := H' s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H2
  obtain ⟨Γ', hT⟩ := H2 v rfl
  obtain ⟨p', hc⟩ := Struct.trk_sumCore (sg := unionSig th) (PWs := fun a => ProtCell guestC Γ0 a ∧
      CapPW (capsHT th) s0 Γ0 a) (vs := [.val (.word D), .val (.word S)]) (r := r) hT hp0
    (fun _ h => h) (fun h => by simp [unionSig] at h) (fun _ _ _ _ i rt w hrt => by simp [unionSig] at hrt)
  exact ⟨Γ', p0, p', hc, trivial⟩

end InitECandidate.Solver.MemSafe.HtabEntries
