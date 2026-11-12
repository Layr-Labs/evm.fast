import InitECandidate.Solver.Spec.Mpt.Leaves.MemDom
import InitECandidate.Solver.MemSafe.Helpers.Pure

/-!
# The footprint of `keccak_f1600`

```
fun 1 keccak_f1600(1 stp) {
  var a00 = lds 1 (stp + 0); … var a44 = lds 1 (stp + 192); var r = 0;
  while r < 24 { …24 rounds of local arithmetic… }
  st stp + 0, a00; … st stp + 192, a44; return 0; }
```

`foot_keccak_f1600`: every good result keeps the globals and writes only `[stp, stp + 200)`
(`KR stp 200`). The body is `kfBody kfW`: 25 loads into the state locals, `r = 0`, the round loop
`kfW`, and 25 word stores of the state locals (`entry_keccak_f1600`, by `cbv`). The loop body is
locals-only code that never assigns `stp` and declares no state local (`pure2B`, checked by
`decide_cbv`); assignments keep a local's shape, so the state locals hold single words throughout
(`OneL`, `hoareG_pure2`), and each final store writes exactly one cell `stp + 8k`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (State)
open InitECandidate.Solver.MemSafe.Helpers (LPre LN LQ BWPost FootRet footRet_of_hoareG hoareG_seqN
  hoareG_decN hoareG_preN hoareG_whileN hoareG_returnQ Stable stable_fixed Locals hoareG_seqL
  hoareG_callFoot hoareG_postL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd ModifiesOnly)

/-! ## Locals holding single words -/

/-- Every local of `Z` holds a single word. -/
def OneL (Z : List MlS) (m : Locals) : Prop :=
  ∀ y ∈ Z, ∃ w : BitVec 64, m.lookup y = some (.val (.word w))

/-- Locals-only code (as `pureB W`), that moreover declares no local of `Z`. -/
def pure2B (W Z : List MlS) : ProgHOL 64 → Bool
  | .skip => true
  | .assign .local x _ => !W.contains x
  | .dec x _ _ b => !W.contains x && !Z.contains x && pure2B W Z b
  | .seq a b => pure2B W Z a && pure2B W Z b
  | .ite _ a b => pure2B W Z a && pure2B W Z b
  | _ => false

/-- An assignment keeps the shape of a single-word local. -/
theorem word_of_valid {s : State σ} {x : MlS} {w : BitVec 64} {v : ValueHOL 64}
    (hx : s.locals.lookup x = some (.val (.word w)))
    (hv : isValidValueHOLFinite s .local x v = true) : ∃ w' : BitVec 64, v = .val (.word w') := by
  rw [isValidValueHOLFinite_eq] at hv
  have := Dec.shape_valid hx hv
  rw [shapeOf_val] at this
  exact val_of_shapeEq_one' this

theorem oneL_update {Z : List MlS} {m : Locals} {x : MlS} {v : ValueHOL 64} (h : OneL Z m)
    (hx : x ∈ Z → ∃ w : BitVec 64, v = .val (.word w)) : OneL Z (m.update (x, v)) := by
  intro y hy
  by_cases e : x = y
  · subst e
    obtain ⟨w, rfl⟩ := hx hy
    exact ⟨w, lookup_update_self _ _ _⟩
  · rw [lookup_update_ne _ _ e]; exact h y hy

theorem oneL_res {Z : List MlS} {m : Locals} {x : MlS} (old : Option (ValueHOL 64)) (h : OneL Z m)
    (hx : Z.contains x = false) : OneL Z (m.resVarEq (x, old)) := by
  intro y hy
  have hne : x ≠ y := by
    intro e; subst e; simp [hy] at hx
  rw [lookup_resVarEq_ne _ _ hne]; exact h y hy

