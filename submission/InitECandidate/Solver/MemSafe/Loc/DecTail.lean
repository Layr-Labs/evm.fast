import InitECandidate.Solver.MemSafe.St2.Gao
import InitECandidate.Solver.Spec.Mpt.Leaves.RlpItem
import InitECandidate.Solver.Spec.Mpt.Leaves.Slices
import InitECandidate.Solver.Spec.Mpt.Decode.StepMain

set_option autoImplicit false

/-!
# `decode_account_from_leaf`, the tail after the four items (sonnet-loc)

The part of the body from `daMid` on is a purely local computation: the checks, the two loops, the
`memzero`, the two field stores.  Its postcondition is the located `a + 40` cell:
`FinP lo hi A t`.  Because `empty_trie_root` and `empty_code_hash` are read from globals whose
shape is not known in an arbitrary state, the located statement assumes both are words in the
*final* state (`GWg t.globals`); `hoare_antG` moves that assumption to the state after `memzero`
(the globals do not change afterwards).
-/

set_option maxRecDepth 1000000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Loc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
open InitECandidate.Solver.MemSafe.Integ

variable {σ : Type} {X : Ctx 64}

abbrev Locs := HolFiniteMapExact MlS (ValueHOL 64)

/-- `fk` holds a record `<a, b, c, d>` whose slice `[b, b + c)` lies in `[lo, hi)`. -/
def ItLoc (fk : MlS) (lo hi : Nat) (m : Locs) : Prop :=
  ∃ a b c d : BitVec 64, m.lookup fk = some (wv [a, b, c, d]) ∧ lo ≤ b.toNat ∧ b.toNat + c.toNat ≤ hi

def W4 (fk : MlS) (m : Locs) : Prop := ∃ a b c d : BitVec 64, m.lookup fk = some (wv [a, b, c, d])

/-- The locals facts the tail needs. -/
def TL (A : BitVec 64) (lo hi : Nat) (m : Locs) : Prop :=
  m.lookup (nm "acct_out") = some (.val (.word A)) ∧ ItLoc (nm "f2") lo hi m ∧ W4 (nm "f3") m

def TG (A : BitVec 64) (lo hi : Nat) (G0 : Locs) (t : State σ) : Prop :=
  TL A lo hi t.locals ∧ t.globals = G0

/-- Both hash globals are words. -/
def GWg (G : Locs) : Prop :=
  (∃ W : BitVec 64, G.lookup (nm "empty_trie_root") = some (.val (.word W))) ∧
    ∃ W : BitVec 64, G.lookup (nm "empty_code_hash") = some (.val (.word W))

/-- The located `a + 40` cell. -/
def FinP (lo hi : Nat) (A : BitVec 64) (t : State σ) : Prop :=
  gword t (nm "empty_trie_root") = some (rd t.memory (A + BitVec.ofNat 64 40)) ∨
    (lo ≤ (rd t.memory (A + BitVec.ofNat 64 40)).toNat ∧ (rd t.memory (A + BitVec.ofNat 64 40)).toNat + 32 ≤ hi)

theorem tl_set {A lo hi} {s : State σ} (h : TL A lo hi s.locals) {x : MlS}
    (h1 : x ≠ nm "acct_out") (h2 : x ≠ nm "f2") (h3 : x ≠ nm "f3") (v : ValueHOL 64) :
    TL A lo hi (setVarHOLFinite x v s).locals := by
  obtain ⟨ha, ⟨a, b, c, d, hf, hb1, hb2⟩, ⟨a3, b3, c3, d3, hf3⟩⟩ := h
  refine ⟨?_, ⟨a, b, c, d, ?_, hb1, hb2⟩, ⟨a3, b3, c3, d3, ?_⟩⟩
  · rw [lk_set_ne _ _ h1]; exact ha
  · rw [lk_set_ne _ _ h2]; exact hf
  · rw [lk_set_ne _ _ h3]; exact hf3

