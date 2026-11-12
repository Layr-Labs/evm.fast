import InitECandidate.Solver.MemSafe.Helpers.Loops

set_option autoImplicit false

/-!
# `memcpy` and `memzero`

* `memcpyBody`, `memzeroBody`: the bodies (`guest/src/lib/mem.pnk`) in the buffer-writer
  syntax of `Helpers/Loops.lean`, certified by `cbv` against the guest AST
  (`code_memcpy`, `code_memzero`).
* `foot_memcpy` / `foot_memzero`: **footprint specs**. Every good result keeps the globals and
  changes memory only in the cells overlapping `[dst, dst + n)`, when `n = 0` or
  `dst + n ≤ scratchEnd` (`BufPre`; any `BufOK` buffer satisfies it, `bufOK_bound`).
* `summ_memcpy` / `summ_memzero`: the `Summ`s for the signatures `sigMemcpy` =
  `[.bufArg 2 1 0, .any, .any]` and `sigMemzero` = `[.bufArg 1 1 0, .any]`, both with
  `grows := false` (no new objects).
* The generic pieces for other one-buffer writers: `BufPre`, `BufR`, `bufPre_of_args`,
  `argCells_of_bufR`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Helpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## One-buffer signatures -/

/-- The buffer argument `i` (pointer) with length argument `j` ends below `scratchEnd`. -/
def BufPre (i j : Nat) (vs : List (ValueHOL 64)) : Prop :=
  ∃ D N : BitVec 64, argW vs i = some D ∧ argW vs j = some N ∧
    (N.toNat = 0 ∨ D.toNat + N.toNat ≤ scratchEnd)

/-- The cells of the buffer argument `i` with length argument `j`. -/
def BufR (i j : Nat) (vs : List (ValueHOL 64)) (a : BitVec 64) : Prop :=
  ∃ D N : BitVec 64, argW vs i = some D ∧ argW vs j = some N ∧ Overlap D.toNat N.toNat a

theorem bufPre_of_args {C : Cfg} {Γ : Gam} {p : Ptrs} {ps : List PT} {vs : List (ValueHOL 64)}
    {i j : Nat} (hps : ps[i]? = some (.bufArg j 1 0)) (hord : p.Ordered) (hL : Layout C p Γ)
    (hA : ArgsOK C Γ p ps vs) : BufPre i j vs := by
  have hlen : i < vs.length := by
    rw [← hA.1]
    exact (List.getElem?_eq_some_iff.mp hps).1
  obtain ⟨v, hv⟩ : ∃ v, vs[i]? = some v := ⟨_, List.getElem?_eq_getElem hlen⟩
  obtain ⟨w, x, hw, hx, hb⟩ := hA.2 i _ v hps hv
  refine ⟨w, x, by rw [argW, hv]; exact hw, hx, ?_⟩
  have := bufOK_bound hord hL w.isLt hb
  simpa using this

theorem argCells_of_bufR {ps : List PT} {vs : List (ValueHOL 64)} {i j : Nat}
    (hps : ps[i]? = some (.bufArg j 1 0)) {a : BitVec 64} (h : BufR i j vs a) :
    ArgCells ps vs a := by
  obtain ⟨D, N, hD, hN, hov⟩ := h
  exact ⟨i, D, hD, Or.inr ⟨j, 1, 0, N, hps, hN, by simpa using hov⟩⟩

/-- The buffer argument `i` with `2 * arg_j` bytes ends below `scratchEnd`. -/
def BufPre2 (i j : Nat) (vs : List (ValueHOL 64)) : Prop :=
  ∃ D N : BitVec 64, argW vs i = some D ∧ argW vs j = some N ∧
    (N.toNat = 0 ∨ D.toNat + 2 * N.toNat ≤ scratchEnd)

def BufR2 (i j : Nat) (vs : List (ValueHOL 64)) (a : BitVec 64) : Prop :=
  ∃ D N : BitVec 64, argW vs i = some D ∧ argW vs j = some N ∧ Overlap D.toNat (2 * N.toNat) a