/-- **Locals-only code keeps `J` and `OneL Z`**, completing normally. -/
theorem hoareG_pure2 {W Z : List MlS} {J : Locals → Prop} (hJ : Stable W J)
    {Rf : BitVec 64 → Prop} {s0 : State σ} :
    ∀ p : ProgHOL 64, pure2B W Z p = true →
      HoareG σ X (LPre Rf s0 (fun m => J m ∧ OneL Z m)) p (LN Rf s0 (fun m => J m ∧ OneL Z m))
  | .skip, _ => hoareG_skip fun _ _ hp => ⟨rfl, hp⟩
  | .assign .local x e, h => by
      have hx : W.contains x = false := by simpa [pure2B] using h
      refine hoareG_assign fun s _ hp v _ hval => ⟨rfl, ⟨(hJ _ x hx hp.1.1).1 v,
        oneL_update hp.1.2 fun hz => ?_⟩, hp.2⟩
      obtain ⟨w, hw⟩ := hp.1.2 x hz
      exact word_of_valid hw hval
  | .assign .global _ _, h => by simp [pure2B] at h
  | .dec x sh e b, h => by
      simp only [pure2B, Bool.and_eq_true, Bool.not_eq_true'] at h
      obtain ⟨⟨hxW, hxZ⟩, hb⟩ := h
      refine hoareG_decN (L' := fun _ m => J m ∧ OneL Z m) (fun s _ hL v _ _ => ?_)
        (fun m m' _ h' => ⟨(hJ m' x hxW h'.1).2 _, oneL_res _ h'.2 hxZ⟩)
      refine hoareG_preN (hoareG_pure2 hJ b hb) fun m hm => ?_
      subst hm
      exact ⟨(hJ _ x hxW hL.1).1 v, oneL_update hL.2 fun hz => by simp [hz] at hxZ⟩
  | .seq a b, h => by
      simp only [pure2B, Bool.and_eq_true] at h
      exact hoareG_seqN (hoareG_pure2 hJ a h.1) (hoareG_pure2 hJ b h.2)
  | .ite c a b, h => by
      simp only [pure2B, Bool.and_eq_true] at h
      exact hoareG_ite (hoareG_pre (hoareG_pure2 hJ a h.1) fun _ _ h => h.1)
        (hoareG_pre (hoareG_pure2 hJ b h.2) fun _ _ h => h.1)
  | .primitive _ _ _, h => by simp [pure2B] at h
  | .store _ _, h => by simp [pure2B] at h
  | .store32 _ _, h => by simp [pure2B] at h
  | .storeByte _ _, h => by simp [pure2B] at h
  | .while _ _, h => by simp [pure2B] at h
  | .break, h => by simp [pure2B] at h
  | .continue, h => by simp [pure2B] at h
  | .call _ _ _, h => by simp [pure2B] at h
  | .decCall _ _ _ _ _, h => by simp [pure2B] at h
  | .extCall _ _ _ _ _, h => by simp [pure2B] at h
  | .raise _ _, h => by simp [pure2B] at h
  | .return _, h => by simp [pure2B] at h
  | .shMemLoad _ _ _ _, h => by simp [pure2B] at h
  | .shMemStore _ _ _, h => by simp [pure2B] at h
  | .tick, h => by simp [pure2B] at h
  | .annot _ _, h => by simp [pure2B] at h

/-! ## Declaration and store chains -/

/-- The cells `[X0, X0 + K)`. -/
def KR (X0 : BitVec 64) (K : Nat) (a : BitVec 64) : Prop := ∃ k, k < K ∧ a = X0 + BitVec.ofNat 64 k

/-- `var z1 = lds (x + k1); …; b` -/
def decChain (x : MlS) : List (MlS × Nat) → ProgHOL 64 → ProgHOL 64
  | [], b => b
  | (z, k) :: rest, b => .dec z .one (.load .one (.op .add [lv x, cw k])) (decChain x rest b)

/-- `st x + k1, z1; …; return 0` -/
def stChain (x : MlS) : List (Nat × MlS) → ProgHOL 64
  | [] => .return (cw 0)
  | (k, z) :: rest => .seq (.store (.op .add [lv x, cw k]) (lv z)) (stChain x rest)

/-- The locals invariant of the chains: `x = X0`, the locals of `Z` single words. -/
def XJ (x : MlS) (X0 : BitVec 64) (Z : List MlS) (m : Locals) : Prop :=
  m.lookup x = some (.val (.word X0)) ∧ OneL Z m

theorem hoareG_decChain {x : MlS} {X0 : BitVec 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {b : ProgHOL 64} {Ret : ValueHOL 64 → Prop} :
    ∀ (ds : List (MlS × Nat)) (D : List MlS), (∀ z ∈ ds.map Prod.fst, z ≠ x) →
      HoareG σ X (LPre Rf s0 (XJ x X0 (ds.map Prod.fst ++ D))) b (LQ Rf s0 (fun _ => True) Ret) →
      HoareG σ X (LPre Rf s0 (XJ x X0 D)) (decChain x ds b) (LQ Rf s0 (fun _ => True) Ret)
  | [], D, _, hb => by simp only [List.map_nil, List.nil_append] at hb; exact hb
  | (z, k) :: rest, D, hne, hb => by
      have hzx : z ≠ x := hne z (by simp)
      unfold decChain
      refine hoareG_dec fun s _ hp v _ hsh => ?_
      obtain ⟨w, rfl⟩ := val_of_shapeEq_one hsh
      refine hoareG_conseq (hoareG_decChain rest (z :: D) (fun y hy => hne y (by simp [hy]))
        (hoareG_pre hb fun t _ ht => ⟨⟨ht.1.1, fun y hy => ht.1.2 y (by
          simp only [List.map_cons, List.cons_append, List.mem_cons, List.mem_append] at hy ⊢
          tauto)⟩, ht.2⟩)) (fun t _ ht => ?_) (fun r t _ _ hq => ⟨hq.1, fun _ => trivial, hq.2.2⟩)
      subst ht
      refine ⟨⟨by rw [lk_set_ne _ _ hzx]; exact hp.1.1, fun y hy => ?_⟩, hp.2⟩
      by_cases e : y = z
      · subst e; exact ⟨w, lk_set_self _ _ _⟩
      · rw [lk_set_ne _ _ (Ne.symm e)]
        exact hp.1.2 y (by simp only [List.mem_cons] at hy; tauto)

theorem ev_const {s : State σ} (c : BitVec 64) : ev s (.const c) = some (.val (.word c)) := rfl

theorem hoareG_stChain {x : MlS} {X0 : BitVec 64} {Z : List MlS} {K : Nat} {s0 : State σ} :
    ∀ sts : List (Nat × MlS), (∀ q ∈ sts, q.1 < K ∧ q.2 ∈ Z) →
      HoareG σ X (LPre (KR X0 K) s0 (XJ x X0 Z)) (stChain x sts)
        (LQ (KR X0 K) s0 (fun _ => True) (fun _ => True))
  | [], _ => hoareG_returnQ fun _ _ _ _ _ => trivial
  | (k, z) :: rest, hq => by
      obtain ⟨hk, hz⟩ := hq (k, z) (by simp)
      unfold stChain
      refine hoareG_seq (R := LN (KR X0 K) s0 (XJ x X0 Z)) ?_ (fun _ _ _ hr _ h => absurd h.1 hr)
        (hoareG_pre (hoareG_stChain rest fun q hq' => hq q (by simp [hq'])) fun _ _ h => h.2)
      refine MemSafe.hoareG_store fun s _ hp w v mem hw hv hmem => ⟨rfl, hp.1, hp.2.1, ?_⟩
      obtain ⟨hx, hone⟩ := hp.1
      obtain ⟨wz, hwz⟩ := hone z hz
      rw [ev_add2 (ev_lw hx) (ev_cw _ k)] at hw
      cases hw
      rw [ev_lv, hwz] at hv
      cases hv
      simp only [flattenHOL] at hmem
      have hm := (MemSafe.Helpers.store1_mod hmem).1
      exact hp.2.2.trans (hm.mono fun a ha => ⟨k, hk, ha⟩)

/-! ## The code of `keccak_f1600` -/

/-- The body of the first `while` after a declaration chain. -/
def whileBody : ProgHOL 64 → ProgHOL 64
  | .dec _ _ _ b => whileBody b
  | .seq (.while _ w) _ => w
  | _ => .skip

def kfDecs : List (MlS × Nat) :=
  [(nm "a00", 0), (nm "a10", 8), (nm "a20", 16), (nm "a30", 24), (nm "a40", 32),
   (nm "a01", 40), (nm "a11", 48), (nm "a21", 56), (nm "a31", 64), (nm "a41", 72),
   (nm "a02", 80), (nm "a12", 88), (nm "a22", 96), (nm "a32", 104), (nm "a42", 112),
   (nm "a03", 120), (nm "a13", 128), (nm "a23", 136), (nm "a33", 144), (nm "a43", 152),
   (nm "a04", 160), (nm "a14", 168), (nm "a24", 176), (nm "a34", 184), (nm "a44", 192)]

def kfSts : List (Nat × MlS) := kfDecs.map fun q => (q.2, q.1)

def kfNames : List MlS := kfDecs.map Prod.fst

/-- The body of `keccak_f1600` around its round loop `W`. -/
def kfBody (W : ProgHOL 64) : ProgHOL 64 :=
  decChain (nm "stp") kfDecs (.dec (nm "r") .one (cw 0)
    (.seq (.while (.cmp .less (lv (nm "r")) (cw 24)) W) (stChain (nm "stp") kfSts)))

/-- The round loop body of `keccak_f1600`. -/
def kfW : ProgHOL 64 := whileBody (fnEntry Guest.Software.guestFn_keccak_f1600).2.2.1

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_keccak_f1600 : fnEntry Guest.Software.guestFn_keccak_f1600 =
    (nm "keccak_f1600", [(nm "stp", .one)], kfBody kfW, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_keccak_f1600 :
    guestCode (nm "keccak_f1600") = some ([(nm "stp", .one)], kfBody kfW, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 101) (by decide)) ⟨_, rfl⟩
    entry_keccak_f1600

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem kfW_pure : pure2B [nm "stp"] kfNames kfW = true := by decide_cbv

/-! ## The footprint -/

/-- **`keccak_f1600(stp)`** keeps the globals and writes only `[stp, stp + 200)`. -/
theorem foot_keccak_f1600 (hC : X.code.lookup = guestCode) :
    FootRet σ X (nm "keccak_f1600") (fun _ => True)
      (fun vs a => ∃ S : BitVec 64, vs = [.val (.word S)] ∧ KR S 200 a) (fun _ _ => True) := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A0, rfl, hsA, hA⟩ := lookupCode_one code_keccak_f1600 hl
  obtain ⟨S, rfl⟩ := val_of_shapeEq_one hsA
  have hx : s0.locals.lookup (nm "stp") = some (.val (.word S)) := by rw [hloc]; exact hA
  have hR : ∀ a, KR S 200 a → ∃ S' : BitVec 64, [ValueHOL.val (.word S)] = [.val (.word S')] ∧
      KR S' 200 a := fun a ha => ⟨S, rfl, ha⟩
  refine hoareG_conseq (P := LPre (KR S 200) s0 (XJ (nm "stp") S []))
    (Q := LQ (KR S 200) s0 (fun _ => True) (fun _ => True)) ?_
    (fun t _ ht => by subst ht; exact ⟨⟨hx, fun _ h => absurd h (by simp)⟩, rfl, fun _ _ => rfl⟩)
    (fun r t _ _ ⟨⟨hg, hm⟩, _, _⟩ => ⟨⟨hg, hm.mono hR⟩, fun _ _ => trivial⟩)
  unfold kfBody
  refine hoareG_decChain (x := nm "stp") kfDecs [] (by decide) ?_
  -- `var r = 0`
  refine hoareG_dec fun s _ hp v hv _ => ?_
  rw [ev_cw] at hv
  cases hv
  have hJ : Stable [nm "stp"] (fun m => m.lookup (nm "stp") = some (.val (.word S))) := by
    intro m x hx hm
    have hne : x ≠ nm "stp" := by intro e; subst e; simp at hx
    exact ⟨fun v => by show (m.update (x, v)).lookup _ = _; rw [lookup_update_ne _ _ hne]; exact hm,
      fun old => by show (m.resVarEq (x, old)).lookup _ = _; rw [lookup_resVarEq_ne _ _ hne]; exact hm⟩
  refine hoareG_conseq (P := LPre (KR S 200) s0 (fun m => (m.lookup (nm "stp") =
      some (.val (.word S))) ∧ OneL kfNames m))
    (Q := LQ (KR S 200) s0 (fun _ => True) (fun _ => True)) ?_ (fun t _ ht => ?_)
    (fun r t _ _ hq => ⟨hq.1, fun _ => trivial, hq.2.2⟩)
  · refine hoareG_seq (R := LQ (KR S 200) s0 (fun m => (m.lookup (nm "stp") =
        some (.val (.word S))) ∧ OneL kfNames m) (fun _ => True))
      (hoareG_whileN (hoareG_pre (hoareG_pure2 hJ kfW kfW_pure) fun _ _ h => h.1)
        fun _ _ h _ => h) (fun r t _ _ _ h => ⟨h.1, fun _ => trivial, h.2.2⟩) ?_
    exact hoareG_pre (hoareG_stChain kfSts (by decide)) fun t _ h => ⟨h.2.1 rfl, h.1⟩
  · subst ht
    obtain ⟨⟨h1, h2⟩, h3⟩ := hp
    refine ⟨⟨by rw [lk_set_ne _ _ (by decide)]; exact h1, fun y hy => ?_⟩, h3⟩
    have hyr : y ≠ nm "r" := by
      intro e; subst e; revert hy; decide
    rw [lk_set_ne _ _ (Ne.symm hyr)]
    exact h2 y (by simpa [kfNames] using hy)

