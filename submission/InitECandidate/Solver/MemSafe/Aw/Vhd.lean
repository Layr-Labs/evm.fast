import InitECandidate.Solver.MemSafe.Aw.Vh

set_option autoImplicit false

/-!
# Target F, part 4: `validate_header`
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

def parN : MlS := nm "parent"
def ebgN : MlS := nm "ebg"
def expN : MlS := nm "expected"
def dzN : MlS := nm "dz"

def ldw (x : MlS) (c : Nat) : ExpHOL 64 := .load .one (.op .add [lv x, cw c])
def ldq4 (x : MlS) (c : Nat) : ExpHOL 64 :=
  .load (.comb [.one, .one, .one, .one]) (.op .add [lv x, cw c])
def chk (c : ExpHOL 64) (k : Nat) : ProgHOL 64 := .ite c (.raise blockErrN (cw k)) .skip
def memeqA (args : List (ExpHOL 64)) : ProgHOL 64 :=
  .call (some (some (.local, veqN), none)) (nm "memeq") args

def vdSeg : ProgHOL 64 :=
  sq [.storeByte (lv tmpN) (cw 192),
      callD (nm "keccak256") [lv tmpN, cw 1, .op .add [lv tmpN, cw 32]],
      memeqA [ldw dhN 16, .op .add [lv tmpN, cw 32], cw 32],
      .ite (.cmp .equal (lv veqN) (cw 0))
        (.seq (callD (nm "heap_release") [lv markN]) (.raise blockErrN (cw 29))) .skip,
      callD (nm "header_hash") [lv parN, lv tmpN],
      memeqA [ldw dhN 8, lv tmpN, cw 32]]
    (.seq (callD (nm "heap_release") [lv markN])
      (.seq (chk (.cmp .equal (lv veqN) (cw 0)) 30) (.return (cw 0))))

def vdBody : ProgHOL 64 :=
  sq [chk (.cmp .lower (ldw dhN 96) (cw 1)) 20]
    (.decCall ebgN .one (nm "calculate_excess_blob_gas") [lv parN]
      (sq [chk (.cmp .notEqual (ldw dhN 208) (lv ebgN)) 21,
           chk (.cmp .lower (ldw dhN 104) (ldw dhN 112)) 22]
        (.decCall expN (.comb [.one, .one, .one, .one]) (nm "calculate_base_fee_per_gas")
          [ldw dhN 104, ldw parN 104, ldw parN 112, ldq4 parN 160]
          (.decCall veqN .one (nm "u256_eq") [lv expN, ldq4 dhN 160]
            (sq [chk (.cmp .equal (lv veqN) (cw 0)) 23,
                 chk (.cmp .notLower (ldw parN 120) (ldw dhN 120)) 24,
                 chk (.cmp .notEqual (ldw dhN 96) (.op .add [ldw parN 96, cw 1])) 25,
                 chk (.cmp .lower (cw 32) (ldw dhN 136)) 26]
              (.decCall dzN .one (nm "u256_is_zero") [ldq4 dhN 64]
                (sq [chk (.cmp .equal (lv dzN) (cw 0)) 27,
                     memeqA [ldw dhN 152, gv (nm "hdr_zero8"), cw 8],
                     chk (.cmp .equal (lv veqN) (cw 0)) 28]
                  (.decCall markN .one (nm "heap_mark") []
                    (.decCall tmpN .one (nm "alloc") [cw 64] vdSeg)))))))))

theorem code_validate_header : guestCode (nm "validate_header") =
    some ([(parN, .one), (dhN, .one)], vdBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_validate_header =
      (nm "validate_header", [(parN, .one), (dhN, .one)], vdBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 239) (by decide)) ⟨_, rfl⟩ h

def NrQ (r : Option (PanSemResultExact 64)) : Prop := r = none ∨ ∃ r', r = some r' ∧ Abn r'

theorem nrQ_abn {r : PanSemResultExact 64} (h : Abn r) : NrQ (some r) := Or.inr ⟨r, rfl, h⟩