theorem bufPre2_of_args {C : Cfg} {Γ : Gam} {p : Ptrs} {ps : List PT} {vs : List (ValueHOL 64)}
    {i j : Nat} (hps : ps[i]? = some (.bufArg j 2 0)) (hord : p.Ordered) (hL : Layout C p Γ)
    (hA : ArgsOK C Γ p ps vs) : BufPre2 i j vs := by
  have hlen : i < vs.length := by
    rw [← hA.1]
    exact (List.getElem?_eq_some_iff.mp hps).1
  obtain ⟨v, hv⟩ : ∃ v, vs[i]? = some v := ⟨_, List.getElem?_eq_getElem hlen⟩
  obtain ⟨w, x, hw, hx, hb⟩ := hA.2 i _ v hps hv
  refine ⟨w, x, by rw [argW, hv]; exact hw, hx, ?_⟩
  rcases bufOK_bound hord hL w.isLt hb with h | h
  · left; omega
  · right; omega

theorem argCells_of_bufR2 {ps : List PT} {vs : List (ValueHOL 64)} {i j : Nat}
    (hps : ps[i]? = some (.bufArg j 2 0)) {a : BitVec 64} (h : BufR2 i j vs a) :
    ArgCells ps vs a := by
  obtain ⟨D, N, hD, hN, hov⟩ := h
  exact ⟨i, D, hD, Or.inr ⟨j, 2, 0, N, hps, hN, by simpa using hov⟩⟩

/-- A footprint spec from a `HoareG` triple per entry state, assuming the precondition. -/
theorem footSpec_of_hoareG {f : MlS} {Pre : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → Pre vs →
        HoareG σ X (fun t => t = s0) body (fun _ t => BWPost (R vs) s0 t)) :
    FootSpec σ X f Pre R := by
  intro vs body callee rs hl s hs hloc r hr hg hP
  have := h vs body callee rs hl s hs hloc hP s hs rfl (by rw [hr]; exact hg)
  exact this

theorem bwPost_of_bw {d n i : MlS} {D N : BitVec 64} {s0 t : State σ}
    {R : BitVec 64 → Prop} (hR : ∀ a, Overlap D.toNat N.toNat a → R a)
    (h : BW d n i D N s0 t) : BWPost R s0 t :=
  ⟨h.2.2.2.1, h.2.2.2.2.mono hR⟩

theorem nw_of_pre {D N : BitVec 64} (h : N.toNat = 0 ∨ D.toNat + N.toNat ≤ scratchEnd) :
    N.toNat = 0 ∨ D.toNat + N.toNat < 2 ^ 63 := by
  rcases h with h | h
  · exact Or.inl h
  · right
    have : scratchEnd < 2 ^ 63 := by decide
    omega

theorem n_lt_of_nw {D N : BitVec 64} (h : N.toNat = 0 ∨ D.toNat + N.toNat < 2 ^ 63) :
    N.toNat < 2 ^ 63 := by
  rcases h with h | h <;> omega

/-! ## `memcpy` -/

def dN : MlS := nm "dst"
def sN : MlS := nm "src"
def nN : MlS := nm "n"
def iN : MlS := nm "i"

/-- The copied value at `src + i + c`. -/
def cpE : SK → Nat → ExpHOL 64
  | .w, c => .load .one (offI sN iN c)
  | .b, c => .loadByte (offI sN iN c)

def cpL (k : SK) (cs : List Nat) : List (SK × Nat × ExpHOL 64) := cs.map fun c => (k, c, cpE k c)

def zL (k : SK) (cs : List Nat) : List (SK × Nat × ExpHOL 64) := cs.map fun c => (k, c, cw 0)

/-- The common skeleton of `memcpy` and `memzero`: aligned 32- and 8-byte word loops, an
8-byte byte loop, a byte loop, `return 0`. -/
def memSkel (al : ExpHOL 64) (L : SK → List Nat → List (SK × Nat × ExpHOL 64)) : ProgHOL 64 :=
  .dec iN .one (cw 0)
    (.seq
      (.ite (.cmp .equal al (cw 0))
        (.seq (.while (geK nN iN 32) (blk dN iN 32 (L .w [0, 8, 16, 24])))
          (.while (geK nN iN 8) (blk dN iN 8 (L .w [0]))))
        .skip)
      (.seq (.while (geK nN iN 8) (blk dN iN 8 (L .b [0, 1, 2, 3, 4, 5, 6, 7])))
        (.seq (.while (ltN iN nN) (blk dN iN 1 (L .b [0])))
          (.return (cw 0)))))