theorem tl_res {A lo hi} {m : Locs} (h : TL A lo hi m) {x : MlS}
    (h1 : x ≠ nm "acct_out") (h2 : x ≠ nm "f2") (h3 : x ≠ nm "f3")
    (old : Option (ValueHOL 64)) : TL A lo hi (m.resVarEq (x, old)) := by
  obtain ⟨ha, ⟨a, b, c, d, hf, hb1, hb2⟩, ⟨a3, b3, c3, d3, hf3⟩⟩ := h
  refine ⟨?_, ⟨a, b, c, d, ?_, hb1, hb2⟩, ⟨a3, b3, c3, d3, ?_⟩⟩
  · rw [lookup_resVarEq_ne _ _ h1]; exact ha
  · rw [lookup_resVarEq_ne _ _ h2]; exact hf
  · rw [lookup_resVarEq_ne _ _ h3]; exact hf3

/-! ## Generic rules -/

theorem hoare_antG {P : State σ → Prop} {b : ProgHOL 64} {F : State σ → Prop}
    (h : ∀ G0 : Locs, Hoare σ X (fun s => P s ∧ s.globals = G0) b
      (fun r t => ∀ v, r = some (.returned v) → t.globals = G0 ∧ (GWg G0 → F t))) :
    Hoare σ X P b (fun r t => ∀ v, r = some (.returned v) → GWg t.globals → F t) := by
  intro s hs hP ht v hv hW
  have := h s.globals s hs ⟨hP, rfl⟩ ht v hv
  exact this.2 (this.1 ▸ hW)

theorem hoare_whileI {I : State σ → Prop} {c : ExpHOL 64} {body : ProgHOL 64}
    (hclk : ∀ s, I s → I (decClockHOLFinite s))
    (hb : Hoare σ X (fun s => I s ∧ CondTrue s c) body (fun r t => r = none ∧ I t)) :
    Hoare σ X I (.while c body) (fun r t => r = none ∧ I t) := by
  refine hoare_while hclk (hoare_post hb ?_) (fun s _ hI _ => ⟨rfl, hI⟩)
  intro r t _ _ ⟨hr, hI⟩
  subst hr
  exact ⟨fun _ => hI, (fun h => by cases h), (fun h => by cases h), (fun v h => by cases h)⟩