/-! ## `keccak_absorb_block` -/

/-- `while i < 136 { st stp + i, xor(es); i = i + 8; }` -/
def abLoop (es : List (ExpHOL 64)) : ProgHOL 64 :=
  .while (.cmp .less (lv (nm "i")) (cw 136))
    (.seq (.store (.op .add [lv (nm "stp"), lv (nm "i")]) (.op .xor es))
      (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 8])))

def abBody (es1 es2 : List (ExpHOL 64)) : ProgHOL 64 :=
  .dec (nm "i") .one (cw 0)
    (.seq (.ite (.cmp .equal (.op .and [lv (nm "blk"), cw 7]) (cw 0)) (abLoop es1) (abLoop es2))
      (.seq (.call (some (none, none)) (nm "keccak_f1600") [lv (nm "stp")]) (.return (cw 0))))

/-- The two xor operand lists of the absorb loops. -/
def abEs : ProgHOL 64 → List (ExpHOL 64) × List (ExpHOL 64)
  | .dec _ _ _ (.seq (.ite _ (.while _ (.seq (.store _ (.op _ es1)) _))
      (.while _ (.seq (.store _ (.op _ es2)) _))) _) => (es1, es2)
  | _ => ([], [])

def abE1 : List (ExpHOL 64) := (abEs (fnEntry Guest.Software.guestFn_keccak_absorb_block).2.2.1).1
def abE2 : List (ExpHOL 64) := (abEs (fnEntry Guest.Software.guestFn_keccak_absorb_block).2.2.1).2

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_keccak_absorb_block : fnEntry Guest.Software.guestFn_keccak_absorb_block =
    (nm "keccak_absorb_block", [(nm "stp", .one), (nm "blk", .one)], abBody abE1 abE2, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_keccak_absorb_block : guestCode (nm "keccak_absorb_block") =
    some ([(nm "stp", .one), (nm "blk", .one)], abBody abE1 abE2, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 102) (by decide)) ⟨_, rfl⟩
    entry_keccak_absorb_block