def memcpyBody : ProgHOL 64 := memSkel (.op .and [.op .or [lv dN, lv sN], cw 7]) cpL

def memzeroBody : ProgHOL 64 := memSkel (.op .and [lv dN, cw 7]) zL

theorem entry_memcpy : fnEntry Guest.Software.guestFn_memcpy =
    (nm "memcpy", [(dN, .one), (sN, .one), (nN, .one)], memcpyBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_memcpy :
    guestCode (nm "memcpy") = some ([(dN, .one), (sN, .one), (nN, .one)], memcpyBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 16) (by decide)) ⟨_, rfl⟩
    entry_memcpy

theorem entry_memzero : fnEntry Guest.Software.guestFn_memzero =
    (nm "memzero", [(dN, .one), (nN, .one)], memzeroBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_memzero :
    guestCode (nm "memzero") = some ([(dN, .one), (nN, .one)], memzeroBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 17) (by decide)) ⟨_, rfl⟩
    entry_memzero

theorem iN_ne_dN : iN ≠ dN := by decide
theorem iN_ne_nN : iN ≠ nN := by decide

theorem blkOK_cp (k : SK) {K : Nat} (cs : List Nat) (hcs : ∀ c ∈ cs, c < K) :
    BlkOK (σ := σ) K (cpL k cs) := by
  intro x hx
  simp only [cpL, List.mem_map] at hx
  obtain ⟨c, hc, rfl⟩ := hx
  refine ⟨hcs c hc, fun hk => ?_⟩
  cases k with
  | w => exact oneWord_load _
  | b => cases hk

theorem blkOK_z (k : SK) {K : Nat} (cs : List Nat) (hcs : ∀ c ∈ cs, c < K) :
    BlkOK (σ := σ) K (zL k cs) := by
  intro x hx
  simp only [zL, List.mem_map] at hx
  obtain ⟨c, hc, rfl⟩ := hx
  exact ⟨hcs c hc, fun _ => oneWord_cw 0⟩