theorem hoare_guardK {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {c : ExpHOL 64} {args : List (ExpHOL 64)} {k : ProgHOL 64} (hC : X.code.lookup = guestCode)
    (hk : Hoare σ X P k Q) :
    Hoare σ X P (.seq (.ite c (callD (nm "mpt_fail") args) .skip) k) Q :=
  hoare_guard_seq (funRet_mpt_fail hC) (hoare_pre hk fun _ _ h => h.1)

theorem failK {Q : Option (PanSemResultExact 64) → State σ → Prop} {P : State σ → Prop}
    {args : List (ExpHOL 64)} (hC : X.code.lookup = guestCode) :
    Hoare σ X P (callD (nm "mpt_fail") args) Q :=
  hoare_callD (funSpec_of_funRet (funRet_mpt_fail hC)) fun _ _ _ _ _ _ w _ hR _ => (hR w rfl).elim

/-! ## The loops -/

theorem rd_of_upd {M : Mem} {w a : BitVec 64} {x : BitVec 64} (h : a ≠ w) :
    rd (fun b => if b = w then (HolWordLab.word x) else M b) a = rd M a := by
  unfold rd; simp [h]

theorem rd_of_upd_self {M : Mem} {w : BitVec 64} {x : BitVec 64} :
    rd (fun b => if b = w then (HolWordLab.word x) else M b) w = x := by
  unfold rd; simp


abbrev TGQ (A : BitVec 64) (lo hi : Nat) (G0 : Locs) : Option (PanSemResultExact 64) → State σ → Prop :=
  fun r t => r = none ∧ TG A lo hi G0 t

theorem hoare_glob {P : State σ → Prop} {b : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : ∀ G0 : Locs, Hoare σ X (fun s => P s ∧ s.globals = G0) b Q) : Hoare σ X P b Q :=
  fun s hs hP ht => h s.globals s hs ⟨hP, rfl⟩ ht

theorem hoare_decT {A lo hi} {G0 : Locs} {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    (h1 : n ≠ nm "acct_out") (h2 : n ≠ nm "f2") (h3 : n ≠ nm "f3")
    (hb : Hoare σ X (TG A lo hi G0) body (TGQ A lo hi G0)) :
    Hoare σ X (TG A lo hi G0) (.dec n sh e body) (TGQ A lo hi G0) := by
  refine hoare_dec fun s hs hT v hv hsh => ?_
  refine hoare_conseq hb (fun t _ ht => ?_) (fun r t _ _ ⟨hr, hT'⟩ => ⟨hr, tl_res hT'.1 h1 h2 h3 _, hT'.2⟩)
  subst ht
  exact ⟨tl_set hT.1 h1 h2 h3 v, hT.2⟩

theorem hoare_assignT {A lo hi} {G0 : Locs} {n : MlS} {e : ExpHOL 64}
    (h1 : n ≠ nm "acct_out") (h2 : n ≠ nm "f2") (h3 : n ≠ nm "f3") :
    Hoare σ X (TG A lo hi G0) (.assign .local n e) (TGQ A lo hi G0) :=
  hoare_assign fun s _ hT v _ _ => ⟨rfl, tl_set hT.1 h1 h2 h3 v, hT.2⟩

theorem hoare_storeT {A lo hi} {G0 : Locs} {a e : ExpHOL 64} :
    Hoare σ X (TG A lo hi G0) (.store a e) (TGQ A lo hi G0) :=
  hoare_store fun s _ hT w v mem _ _ _ => ⟨rfl, hT⟩

theorem hoare_seqT {A lo hi} {G0 : Locs} {a b : ProgHOL 64}
    (ha : Hoare σ X (TG A lo hi G0) a (TGQ A lo hi G0))
    (hb : Hoare σ X (TG A lo hi G0) b (TGQ A lo hi G0)) :
    Hoare σ X (TG A lo hi G0) (.seq a b) (TGQ A lo hi G0) :=
  hoare_seq ha (fun r t _ hr _ h => absurd h.1 hr) (hoare_pre hb fun _ _ h => h.2)

theorem body1 {A lo hi} {G0 : Locs} :
    Hoare σ X (TG A lo hi G0) daW1 (TGQ A lo hi G0) :=
  hoare_seqT (hoare_assignT (by decide) (by decide) (by decide))
    (hoare_assignT (by decide) (by decide) (by decide))

theorem body2 {A lo hi} {G0 : Locs} :
    Hoare σ X (TG A lo hi G0) daW2 (TGQ A lo hi G0) := by
  unfold daW2
  exact hoare_decT (by decide) (by decide) (by decide) (hoare_decT (by decide) (by decide) (by decide)
    (hoare_seqT hoare_storeT (hoare_assignT (by decide) (by decide) (by decide))))


open InitECandidate.Solver.Spec.Mpt.Dec (notEq_else)
open InitECandidate.Solver.Spec.Mpt.Leaves (hoare_decL)

theorem flat_word (w : BitVec 64) : flattenHOL (ValueHOL.val (HolWordLab.word w)) = [HolWordLab.word w] := by
  rw [flattenHOL]

theorem ne_off {A : BitVec 64} {i j : Nat} (h : i ≠ j) (hi : i < 2 ^ 64) (hj : j < 2 ^ 64) :
    A + BitVec.ofNat 64 i ≠ A + BitVec.ofNat 64 j := by
  intro e
  have h2 := congrArg BitVec.toNat e
  simp only [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt hi, Nat.mod_eq_of_lt hj] at h2
  have hA := A.isLt
  omega

/-- The `st acct_out + o, <global g>` / `st acct_out + o, f.1` field store. -/
theorem fld2 (hC : X.code.lookup = guestCode) {A lo hi} {G0 : Locs} :
    Hoare σ X (TG A lo hi G0) (daFld (nm "f2") (nm "empty_trie_root") 40 23)
      (fun r t => r = none ∧ t.globals = G0 ∧ (GWg G0 → FinP lo hi A t) ∧ TL A lo hi t.locals) := by
  unfold daFld
  refine hoare_ite ?_ ?_
  · refine hoare_store fun s hs ⟨hT, _⟩ w v mem hw hv hmem => ?_
    rw [ev_add2 (ev_lw hT.1.1) (ev_cw _ 40)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    subst hw
    refine ⟨rfl, hT.2, fun hg => ?_, hT.1⟩
    obtain ⟨⟨W, hW⟩, -⟩ := hg
    rw [← hT.2] at hW
    rw [ev_gv, hW] at hv
    cases hv
    rw [flat_word] at hmem
    obtain ⟨-, rfl⟩ := stores_one hmem
    refine Or.inl ?_
    show gword s (nm "empty_trie_root") = _
    rw [rd_of_upd_self]
    unfold gword; rw [hW]
  · refine hoare_guard_seq (funRet_mpt_fail hC) ?_
    refine hoare_store fun s hs ⟨⟨hT, _⟩, hc⟩ w v mem hw hv hmem => ?_
    obtain ⟨a, b, c, d, hf, hb1, hb2⟩ := hT.1.2.1
    have hc2 := ev_rfield_wv (s := s) (i := 2) (by rw [ev_lv]; exact hf) (by simp)
    have hc1 := ev_rfield_wv (s := s) (i := 1) (by rw [ev_lv]; exact hf) (by simp)
    simp only [List.getElem_cons_succ, List.getElem_cons_zero] at hc1 hc2
    have h32 := notEq_else hc2 hc
    rw [ev_add2 (ev_lw hT.1.1) (ev_cw _ 40)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    subst hw
    rw [hc1] at hv
    cases hv
    rw [flat_word] at hmem
    obtain ⟨-, rfl⟩ := stores_one hmem
    refine ⟨rfl, hT.2, fun _ => Or.inr ?_, hT.1⟩
    show lo ≤ (rd _ _).toNat ∧ (rd _ _).toNat + 32 ≤ hi
    rw [rd_of_upd_self]
    have : c.toNat = 32 := by rw [h32]; rfl
    exact ⟨hb1, by omega⟩

theorem fld3 (hC : X.code.lookup = guestCode) {A lo hi} {G0 : Locs} :
    Hoare σ X (fun t => TG A lo hi G0 t ∧ (GWg G0 → FinP lo hi A t))
      (daFld (nm "f3") (nm "empty_code_hash") 48 24)
      (fun r t => r = none ∧ t.globals = G0 ∧ (GWg G0 → FinP lo hi A t)) := by
  unfold daFld
  have h48 : A + BitVec.ofNat 64 40 ≠ A + BitVec.ofNat 64 48 := ne_off (by decide) (by decide) (by decide)
  refine hoare_ite ?_ ?_
  · refine hoare_store fun s hs ⟨⟨hT, hF⟩, _⟩ w v mem hw hv hmem => ?_
    rw [ev_add2 (ev_lw hT.1.1) (ev_cw _ 48)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    subst hw
    refine ⟨rfl, hT.2, fun hg => ?_⟩
    have hF' := hF hg
    obtain ⟨-, W, hW⟩ := hg
    rw [← hT.2] at hW
    rw [ev_gv, hW] at hv
    cases hv
    rw [flat_word] at hmem
    obtain ⟨-, rfl⟩ := stores_one hmem
    have e := rd_of_upd (M := s.memory) (x := W) (w := A + BitVec.ofNat 64 48) (a := A + BitVec.ofNat 64 40) h48
    dsimp only [FinP]
    rw [e]
    exact hF'
  · refine hoare_guard_seq (funRet_mpt_fail hC) ?_
    refine hoare_store fun s hs ⟨⟨⟨hT, hF⟩, _⟩, hc⟩ w v mem hw hv hmem => ?_
    obtain ⟨a, b, c, d, hf⟩ := hT.1.2.2
    have hc1 := ev_rfield_wv (s := s) (i := 1) (by rw [ev_lv]; exact hf) (by simp)
    simp only [List.getElem_cons_succ, List.getElem_cons_zero] at hc1
    rw [ev_add2 (ev_lw hT.1.1) (ev_cw _ 48)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    subst hw
    rw [hc1] at hv
    cases hv
    rw [flat_word] at hmem
    obtain ⟨-, rfl⟩ := stores_one hmem
    refine ⟨rfl, hT.2, fun hg => ?_⟩
    have hF' := hF hg
    have e := rd_of_upd (M := s.memory) (x := b) (w := A + BitVec.ofNat 64 48) (a := A + BitVec.ofNat 64 40) h48
    dsimp only [FinP]
    rw [e]
    exact hF'


theorem tailB (hC : X.code.lookup = guestCode) {A lo hi} {G1 : Locs} :
    Hoare σ X (TG A lo hi G1)
      (.seq (.assign .local (nm "i") (cw 0))
        (.seq (.while (.cmp .lower (lv (nm "i")) (.rfield 2 (lv (nm "f1")))) daW2)
          (.seq (daFld (nm "f2") (nm "empty_trie_root") 40 23)
            (.seq (daFld (nm "f3") (nm "empty_code_hash") 48 24) (.return (cw 0))))))
      (fun r t => ∀ v, r = some (.returned v) → t.globals = G1 ∧ (GWg G1 → FinP lo hi A t)) := by
  refine hoare_seq (R := TGQ A lo hi G1) (hoare_assignT (by decide) (by decide) (by decide))
    (fun r t _ hr _ h => absurd h.1 hr) (hoare_pre ?_ (fun t _ h => h.2))
  refine hoare_seq (R := TGQ A lo hi G1) (hoare_whileI (I := TG A lo hi G1) (fun s h => h)
    (hoare_pre body2 fun _ _ h => h.1)) (fun r t _ hr _ h => absurd h.1 hr) (hoare_pre ?_ (fun t _ h => h.2))
  refine hoare_seq (R := fun r t => r = none ∧ t.globals = G1 ∧ (GWg G1 → FinP lo hi A t) ∧
      TL A lo hi t.locals) (fld2 hC) (fun r t _ hr _ h => absurd h.1 hr) (hoare_pre ?_ (fun t _ h => h.2))
  refine hoare_seq (R := fun r t => r = none ∧ t.globals = G1 ∧ (GWg G1 → FinP lo hi A t))
    (hoare_pre (fld3 hC) (fun t _ h => ⟨⟨h.2.2, h.1⟩, h.2.1⟩)) (fun r t _ hr _ h => absurd h.1 hr)
    (hoare_pre ?_ (fun t _ h => h.2))
  exact hoare_return fun t _ ⟨hg, hF⟩ v hv v' hv' => ⟨hg, hF⟩

theorem tailC (hC : X.code.lookup = guestCode) {A lo hi} {G0 : Locs} :
    Hoare σ X (TG A lo hi G0) daMid
      (fun r t => ∀ v, r = some (.returned v) → GWg t.globals → FinP lo hi A t) := by
  unfold daMid
  refine hoare_guardK hC (hoare_guardK hC ?_)
  refine hoare_decL (fun _ _ _ h => h) fun s hs hT v hv hsh => ?_
  refine hoare_pre (P := TG A lo hi G0) ?_ fun t _ ht => ?_
  swap
  · subst ht; exact ⟨tl_set hT.1 (by decide) (by decide) (by decide) v, hT.2⟩
  refine hoare_decL (fun _ _ _ h => h) fun s1 hs1 hT1 v1 hv1 hsh1 => ?_
  refine hoare_pre (P := TG A lo hi G0) ?_ fun t _ ht => ?_
  swap
  · subst ht; exact ⟨tl_set hT1.1 (by decide) (by decide) (by decide) v1, hT1.2⟩
  -- nonce loop
  refine hoare_seq (R := TGQ A lo hi G0) (hoare_whileI (I := TG A lo hi G0) (fun s h => h)
    (hoare_pre body1 fun _ _ h => h.1)) (fun r t _ hr _ h => absurd h.1 hr) (hoare_pre ?_ (fun t _ h => h.2))
  refine hoare_seq (R := TGQ A lo hi G0) hoare_storeT (fun r t _ hr _ h => absurd h.1 hr)
    (hoare_pre ?_ (fun t _ h => h.2))
  refine hoare_guardK hC ?_
  unfold daTail
  refine hoare_seq (R := fun r t => r = none ∧ TL A lo hi t.locals)
    (hoare_callD (funSpec_true _) fun s _ hT vs hvs callee v st hR hctx => ⟨rfl, hT.1⟩)
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  refine hoare_pre (P := fun t => TL A lo hi t.locals) ?_ (fun t _ h => h.2)
  refine hoare_post (hoare_antG (F := FinP lo hi A) fun G1 => tailB hC) ?_
  exact fun r t _ _ h => h

theorem tail_all (hC : X.code.lookup = guestCode) (A : BitVec 64) (lo hi : Nat) :
    Hoare σ X (fun t => TL A lo hi t.locals) daMid
      (fun r t => ∀ v, r = some (.returned v) → GWg t.globals → FinP lo hi A t) :=
  hoare_glob fun G0 => tailC hC

end InitECandidate.Solver.MemSafe.Loc

#print axioms InitECandidate.Solver.MemSafe.Loc.tail_all
