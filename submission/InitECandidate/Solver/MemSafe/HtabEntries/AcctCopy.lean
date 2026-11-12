import InitECandidate.Solver.MemSafe.HtabEntries.JTail

/-!
# `acct_copy` with a fresh result (hand entry)

```
fun 1 acct_copy(1 a) { var 1 b = alloc(56); memcpy(b, a, 56); return b; }
```

**`csumm_acct_copy`**: `CSumm σ X guestC H "acct_copy" acSig []`, `acSig = ⟨[any], [fresh 56], [],
false⟩`: the result is a fresh 8-aligned 56-byte block outside the final typing, and no object is
created or grown. The fold's own entry has `ret := []` (the checker cannot verify a `fresh` result
of a checked body); with this entry the callers `set_code`, `move_ether`, `create_ether`,
`increment_nonce`, `set_account_balance`, `clear_account_preserving_balance` (`a = acct_copy(a);
st a + k, …`) store into a caller temporary (mirror: +5 accepted with the journal entries).
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def acBody : ProgHOL 64 :=
  .decCall (nm "b") .one (nm "alloc") [cw 56]
    (.seq (callD (nm "memcpy") [lv (nm "b"), lv (nm "a"), cw 56]) (.return (lv (nm "b"))))

theorem entry_acct_copy : fnEntry Guest.Software.guestFn_acct_copy =
    (nm "acct_copy", [(nm "a", .one)], acBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_acct_copy : guestCode (nm "acct_copy") = some ([(nm "a", .one)], acBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 363) (by decide)) ⟨_, rfl⟩
    entry_acct_copy

theorem xchk_acct_copy : xChk htabX false (declPair Guest.Software.guestFn_acct_copy).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_acct_copy (hX : X.code.lookup = guestCode) : NoExc σ X (nm "acct_copy") :=
  noExc_of_pair (noExc_htabX hX) hX (p := declPair Guest.Software.guestFn_acct_copy)
    (declPair_valid (List.getElem_mem (n := 363) (by decide)) ⟨_, rfl⟩) xchk_acct_copy

/-- The signature: a fresh 56-byte result, no growth. -/
def acSig : Sig := ⟨[.any], [.fresh 56], [], false⟩