theorem hoareG_callRaise {P : State σ → Prop} {f : MlS} {args : List (ExpHOL 64)} {x : MlS}
    {e : ExpHOL 64} {a : AwE σ} {L : Locals → Prop} {Ret : ValueHOL 64 → Prop} :
    HoareG σ X P (.seq (callD f args) (.raise x e)) (AQ a L Ret) := by
  refine hoareG_seq (R := fun r _ => NrQ r)
    (hoareG_callD (Q := fun r _ => NrQ r) (R := fun _ _ _ _ => True)
      (fun _ _ _ _ _ _ _ _ _ _ => trivial) ?_ ?_)
    (fun r t _ hr _ hR => ?_) (hoareG_raise fun s hs hp v hv => aq_abn (a := a) (L := L) (Ret := Ret) (Or.inl ⟨x, v, rfl⟩))
  · intro s _ _ _ _ _ _ _ _ _
    exact Or.inl rfl
  · intro s _ _ _ _ _ _ _ _ _ hab
    exact nrQ_abn hab
  · rcases hR with h | ⟨r', hr', hab⟩
    · exact absurd h hr
    · subst hr'
      exact aq_abn hab

theorem hoareG_chk {a : AwE σ} {c : ExpHOL 64} {k : Nat} {L : Locals → Prop}
    {Ret : ValueHOL 64 → Prop} : HoareG σ X (APre a L) (chk c k) (AQ a L Ret) :=
  hoareG_iteA hoareG_raiseA (hoareG_skipA fun m h => h)

/-- A sequence run in the world `a2 = a.rebase p''`, whose last statement is run in `a`. -/
theorem hoareG_sqW {a : AwE σ} {p'' : Ptrs} (hm : a.p0.Mono p'') {L L'' : Locals → Prop}
    {Ret : ValueHOL 64 → Prop} : ∀ (ps : List (ProgHOL 64)) (last : ProgHOL 64),
      (∀ p ∈ ps, HoareG σ X (APre (a.rebase p'') L) p (AQ (a.rebase p'') L Ret)) →
      HoareG σ X (APre a L) last (AQ a L'' Ret) →
      HoareG σ X (APre (a.rebase p'') L) (sq ps last) (AQ a L'' Ret)
  | [], last, _, hl => hoareG_pre hl (fun s _ h => ⟨awInv_unrebase hm h.1, h.2⟩)
  | p :: ps, last, hs, hl =>
      hoareG_seq (hs p (by simp)) (fun r t _ hr _ hq => by
          rcases r with _ | r
          · exact absurd rfl hr
          · refine ⟨hq.1, (fun h => nomatch h), fun v hv => ?_⟩
            obtain ⟨hI, hR⟩ := hq.2.2 v hv
            exact ⟨awInv_unrebase hm hI, hR⟩)
        (hoareG_pre (hoareG_sqW hm ps last (fun q hq => hs q (by simp [hq])) hl)
          (fun t _ ht => ⟨(ht.2.1 rfl).1, (ht.2.1 rfl).2⟩))

def vhdRd : List MlS := [nm "calculate_excess_blob_gas", nm "calculate_base_fee_per_gas",
  nm "u256_eq", nm "u256_is_zero", nm "memeq"]

