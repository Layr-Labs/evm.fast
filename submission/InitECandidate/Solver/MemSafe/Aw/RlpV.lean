import InitECandidate.Solver.MemSafe.Aw.ScrFw

set_option autoImplicit false

/-!
# The RLP validator in the scratch arena
`_rlp_validate_items_body`, `rlp_validate_items` (try/catch), then the read-only chain
`rlp_item_total`, `rlp_list_count`, `rlp_item`, `rlp_decode_fully`, `hdr_*`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

def rvPos : MlS := nm "pos"
def rvEnd : MlS := nm "end"
def rvGo : MlS := nm "go"
def rvPay : MlS := nm "payload"
def rvAft : MlS := nm "after"
def rvRec : MlS := nm "rec"
def rvLen : MlS := nm "len"

def rvLd (c : Nat) : ExpHOL 64 := .load .one (.op .add [lv dtopN, cw c])

def rvAlloc : ProgHOL 64 :=
  .decCall rvRec .one (nm "scratch_alloc") [cw 24]
    (.seq (.store (lv rvRec) (lv rvAft))
      (.seq (.store (.op .add [lv rvRec, cw 8]) (lv rvEnd))
        (.seq (.store (.op .add [lv rvRec, cw 16]) (lv dtopN))
          (.seq (.assign .local dtopN (lv rvRec))
            (.seq (.assign .local rvPos (lv rvPay)) (.assign .local rvEnd (lv rvAft)))))))

def rvStep : ProgHOL 64 :=
  .decCall dhN (.comb [.one, .one, .one]) (nm "rlp_item_header")
    [lv rvPos, .op .sub [lv rvEnd, lv rvPos]]
    (.dec rvPay .one (.op .add [lv rvPos, .rfield 0 (lv dhN)])
      (.dec rvAft .one (.op .add [lv rvPay, .rfield 1 (lv dhN)])
        (.ite (.cmp .notEqual (.rfield 2 (lv dhN)) (cw 0)) rvAlloc (.assign .local rvPos (lv rvAft)))))

def rvLoop : ProgHOL 64 :=
  .ite (.cmp .equal (lv rvPos) (lv rvEnd))
    (.ite (.cmp .equal (lv dtopN) (cw 0)) (.assign .local rvGo (cw 0))
      (.seq (.assign .local rvPos (rvLd 0))
        (.seq (.assign .local rvEnd (rvLd 8)) (.assign .local dtopN (rvLd 16)))))
    rvStep

def rvBody : ProgHOL 64 :=
  .dec dtopN .one (cw 0)
    (.dec rvPos .one (lv pN)
      (.dec rvEnd .one (.op .add [lv pN, lv rvLen])
        (.dec rvGo .one (cw 1)
          (.seq (.while (.cmp .notEqual (lv rvGo) (cw 0)) rvLoop) (.return (cw 0))))))

theorem code_rlp_validate_items_body : guestCode (nm "_rlp_validate_items_body") =
    some ([(pN, .one), (rvLen, .one)], rvBody, .one) := by
  have h : fnEntry Guest.Software.guestFn__rlp_validate_items_body =
      (nm "_rlp_validate_items_body", [(pN, .one), (rvLen, .one)], rvBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 110) (by decide)) ⟨_, rfl⟩ h