theorem less136 : ∀ n, n ≤ 136 →
    wordCmpHOL .less (BitVec.ofNat 64 n) (BitVec.ofNat 64 136) = true → n < 136 := by decide

/-- The absorb loop invariant: `stp = S`, `i ≤ 136` a multiple of 8. -/
def AL (S : BitVec 64) (m : Locals) : Prop :=
  m.lookup (nm "stp") = some (.val (.word S)) ∧ ∃ I : BitVec 64,
    m.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat ≤ 136 ∧ I.toNat % 8 = 0

theorem ab_loop {S : BitVec 64} {s0 : State σ} (es : List (ExpHOL 64)) :
    HoareG σ X (LPre (KR S 200) s0 (AL S)) (abLoop es) (LQ (KR S 200) s0 (AL S) (fun _ => True)) := by
  refine hoareG_whileN ?_ (fun _ _ h _ => h)
  intro s hs ⟨⟨⟨hx, I, hi, hI, hI8⟩, hbw⟩, hc⟩
  have hIlt : I.toNat < 136 := by
    obtain ⟨w, hw, hw0⟩ := hc
    have h1 := cmp_val_true hw hw0 (ev_lw hi) (ev_cw _ 136)
    have e : I = BitVec.ofNat 64 I.toNat := by simp
    rw [e] at h1
    exact less136 _ hI h1
  refine (?_ : HoareG σ X (fun t => t = s) _ (LN (KR S 200) s0 (AL S))) s hs rfl
  refine hoareG_seq (R := LN (KR S 200) s0 (fun m => m = s.locals)) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine MemSafe.hoareG_store fun t _ ht w v mem hw hv hmem => ?_
    subst ht
    refine ⟨rfl, rfl, hbw.1, ?_⟩
    obtain ⟨x, rfl⟩ := Dec.wordE_op _ _ _ v hv
    rw [ev_add2 (ev_lw hx) (ev_lw hi)] at hw
    cases hw
    simp only [flattenHOL] at hmem
    have hm := (MemSafe.Helpers.store1_mod hmem).1
    exact hbw.2.trans (hm.mono fun a ha => ⟨I.toNat, by omega, by rw [ha]; simp⟩)
  · refine hoareG_assign fun t _ ht v hv _ => ⟨rfl, ?_, ht.2.2⟩
    obtain ⟨-, hloc, -⟩ := ht
    rw [ev_add2 (ev_lw (by rw [hloc]; exact hi)) (ev_cw _ 8)] at hv
    cases hv
    have hI8' : (I + BitVec.ofNat 64 8).toNat = I.toNat + 8 := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
    refine ⟨by rw [lk_set_ne _ _ (by decide), hloc]; exact hx, I + BitVec.ofNat 64 8, lk_set_self _ _ _,
      by omega, by omega⟩