theorem awSpec_validate_header {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C) (hAG : AllocGlobs C)
    (hRd : ∀ f ∈ vhdRd, RdSpec σ X f) (hWS : ScalarGlob C wsN 640)
    (hKec : CSumm σ X C H (nm "keccak256") ⟨[.any, .any, .buf 32], [], [], false⟩ [])
    (hHH : AWSpec σ X C H (nm "header_hash") [] HhPre (fun _ _ _ _ => True)) :
    AWSpec σ X C H (nm "validate_header") [] (fun _ _ _ => True) (fun _ _ _ _ => True) := by
  refine awSpec_of_hoareG (PV := fun _ _ => True) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bn, rfl, hA', hB', hla, hlb⟩ := lookupCode_two code_validate_header (by decide) hl
  obtain ⟨Pw, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨Hw, rfl⟩ := val_of_shapeEq_one hB'
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have hrd : ∀ g ∈ vhdRd, ASp a X g (fun _ _ => True) (fun _ _ _ => True) :=
    fun g hg => asp_of_rd hK hWS (hRd g hg)
  refine hoareG_conseq (P := APre a (fun _ => True)) (Q := AQ a (fun _ => False) (fun _ => True)) ?_
    (fun t _ ht => by subst ht; exact ⟨awInv_init a hG hp hB, trivial⟩)
    (fun _ _ _ _ h => ⟨h.1, fun hr => (h.2.1 hr).2.elim, h.2.2⟩)
  have dc : ∀ {g : MlS} {x : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64},
      g ∈ vhdRd → HoareG σ X (APre a (fun _ => True)) k (AQ a (fun _ => False) (fun _ => True)) →
      HoareG σ X (APre a (fun _ => True)) (.decCall x sh g args k)
        (AQ a (fun _ => False) (fun _ => True)) :=
    fun hg' hk => hoareG_decCallAs' hK (hrd _ hg') (L := fun _ => True) (Lk := fun _ => True)
      (L' := fun _ _ => False) (fun _ _ _ _ _ _ => trivial)
      (fun s vs v st hL _ _ _ => trivial) (fun _ => hk) (fun _ _ _ h => False.elim h)
  have hma : ∀ args : List (ExpHOL 64), HoareG σ X (APre a (fun _ => True)) (memeqA args)
      (AQ a (fun _ => True) (fun _ => True)) := fun args =>
    hoareG_callAsA hK (hrd (nm "memeq") (by simp [vhdRd])) (fun _ _ _ _ _ _ => trivial)
      (fun _ _ _ _ _ _ _ _ => trivial)
  unfold vdBody
  refine hoareG_sqA _ _ (fun q hq => ?_) (dc (by simp [vhdRd]) ?_)
  · simp only [List.mem_singleton] at hq
    subst hq
    exact hoareG_chk
  refine hoareG_sqA _ _ (fun q hq => ?_) (dc (by simp [vhdRd]) ?_)
  · simp only [List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl <;> exact hoareG_chk
  refine dc (by simp [vhdRd]) ?_
  refine hoareG_sqA _ _ (fun q hq => ?_) (dc (by simp [vhdRd]) ?_)
  · simp only [List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl | rfl | rfl <;> exact hoareG_chk
  refine hoareG_sqA _ _ (fun q hq => ?_) ?_
  · simp only [List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl | rfl
    · exact hoareG_chk
    · exact (hma _)
    · exact hoareG_chk
  -- mark
  refine hoareG_decCallAs' hK (asp_mark hK hC) (L := fun _ => True) (Lk := MkB p.hp markN)
    (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => False.elim h)
  · intro s hs hP vs hvs callee
    rw [evs_nil] at hvs
    cases hvs
    rfl
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨w, p', rfl, hp', hw, h1, h2, h3⟩ := hRet
    exact ⟨w, lookup_update_self _ _ _, h1, h2, h3⟩
  intro s1
  refine hoareG_decCallAsP hK (asp_alloc2 hK hC) (P := APre a (MkB p.hp markN)) (L := MkB p.hp markN)
    (Lout := fun _ => False) (L' := fun _ _ => False) (fun _ _ h => h) ?_ ?_
    (fun _ _ _ h => False.elim h)
  · intro s hs hP vs hvs callee
    rw [evs_cons (ev_cw _ 64) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s vs v st hs' hL hvs hI hRet hsh
    rw [evs_cons (ev_cw _ 64) evs_nil] at hvs
    cases hvs
    obtain ⟨⟨n', q, p'', hvs', hvq, hq1, hq2, hp'', hq3, hq4⟩, q', hq', hq5⟩ := hRet
    cases hvs'
    cases hvq
    cases hq'
    have hmono : a.p0.Mono p'' := by
      obtain ⟨Γ', p', hG, hp', e1, e2, e3, e4, -⟩ := hI
      rw [hp''] at hp'
      cases hp'
      exact e4
    have hord : p''.Ordered := by
      obtain ⟨Γ', p', hG, hp', -⟩ := hI
      obtain ⟨q2, hq2', ho, -⟩ := hG
      rw [hp''] at hq2'
      cases hq2'
      exact ho
    have hK2 := awOK_rebase hK hord hmono
    have h64 : (BitVec.ofNat 64 64).toNat = 64 := by decide
    rw [h64] at hq3
    have hHE : heapEnd = 2952790016 := rfl
    have hq1' : h0 ≤ q.toNat := hq1
    have hMem2 := asp_of_rd hK2 hWS (hRd (nm "memeq") (by simp [vhdRd]))
    have hKec2 := asp_of_cs hK2 hKec rfl (fun g hg => absurd hg (by simp))
    have hHH2 := asp_of_aw hK2 hHH (fun g hg => absurd hg (by simp))
      (Ret := fun _ _ _ => True) (fun _ _ _ _ _ => trivial)
    let L2 : Locals → Prop := fun m => Lk tmpN q m ∧ MkB p.hp markN m
    unfold vdSeg
    refine hoareG_pre (hoareG_sqW hmono (L := L2) _ _ ?hs ?hR) (fun t _ ht => ?pre)
    case pre =>
      subst ht
      have hI2 : AwInv a (setVarHOLFinite tmpN (.val (.word q)) { st with locals := s.locals }) :=
        awInv_same hK hI rfl rfl rfl rfl
      refine ⟨awInv_rebase hK hI2 ?_, lk_new _ _ _, mkb_upd (by decide) hL⟩
      rw [AllocImpl.ptrsOf_congr (show (setVarHOLFinite tmpN (.val (.word q))
        { st with locals := s.locals }).globals = st.globals from rfl)]
      exact hp''
    case hR =>
      refine hoareG_seqA (L2 := L2)
        (hoareG_callAs hK (asp_release hK hC) ?_ (fun _ _ _ _ hL _ _ => hL))
        (hoareG_seqA (L2 := L2) hoareG_chk (hoareG_returnA hK (fun _ _ _ _ _ => trivial)))
      intro s' hs' hP vs hvs callee
      obtain ⟨w, hw, h1, h2, h3⟩ := hP.2.2
      rw [evs_cons (ev_lw hw) evs_nil] at hvs
      cases hvs
      exact ⟨w, rfl, h1, h2, h3⟩
    case hs =>
      have hcsp : ∀ (s' : State σ), AwInv (a.rebase p'') s' →
          ∃ p', ptrsOf s' = some p' ∧ p''.hp ≤ p'.hp := by
        intro s' hI'
        obtain ⟨Γ', p', hG', hp', e1', e2', e3', e4', -⟩ := hI'
        exact ⟨p', hp', e4'.1⟩
      intro e he
      simp only [List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false] at he
      rcases he with rfl | rfl | rfl | rfl | rfl | rfl
      · refine hoareG_storeByteA hK2 (fun s' _ hL w hw => ?_)
        rw [ev_lw hL.1] at hw
        cases hw
        exact hq1
      · refine hoareG_callAs hK2 hKec2 ?_ (fun _ _ _ _ hL _ _ => hL)
        intro s' hs' hP vs hvs callee
        obtain ⟨v1, v2, v3, rfl, f1, f2, f3⟩ := evs_three hvs
        rw [ev_add2 (ev_lw hP.2.1) (ev_cw _ 32)] at f3
        cases f3
        obtain ⟨p', hp', hle'⟩ := hcsp s' hP.1
        have hT32 : (q + BitVec.ofNat 64 32).toNat = q.toNat + 32 := toNat_addc (by omega)
        refine ⟨rfl, p', hp', fun i pt v hpt hv => ?_⟩
        rcases i with _ | _ | _ | i
        · simp at hpt; subst hpt; trivial
        · simp at hpt; subst hpt; trivial
        · simp at hpt hv
          subst hpt
          subst hv
          refine ⟨q + BitVec.ofNat 64 32, rfl, ?_, ?_⟩
          · show h0 ≤ (q + BitVec.ofNat 64 32).toNat
            rw [hT32]; omega
          · rw [hT32]; omega
        · simp at hpt
      · exact hoareG_callAsA hK2 hMem2 (fun _ _ _ _ _ _ => trivial)
          (fun s' vs v st hL _ _ _ => ⟨lk_updo (by decide) hL.1, mkb_upd (by decide) hL.2⟩)
      · exact hoareG_iteA hoareG_callRaise (hoareG_skipA fun m h => h)
      · refine hoareG_callAs hK2 hHH2 ?_ (fun _ _ _ _ hL _ _ => hL)
        intro s' hs' hP vs hvs callee
        obtain ⟨v1, v2, rfl, f1, f2⟩ := evs_two hvs
        rw [ev_lw hP.2.1] at f2
        cases f2
        obtain ⟨p', hp', hle'⟩ := hcsp s' hP.1
        exact ⟨q, rfl, hq1, p', hp', by omega⟩
      · exact hoareG_callAsA hK2 hMem2 (fun _ _ _ _ _ _ => trivial)
          (fun s' vs v st hL _ _ _ => ⟨lk_updo (by decide) hL.1, mkb_upd (by decide) hL.2⟩)

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_validate_header