theorem rvAlloc_ok (hT : DomBelow X) (hAl : AllocSpec σ X (nm "scratch_alloc") .scratch) {s0 : State σ} :
    HoareG σ X (SPre s0 (fun _ => True)) rvAlloc (SQ s0 (fun _ => True)) := by
  unfold rvAlloc
  refine hoareG_decCallAllocS (L' := fun _ _ => True) hAl (BitVec.ofNat 64 24) ?_ ?_ (fun _ _ _ _ => trivial)
  · intro s vs hvs
    rw [evs_cons (ev_cw _ 24) evs_nil] at hvs
    cases hvs
    rfl
  · intro s q _ hq1 hq2
    have h24 : (BitVec.ofNat 64 24).toNat = 24 := by decide
    rw [h24] at hq2
    have hsc : scratchEnd < 2 ^ 62 := by decide
    have hrec : ∀ (s' : State σ) (m : Locals), m = s.locals.update (rvRec, .val (.word q)) →
        ev (σ := σ) (width := 64) { s' with locals := m } (lv rvRec) = some (.val (.word q)) := by
      intro s' m hm
      subst hm
      exact ev_lw (lookup_update_self _ _ _)
    let L2 : Locals → Prop := fun m => m.lookup rvRec = some (.val (.word q))
    refine hoareG_preS (L' := L2) ?_ (fun m hm => by subst hm; exact lookup_update_self _ _ _)
    refine hoareG_seqS (L2 := L2) (hoareG_storeS hT ?_) (hoareG_seqS (L2 := L2) (hoareG_storeS hT ?_)
      (hoareG_seqS (L2 := L2) (hoareG_storeS hT ?_) ?_))
    · intro s' _ hL w hw
      rw [ev_lw hL] at hw
      cases hw
      exact hq1
    · intro s' _ hL w hw
      rw [ev_add2 (ev_lw hL) (ev_cw _ 8)] at hw
      cases hw
      rw [toNat_addc (by omega)]
      omega
    · intro s' _ hL w hw
      rw [ev_add2 (ev_lw hL) (ev_cw _ 16)] at hw
      cases hw
      rw [toNat_addc (by omega)]
      omega
    · refine hoareG_seqS (L2 := fun _ => True) (hoareG_assignS fun _ _ _ _ _ => trivial)
        (hoareG_seqS (L2 := fun _ => True) (hoareG_assignS fun _ _ _ _ _ => trivial)
          (hoareG_assignS fun _ _ _ _ _ => trivial))

theorem rvStep_ok (hT : DomBelow X) (hAl : AllocSpec σ X (nm "scratch_alloc") .scratch)
    (hHd : RdSpec σ X (nm "rlp_item_header")) {s0 : State σ} :
    HoareG σ X (SPre s0 (fun _ => True)) rvStep (SQ s0 (fun _ => True)) := by
  unfold rvStep
  refine hoareG_decCallS (L' := fun _ _ => True) hHd (fun s v _ => ?_) (fun _ _ _ _ => trivial)
  refine hoareG_preS (L' := fun _ => True) ?_ (fun _ _ => trivial)
  refine hoareG_decS (L' := fun _ _ => True) ?_ (fun _ _ _ _ => trivial)
  intro s1 hs1 _ v1 hv1 hsh1
  refine hoareG_preS (L' := fun _ => True) ?_ (fun _ _ => trivial)
  refine hoareG_decS (L' := fun _ _ => True) ?_ (fun _ _ _ _ => trivial)
  intro s2 hs2 _ v2 hv2 hsh2
  refine hoareG_preS (L' := fun _ => True) ?_ (fun _ _ => trivial)
  refine hoareG_ite (hoareG_pre (rvAlloc_ok hT hAl) (fun s _ h => h.1))
    (hoareG_pre (hoareG_assignS fun _ _ _ _ _ => trivial) (fun s _ h => h.1))

theorem rvLoop_ok (hT : DomBelow X) (hAl : AllocSpec σ X (nm "scratch_alloc") .scratch)
    (hHd : RdSpec σ X (nm "rlp_item_header")) {s0 : State σ} :
    HoareG σ X (SPre s0 (fun _ => True)) rvLoop (SQ s0 (fun _ => True)) := by
  unfold rvLoop
  refine hoareG_ite (hoareG_pre ?_ (fun s _ h => h.1)) (hoareG_pre (rvStep_ok hT hAl hHd) (fun s _ h => h.1))
  refine hoareG_ite (hoareG_pre ?_ (fun s _ h => h.1)) (hoareG_pre ?_ (fun s _ h => h.1))
  · exact hoareG_assignS fun _ _ _ _ _ => trivial
  · exact hoareG_seqS (L2 := fun _ => True) (hoareG_assignS fun _ _ _ _ _ => trivial)
      (hoareG_seqS (L2 := fun _ => True) (hoareG_assignS fun _ _ _ _ _ => trivial)
        (hoareG_assignS fun _ _ _ _ _ => trivial))

theorem rvBody_ok (hT : DomBelow X) (hAl : AllocSpec σ X (nm "scratch_alloc") .scratch)
    (hHd : RdSpec σ X (nm "rlp_item_header")) {s0 : State σ} :
    HoareG σ X (SPre s0 (fun _ => True)) rvBody (SQ s0 (fun _ => True)) := by
  unfold rvBody
  have hpre : ∀ {L : Locals → Prop} {p : ProgHOL 64} {Q}, HoareG σ X (SPre s0 (fun _ => True)) p Q →
      HoareG σ X (SPre s0 L) p Q := fun h => hoareG_preS h (fun _ _ => trivial)
  refine hoareG_decS (L' := fun _ _ => True) (fun s1 hs1 _ v1 hv1 hsh1 => hoareG_preS ?_ (fun _ _ => trivial))
    (fun _ _ _ _ => trivial)
  refine hoareG_decS (L' := fun _ _ => True) (fun s1 hs1 _ v1 hv1 hsh1 => hoareG_preS ?_ (fun _ _ => trivial))
    (fun _ _ _ _ => trivial)
  refine hoareG_decS (L' := fun _ _ => True) (fun s1 hs1 _ v1 hv1 hsh1 => hoareG_preS ?_ (fun _ _ => trivial))
    (fun _ _ _ _ => trivial)
  refine hoareG_decS (L' := fun _ _ => True) (fun s1 hs1 _ v1 hv1 hsh1 => hoareG_preS ?_ (fun _ _ => trivial))
    (fun _ _ _ _ => trivial)
  exact hoareG_seqS (L2 := fun _ => True)
    (hoareG_whileS (J := fun _ => True) (hoareG_pre (rvLoop_ok hT hAl hHd) (fun s _ h => h.1))
      (fun _ _ _ _ => trivial)) hoareG_returnS

/-- The scratch validator body: pointers stay ordered, writes are in the scratch arena. -/
theorem rdBody_spec (hC : X.code.lookup = guestCode) (hT : DomBelow X)
    (hHd : RdSpec σ X (nm "rlp_item_header")) :
    FunSpec σ X (nm "_rlp_validate_items_body") (fun vs s r t => Good (some r) → RdOK s → SR s t) := by
  intro vs body callee rs hl s0 hs hloc r hr hg hok
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA', hB', hla, hlb⟩ :=
    lookupCode_two code_rlp_validate_items_body (by decide) hl
  have h : HoareG σ X (fun t => t = s0) rvBody (SQ s0 (fun _ => True)) :=
    hoareG_conseq (rvBody_ok hT (allocSpec_scratch_alloc hC) hHd)
      (fun t _ ht => by subst ht; exact ⟨trivial, sr_refl hok⟩) (fun _ _ _ _ h => h)
  have := h s0 hs rfl (by rw [hr]; exact hg)
  rw [hr] at this
  exact this.1

def rlpErrN : MlS := nm "RlpErr"
def rvE : MlS := nm "e"

def rviHandler : ProgHOL 64 :=
  .seq (callD (nm "scratch_release") [lv markN]) (.raise rlpErrN (lv rvE))

def rviBody : ProgHOL 64 :=
  .decCall markN .one (nm "scratch_mark") []
    (.dec rvE .one (cw 0)
      (.seq (.call (some (none, some (rlpErrN, rvE, rviHandler))) (nm "_rlp_validate_items_body")
          [lv pN, lv rvLen])
        (.seq (callD (nm "scratch_release") [lv markN]) (.return (cw 0)))))

theorem code_rlp_validate_items : guestCode (nm "rlp_validate_items") =
    some ([(pN, .one), (rvLen, .one)], rviBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_rlp_validate_items =
      (nm "rlp_validate_items", [(pN, .one), (rvLen, .one)], rviBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 111) (by decide)) ⟨_, rfl⟩ h

theorem globals_restore {s0 t : State σ} {m0 : BitVec 64}
    (h0 : s0.globals.lookup gScratch = some (.val (.word m0)))
    (hSR : ∀ g, g ≠ gScratch → t.globals.lookup g = s0.globals.lookup g)
    (hs : t.globals.lookup gScratch = some (.val (.word m0))) : t.globals = s0.globals :=
  AllocImpl.hfm_ext (funext fun g => by
    by_cases hg : g = gScratch
    · subst hg; rw [hs, h0]
    · exact hSR g hg)

theorem rdok_of_globals {s0 t : State σ} (h : RdOK s0) (hg : t.globals = s0.globals) : RdOK t := by
  obtain ⟨⟨p, hp, ho⟩, W, hW, hWe⟩ := h
  refine ⟨⟨p, ?_, ho⟩, W, ?_, hWe⟩
  · rw [← hp]; exact AllocImpl.ptrsOf_congr hg
  · rw [gword_congr hg]; exact hW

/-- Release to the mark: the globals are those of the entry state again. -/
theorem hoareG_release_restore {s0 : State σ} {m0 : BitVec 64} (hok : RdOK s0)
    (hrel : ReleaseSpec σ X (nm "scratch_release") gScratch)
    (h0 : s0.globals.lookup gScratch = some (.val (.word m0))) :
    HoareG σ X (fun t => SR s0 t ∧ t.locals.lookup markN = some (.val (.word m0)))
      (callD (nm "scratch_release") [lv markN])
      (fun r t => (r = none ∧ SR s0 t ∧ t.globals = s0.globals ∧
          t.locals.lookup markN = some (.val (.word m0))) ∨
        (∃ r', r = some r' ∧ Abn r' ∧ SR s0 t)) := by
  refine hoareG_callD hrel ?_ ?_
  · intro s hs hp vs hvs callee v st hR _
    rw [evs_cons (ev_lw hp.2) evs_nil] at hvs
    cases hvs
    obtain ⟨hmem, hlook, hother⟩ := hR (by simp [Good]) m0 rfl
    have hg : st.globals = s0.globals := globals_restore h0
      (fun g hg => (hother g hg).trans (hp.1.1 g hg)) hlook
    refine Or.inl ⟨rfl, ?_, hg, hp.2⟩
    exact ⟨fun g _ => by rw [hg], rdok_of_globals hok hg, fun a ha => by
      show st.memory a = s0.memory a
      rw [hmem]; exact hp.1.2.2 a ha⟩
  · intro s hs hp vs hvs callee r st hR _ habn
    rw [evs_cons (ev_lw hp.2) evs_nil] at hvs
    cases hvs
    obtain ⟨hmem, hlook, hother⟩ := hR (abn_good habn) m0 rfl
    have hg : st.globals = s0.globals := globals_restore h0
      (fun g hg => (hother g hg).trans (hp.1.1 g hg)) hlook
    exact Or.inr ⟨r, rfl, habn, fun g _ => by show st.globals.lookup g = _; rw [hg],
      rdok_of_globals hok (show st.globals = s0.globals from hg), fun a ha => by
      show st.memory a = s0.memory a
      rw [hmem]; exact hp.1.2.2 a ha⟩

def RvQ (s0 : State σ) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  SR s0 t ∧ ((∃ v, r = some (.returned v)) → t.globals = s0.globals)

def RvMid (s0 : State σ) (m0 : BitVec 64) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r = none ∧ SR s0 t ∧ t.locals.lookup markN = some (.val (.word m0))) ∨
    (∃ r', r = some r' ∧ Abn r' ∧ SR s0 t)

theorem rvq_abn {s0 t : State σ} {r : PanSemResultExact 64} (h : Abn r) (hs : SR s0 t) :
    RvQ s0 (some r) t :=
  ⟨hs, fun ⟨v, hv⟩ => absurd (Option.some.inj hv) (abn_ne_returned h v)⟩

theorem rvi_core (hBody : FunSpec σ X (nm "_rlp_validate_items_body")
      (fun vs s r t => Good (some r) → RdOK s → SR s t))
    (hrel : ReleaseSpec σ X (nm "scratch_release") gScratch) {s0 sx : State σ} {m0 : BitVec 64}
    (hok : RdOK s0) (h0 : s0.globals.lookup gScratch = some (.val (.word m0)))
    (hg : sx.globals = s0.globals) (hm : sx.memory = s0.memory)
    (hmark : sx.locals.lookup markN = some (.val (.word m0))) :
    HoareG σ X (fun t => t = sx)
      (.seq (.call (some (none, some (rlpErrN, rvE, rviHandler))) (nm "_rlp_validate_items_body")
          [lv pN, lv rvLen])
        (.seq (callD (nm "scratch_release") [lv markN]) (.return (cw 0)))) (RvQ s0) := by
  have hsx : SR s0 sx := sr_of_same hok hg (fun a _ => by rw [hm])
  have hrelc := hoareG_release_restore (X := X) hok hrel h0
  have hrelc' := hoareG_pre hrelc (P' := RvMid s0 m0 none) (fun t _ ht => by
    rcases ht with ⟨-, hsr, hmk⟩ | ⟨r', h', -⟩
    · exact ⟨hsr, hmk⟩
    · cases h')
  refine hoareG_seq (R := RvMid s0 m0) ?_ (fun r t _ hr _ h => ?_) ?_
  · refine hoareG_callH hBody ?_ ?_ ?_
    · intro s hs hP vs hvs callee v st hR hctx
      subst hP
      have hSR := hR (by simp [Good]) (rdok_ent hsx.2.1 callee)
      exact Or.inl ⟨rfl, sr_locals (sr_trans hsx (sr_ent hSR)) rfl rfl, hmark⟩
    · intro s hs hP vs hvs callee v st hR hctx
      subst hP
      have hSR := sr_trans hsx (sr_ent (hR (by simp [Good]) (rdok_ent hsx.2.1 callee)))
      unfold rviHandler
      refine hoareG_seq (R := fun r t => (r = none ∧ SR s0 t ∧ t.globals = s0.globals ∧
          t.locals.lookup markN = some (.val (.word m0))) ∨ (∃ r', r = some r' ∧ Abn r' ∧ SR s0 t))
        (hoareG_pre hrelc (fun t _ ht => ?_)) (fun r t _ hr _ h => ?_) ?_
      · subst ht
        refine ⟨sr_locals hSR rfl rfl, ?_⟩
        show (s.locals.update (rvE, v)).lookup markN = _
        rw [lookup_update_ne _ _ (by decide)]
        exact hmark
      · rcases h with ⟨h', -⟩ | ⟨r', hr', habn, hsr⟩
        · exact absurd h' hr
        · subst hr'
          exact Or.inr ⟨r', rfl, habn, hsr⟩
      · refine hoareG_pre (hoareG_raise fun t _ ht x hx => ?_) (fun t _ ht => ht)
        rcases ht with ⟨-, hsr, -, -⟩ | ⟨r', h', -⟩
        · exact Or.inr ⟨_, rfl, Or.inl ⟨rlpErrN, x, rfl⟩, sr_locals hsr rfl rfl⟩
        · cases h'
    · intro s hs hP vs hvs callee r st hR hctx habn hne
      subst hP
      have hSR := sr_trans hsx (sr_ent (hR (abn_good habn) (rdok_ent hsx.2.1 callee)))
      exact Or.inr ⟨r, rfl, habn, sr_locals hSR rfl rfl⟩
  · rcases h with ⟨hr', -⟩ | ⟨r', hr', habn, hsr⟩
    · exact absurd hr' hr
    · subst hr'
      exact rvq_abn habn hsr
  · refine hoareG_seq hrelc' (fun r t _ hr _ h => ?_) ?_
    · rcases h with ⟨h', -⟩ | ⟨r', hr', habn, hsr⟩
      · exact absurd h' hr
      · subst hr'
        exact rvq_abn habn hsr
    · refine hoareG_pre (hoareG_return fun s _ hp v hv => ?_) (fun t _ ht => ht)
      rcases hp with ⟨-, hsr, hg', -⟩ | ⟨r', h', -⟩
      · exact ⟨sr_locals hsr rfl rfl, fun _ => hg'⟩
      · cases h'

theorem rvq_loc {s0 t t' : State σ} {r : Option (PanSemResultExact 64)} (h : RvQ s0 r t)
    (hg : t'.globals = t.globals) (hm : t'.memory = t.memory) : RvQ s0 r t' :=
  ⟨sr_locals h.1 hg hm, fun hv => hg.trans (h.2 hv)⟩

theorem rdSpec_rlp_validate_items (hC : X.code.lookup = guestCode)
    (hBody : FunSpec σ X (nm "_rlp_validate_items_body")
      (fun vs s r t => Good (some r) → RdOK s → SR s t)) :
    RdSpec σ X (nm "rlp_validate_items") := by
  have hMk := markSpec'_scratch_mark (σ := σ) hC
  have hrel := releaseSpec_scratch_release (σ := σ) hC
  intro vs body callee rs hl s0 hs hloc r hr hg hok
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA', hB', hla, hlb⟩ := lookupCode_two code_rlp_validate_items (by decide) hl
  obtain ⟨p, hp, hpo⟩ := hok.1
  obtain ⟨a1, b1, c1, ha1, hb1, hc1, -⟩ := AllocImpl.ptrsOf_some hp
  have h0 : s0.globals.lookup gScratch = some (.val (.word c1)) := AllocImpl.lookup_of_gword hc1
  have h : HoareG σ X (fun t => t = s0) rviBody (RvQ s0) := by
    unfold rviBody
    refine hoareG_decCall hMk ?_ ?_
    · intro s hs' hP vs hvs callee' v st hR hctx hsh
      subst hP
      rw [evs_nil] at hvs
      cases hvs
      obtain ⟨hmem, hgl, hv⟩ := hR (by simp [Good]) rfl
      have hv' := mark_val_word (hv v rfl) hc1
      subst hv'
      refine hoareG_conseq (Q := RvQ s) (P := fun t => t = setVarHOLFinite markN (.val (.word c1))
          { st with locals := s.locals }) ?_ (fun t _ ht => ht) (fun r t _ _ hq => ?_)
      · refine hoareG_dec fun s2 hs2 hp2 v2 hv2 hsh2 => ?_
        subst hp2
        refine hoareG_conseq (rvi_core hBody hrel hok h0 ?_ ?_ ?_) (fun t _ ht => ht)
          (fun r t _ _ hq => rvq_loc hq rfl rfl)
        · exact hgl
        · exact hmem
        · show ((s.locals.update (markN, .val (.word c1))).update (rvE, v2)).lookup markN = _
          rw [lookup_update_ne _ _ (by decide)]
          exact lookup_update_self _ _ _
      · exact rvq_loc hq rfl rfl
    · intro s hs' hP vs hvs callee' r st hR hctx habn
      subst hP
      rw [evs_nil] at hvs
      cases hvs
      obtain ⟨hmem, hgl, -⟩ := hR (abn_good habn) rfl
      exact rvq_abn habn (sr_of_same hok hgl (fun a _ => by show st.memory a = s.memory a; exact congrFun hmem a))
  have := h s0 hs rfl (by rw [hr]; exact hg)
  rw [hr] at this
  exact ⟨this.1, fun ⟨v, hv⟩ => this.2 ⟨v, by rw [hv]⟩⟩

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.rdSpec_rlp_validate_items