section body
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- The post of the body. -/
def AcQ (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (r : Option (PanSemResultExact 64))
    (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ (Γ' : Gam) (q : BitVec 64),
    Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ' t ∧ v = .val (.word q) ∧
      (∀ p', ptrsOf t = some p' → FreshBuf Γ' p0 p' q 56) ∧ NewFresh Γ0 Γ' p0 p0

theorem acQ_locals (hH : HooksLawful guestC H) (r : Option (PanSemResultExact 64)) (t : State σ)
    (L : HolFiniteMapExact MlS (ValueHOL 64)) (h : AcQ H Γ0 s0 p0 r t) :
    AcQ H Γ0 s0 p0 r { t with locals := L } := by
  intro v hv
  obtain ⟨Γ', q, hT, hq, hf, hnf⟩ := h v hv
  exact ⟨Γ', q, Struct.trk_congr hH hT rfl rfl rfl rfl, hq, fun p' hp' => hf p' hp', hnf⟩

theorem ac_hoare (hF : FoldOK σ X guestC H) (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {A : BitVec 64} (hA : s0.locals.lookup (nm "a") = some (.val (.word A))) :
    Hoare σ X (fun u => u = s0) acBody (AcQ H Γ0 s0 p0) := by
  have hH := hF.hH
  have hA' : Struct.AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  unfold acBody
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (allocSpec_alloc hF.hX) (Frames.funSpec_dom _))
    (acQ_locals hH) fun s _ hs vs hvs callee v st ⟨hAl, hd, hbe⟩ _ _ => ?_
  subst s
  rw [evs_cons (ev_cw _ 56) evs_nil] at hvs
  cases hvs
  have hpe : ptrsOf (callEntryStateHOLFinite s0 callee) = some p0 := by
    rw [show ptrsOf (callEntryStateHOLFinite s0 callee) = ptrsOf s0 from Frames.ptrsOf_congr rfl]
    exact hp0
  obtain ⟨hm, hgl, p', hp', hord', hmo, hret⟩ := hAl (by simp [Good]) _ p0 rfl hpe hord0
  obtain ⟨q, rfl, hq8, hlive, hna⟩ := hret _ rfl
  have h56 : (BitVec.ofNat 64 56).toNat = 56 := by decide
  rw [h56] at hlive hna
  have hT1 := Struct.trk_alloc hH hA' (Struct.trk_refl (PW := fun _ => False) hG0 hp0) rfl rfl hpe hm
    hgl hp' hord' hmo hd hbe
  set u1 := setVarHOLFinite (nm "b") (.val (.word q)) { st with locals := s0.locals } with hu1
  have hT1' : Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ0 u1 := Struct.trk_congr hH hT1 rfl rfl rfl rfl
  have hb1 : u1.locals.lookup (nm "b") = some (.val (.word q)) := lk_set_self _ _ _
  have ha1 : u1.locals.lookup (nm "a") = some (.val (.word A)) := (lk_set_ne _ _ (by decide)).trans hA
  have hpu1 : ptrsOf u1 = some p' := by
    rw [show ptrsOf u1 = ptrsOf st from Frames.ptrsOf_congr rfl]; exact hp'
  -- the block: cells unallocated at entry, outside `Γ0`, allocated now
  have hblk : ∀ a : BitVec 64, Overlap q.toNat 56 a → q.toNat ≤ a.toNat ∧ a.toNat < q.toNat + 56 := by
    intro a ⟨h8, h1, h2⟩; omega
  have hnaA : ∀ a : BitVec 64, Overlap q.toNat 56 a → ¬ p0.Allocated a.toNat := fun a ha =>
    hna _ (hblk a ha).1 (hblk a ha).2
  have hnio : ∀ a : BitVec 64, Overlap q.toNat 56 a → ¬ InObj Γ0 a.toNat := fun a ha hin =>
    hnaA a ha (alloc_of_in hord0 hL0 hin)
  refine hoare_pre (P := fun t => t = u1) ?_ fun t _ ht => ht
  refine hoare_seq (R := fun r t => r = none ∧ t.locals = u1.locals ∧ ∃ Γ' p'',
      Struct.Trk guestC H Γ0 s0 p0 (fun _ => False) Γ' t ∧ ptrsOf t = some p'' ∧ p'.Mono p'' ∧
      NewFresh Γ0 Γ' p' p') ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callD (FunSpec.and (Struct.sumSpec_rel (Helpers.summ_memcpy hH
      Helpers.tagSlots_guestC hF.hX hF.hal)) (Frames.funSpec_dom _)) ?_
    rintro s _ hs vs hvs callee v st2 ⟨⟨hS, -⟩, hd2, hbe2⟩ _
    subst hs
    rw [evs_cons (ev_lvw hb1) (evs_cons (ev_lvw ha1) (evs_cons (ev_cw _ 56) evs_nil))] at hvs
    cases hvs
    have hG1 := Struct.trk_G hT1'
    have hGe : G guestC H Γ0 (callEntryStateHOLFinite u1 callee) :=
      Struct.G_congr (s := u1) hH rfl rfl rfl rfl hG1
    have hpe1 : ptrsOf (callEntryStateHOLFinite u1 callee) = some p' := by
      rw [show ptrsOf (callEntryStateHOLFinite u1 callee) = ptrsOf u1 from Frames.ptrsOf_congr rfl]
      exact hpu1
    have hargs : ArgsOK guestC Γ0 p' Helpers.sigMemcpy.params
        [.val (.word q), .val (.word A), .val (.word (BitVec.ofNat 64 56))] := by
      refine ⟨rfl, fun i pt w hpt hw => ?_⟩
      rcases i with _ | _ | _ | i <;> simp [Helpers.sigMemcpy] at hpt hw <;> subst hpt <;> subst hw
      · refine ⟨q, _, rfl, rfl, fun a ha => Or.inr ⟨hnio a (by rw [h56] at ha; simpa using ha), ?_⟩⟩
        rw [h56] at ha
        have := hblk a (by simpa using ha)
        exact Or.inl ⟨by have := hlive.1; omega, by have := hlive.2; omega⟩
      · trivial
      · trivial
    obtain ⟨Γ', q1, q2, hc, -⟩ := hS (by simp [Good]) _ hGe ⟨p', hpe1, hargs⟩ trivial
    have hq1 : q1 = p' := by have := hc.1; rw [hpe1] at this; exact (Option.some.inj this).symm
    subst hq1
    have hT2 := Struct.trk_call hT1' hord0 hL0 rfl rfl hc (fun g _ => by simp [Helpers.sigMemcpy])
      (fun a ha => by
        have ha' := Struct.argCells_memcpy (gr := false) ha
        rw [h56] at ha'
        exact Or.inr (Or.inl (hnaA a (by simpa using ha'))))
      (fun a _ h => h.elim) hd2 hbe2
    refine ⟨rfl, rfl, Γ', q2, Struct.trk_congr hH hT2 rfl rfl rfl rfl, ?_, hc.2.2.1,
      hc.2.2.2.2.2.2.2.2.1 rfl⟩
    rw [show ptrsOf { st2 with locals := u1.locals } = ptrsOf st2 from Frames.ptrsOf_congr rfl]
    exact hc.2.1
  · refine hoare_return fun t _ ⟨_, hl, Γ', p'', hT, hpt, hmo2, hnf⟩ v hv w hw => ?_
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
    subst hw
    rw [show ev t (lv (nm "b")) = t.locals.lookup (nm "b") from rfl, hl, hb1] at hv
    cases hv
    refine ⟨Γ', q, Struct.trk_congr hH hT rfl rfl rfl rfl, rfl, fun pf hpf => ?_, ?_⟩
    · rw [show ptrsOf (emptyLocalsHOLFinite t) = ptrsOf t from Frames.ptrsOf_congr rfl, hpt] at hpf
      cases hpf
      refine ⟨hq8, fun a ha => ⟨?_, fun hin => ?_⟩⟩
      · have := hblk a ha
        have hn := hnaA a ha
        obtain ⟨b1, b2, b3, b4, b5, -, -, -⟩ := hord0
        obtain ⟨m1, m2, m3⟩ := hmo2
        unfold Ptrs.Allocated at hn
        have := hlive.1
        have := hlive.2
        left
        constructor <;> omega
      · obtain ⟨o, ho, hlo, hhi⟩ := hin
        rcases hnf o ho a hlo hhi with ⟨o0, ho0, -, -, hlo0, hhi0⟩ | hfr
        · exact hnio a ha ⟨o0, ho0, hlo0, hhi0⟩
        · unfold Fresh at hfr; omega
    · intro o ho a hlo hhi
      rcases hnf o ho a hlo hhi with h | hfr
      · exact Or.inl h
      · unfold Fresh at hfr; omega

end body

/-- **The `acct_copy` entry**: a fresh 56-byte result, no growth. -/
theorem csumm_acct_copy {H : Hooks σ} (hF : FoldOK σ X guestC H) :
    CSumm σ X guestC H (nm "acct_copy") acSig [] := by
  refine sumSpecA_of_returns (noExc_acct_copy hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs _
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, rfl, hsA, hA⟩ := lookupCode_one code_acct_copy hl'
  obtain ⟨Aw, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨p0, hp0, -⟩ := hargs
  have hla : s0.locals.lookup (nm "a") = some (.val (.word Aw)) := by rw [hloc]; exact hA
  have H' := ac_hoare hF hG0 hp0 hla s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H'
  obtain ⟨Γ', q, hT, hq, hf, hnf⟩ := H' v rfl
  have hret : ∀ pf, ptrsOf (evaluateHOLFiniteState s0 acBody).2 = some pf → ∀ w, r = .returned w →
      RetOK Γ' p0 pf [.val (.word Aw)] acSig.ret w := by
    intro pf hpf w hw
    rw [hv] at hw
    cases hw
    subst hq
    intro i rt w' hi hfl
    match i, hi with
    | 0, hi =>
      simp only [acSig, List.getElem?_cons_zero, Option.some.injEq] at hi
      subst hi
      simp only [flattenHOL, List.getElem?_cons_zero, Option.some.injEq, HolWordLab.word.injEq] at hfl
      subst hfl
      exact hf pf hpf
    | _ + 1, hi => simp [acSig] at hi
  obtain ⟨p', hc⟩ := Struct.trk_sumCore (sg := acSig) (PWs := fun a => ProtCell guestC Γ0 a ∧
      CapPW [] s0 Γ0 a) (vs := [.val (.word Aw)]) (r := r) hT hp0 (fun _ h => h.elim)
    (fun _ _ _ => hnf) hret
  exact ⟨Γ', p0, p', hc, trivial⟩

/-- The `acct_copy` entry (for the base table; not yet merged). -/
def acctCopyTab : CTab := [(nm "acct_copy", acSig, [])]

theorem acctCopyTab_sound {H : Hooks σ} (hF : FoldOK σ X guestC H) :
    CTabSound σ X guestC H acctCopyTab := by
  intro f sg cs hm
  simp only [acctCopyTab, List.mem_cons, List.not_mem_nil, or_false, Prod.mk.injEq] at hm
  obtain ⟨rfl, rfl, rfl⟩ := hm
  exact csumm_acct_copy hF

end InitECandidate.Solver.MemSafe.HtabEntries