/-- The skeleton writes only `[D, D + N)` and keeps the globals. -/
theorem hoareG_memSkel (hA : AlignedDom X) {al : ExpHOL 64}
    {L : SK → List Nat → List (SK × Nat × ExpHOL 64)}
    (hL : ∀ k {K : Nat} (cs : List Nat), (∀ c ∈ cs, c < K) → BlkOK (σ := σ) K (L k cs))
    {D N : BitVec 64} {s0 : State σ} {R : BitVec 64 → Prop}
    (hR : ∀ a, Overlap D.toNat N.toNat a → R a)
    (hd : s0.locals.lookup dN = some (.val (.word D)))
    (hn : s0.locals.lookup nN = some (.val (.word N)))
    (hNW : N.toNat = 0 ∨ D.toNat + N.toNat < 2 ^ 63) :
    HoareG σ X (fun t => t = s0) (memSkel al L) (fun _ t => BWPost R s0 t) := by
  have hN := n_lt_of_nw hNW
  have loopGe : ∀ (K : Nat) (ss : List (SK × Nat × ExpHOL 64)), 1 ≤ K → K < 2 ^ 32 →
      BlkOK (σ := σ) K ss →
      HoareG σ X (BW dN nN iN D N s0) (.while (geK nN iN K) (blk dN iN K ss))
        (fun r t => r = none ∧ BW dN nN iN D N s0 t) := fun K ss h1 h2 hss =>
    hoareG_wloop hA iN_ne_dN iN_ne_nN h1 hNW hss fun t hbw hc => guard_geK h2 hN hbw hc
  have loopLt : HoareG σ X (BW dN nN iN D N s0) (.while (ltN iN nN) (blk dN iN 1 (L .b [0])))
      (fun r t => r = none ∧ BW dN nN iN D N s0 t) :=
    hoareG_wloop hA iN_ne_dN iN_ne_nN (Nat.le_refl 1) hNW (hL .b [0] (by simp))
      fun t hbw hc => guard_ltN hbw hc
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  rw [ev_cw] at hv
  cases hv
  -- the loops, from `i = 0`
  have hpost : ∀ (t : State σ), BWPost R s0 t → BWPost R s0
      { t with locals := t.locals.resVarEq (iN, s0.locals.lookup iN) } := fun _ h => h
  refine hoareG_conseq (P := BW dN nN iN D N s0) (Q := fun _ t => BWPost R s0 t) ?_ ?_
    fun _ t _ _ h => hpost t h
  · refine hoareG_seq (R := fun r t => r = none ∧ BW dN nN iN D N s0 t) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoareG_ite ?_ (hoareG_skip fun t _ h => ⟨rfl, h.1⟩)
      refine hoareG_pre (P := BW dN nN iN D N s0) ?_ fun _ _ h => h.1
      exact hoareG_seq (loopGe 32 _ (by decide) (by decide) (hL .w _ (by simp)))
        (fun _ _ _ hr _ h => absurd h.1 hr)
        (hoareG_pre (loopGe 8 _ (by decide) (by decide) (hL .w _ (by simp))) fun _ _ h => h.2)
    · refine hoareG_pre (P := BW dN nN iN D N s0) ?_ fun _ _ h => h.2
      refine hoareG_seq (loopGe 8 _ (by decide) (by decide) (hL .b _ (by simp)))
        (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      refine hoareG_seq (hoareG_pre loopLt fun _ _ h => h.2)
        (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      exact hoareG_return fun t _ h _ _ => ⟨h.2.2.2.2.1, h.2.2.2.2.2.mono hR⟩
  · intro t _ ht
    subst ht
    refine ⟨?_, ?_, ⟨0, lk_set_self _ _ _, by simp⟩, rfl, fun _ _ => rfl⟩
    · rw [lk_set_ne _ _ iN_ne_dN]; exact hd
    · rw [lk_set_ne _ _ iN_ne_nN]; exact hn

/-- **`memcpy` footprint.** -/
theorem foot_memcpy (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpec σ X (nm "memcpy") (BufPre 0 2) (BufR 0 2) := by
  refine footSpec_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, Cc, rfl, hA', -, hC', hla, -, hlc⟩ :=
    lookupCode_three code_memcpy (by decide) (by decide) (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨D', N', hD, hN, hb⟩ := hP
  cases hD
  cases hN
  exact hoareG_memSkel hA (fun k _ cs h => blkOK_cp k cs h)
    (fun a h => ⟨D, N, rfl, rfl, h⟩) (hloc ▸ hla) (hloc ▸ hlc) (nw_of_pre hb)

/-- **`memzero` footprint.** -/
theorem foot_memzero (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpec σ X (nm "memzero") (BufPre 0 1) (BufR 0 1) := by
  refine footSpec_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA', hB', hla, hlb⟩ := lookupCode_two code_memzero (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨D', N', hD, hN, hb⟩ := hP
  cases hD
  cases hN
  exact hoareG_memSkel hA (fun k _ cs h => blkOK_z k cs h)
    (fun a h => ⟨D, N, rfl, rfl, h⟩) (hloc ▸ hla) (hloc ▸ hlb) (nw_of_pre hb)

/-! ## The summaries -/

def sigMemcpy : Sig := { params := [.bufArg 2 1 0, .any, .any], grows := false }
def sigMemzero : Sig := { params := [.bufArg 1 1 0, .any], grows := false }

theorem summ_memcpy {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    Summ σ X C H (nm "memcpy") sigMemcpy :=
  summ_of_foot hH hT rfl (foot_memcpy hC hA)
    (fun _ _ _ hord hL hA' => bufPre_of_args (i := 0) rfl hord hL hA')
    (fun _ _ _ h => argCells_of_bufR (i := 0) rfl h)

theorem summ_memzero {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    Summ σ X C H (nm "memzero") sigMemzero :=
  summ_of_foot hH hT rfl (foot_memzero hC hA)
    (fun _ _ _ hord hL hA' => bufPre_of_args (i := 0) rfl hord hL hA')
    (fun _ _ _ h => argCells_of_bufR (i := 0) rfl h)

end InitECandidate.Solver.MemSafe.Helpers