/-- **`keccak_absorb_block(stp, blk)`** keeps the globals and writes only `[stp, stp + 200)`. -/
theorem foot_keccak_absorb_block (hC : X.code.lookup = guestCode) :
    FootRet σ X (nm "keccak_absorb_block") (fun _ => True)
      (fun vs a => ∃ S B : BitVec 64, vs = [.val (.word S), .val (.word B)] ∧ KR S 200 a)
      (fun _ _ => True) := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A0, B0, rfl, hsA, hsB, hA, hB⟩ :=
    lookupCode_two code_keccak_absorb_block (by decide) hl
  obtain ⟨S, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨B, rfl⟩ := val_of_shapeEq_one hsB
  have hx : s0.locals.lookup (nm "stp") = some (.val (.word S)) := by rw [hloc]; exact hA
  refine hoareG_conseq (P := LPre (KR S 200) s0 (fun m => m.lookup (nm "stp") = some (.val (.word S))))
    (Q := LQ (KR S 200) s0 (fun _ => True) (fun _ => True)) ?_
    (fun t _ ht => by subst ht; exact ⟨hx, rfl, fun _ _ => rfl⟩)
    (fun r t _ _ ⟨⟨hg, hm⟩, _, _⟩ => ⟨⟨hg, hm.mono fun a ha => ⟨S, B, rfl, ha⟩⟩, fun _ _ => trivial⟩)
  unfold abBody
  refine hoareG_dec fun s _ hp v hv _ => ?_
  rw [ev_cw] at hv
  cases hv
  refine hoareG_conseq (P := LPre (KR S 200) s0 (AL S))
    (Q := LQ (KR S 200) s0 (fun _ => True) (fun _ => True)) ?_ (fun t _ ht => ?_)
    (fun r t _ _ hq => ⟨hq.1, fun _ => trivial, hq.2.2⟩)
  · refine hoareG_seqL (L2 := AL S) (hoareG_ite (hoareG_pre (ab_loop abE1) fun _ _ h => h.1)
      (hoareG_pre (ab_loop abE2) fun _ _ h => h.1)) ?_
    refine hoareG_seqL (L2 := AL S) (hoareG_callFoot (MemSafe.Helpers.FootRet.foot
      (foot_keccak_f1600 hC)) fun t _ hpre vs hvs => ?_) (hoareG_returnQ fun _ _ _ _ _ => trivial)
    rw [evs_cons (ev_lw hpre.1.1) evs_nil] at hvs
    simp only [Option.some.injEq] at hvs
    subst hvs
    exact ⟨trivial, fun a ⟨S', hS, ha⟩ => by
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hS
      subst hS; exact ha⟩
  · subst ht
    exact ⟨⟨by rw [lk_set_ne _ _ (by decide)]; exact hp.1, BitVec.ofNat 64 0, lk_set_self _ _ _,
      by simp, by simp⟩, hp.2⟩

end InitECandidate.Solver.Spec.Mpt.Leaves
