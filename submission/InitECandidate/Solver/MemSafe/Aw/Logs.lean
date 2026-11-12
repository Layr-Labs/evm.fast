import InitECandidate.Solver.MemSafe.Aw.Zk

set_option autoImplicit false

/-!
# `encode_logs` (target B): the above-writer rule with nested loops, no typing of the logs
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

def logsN : MlS := nm "logs"
def pN : MlS := nm "p"
def qN : MlS := nm "q"
def logN : MlS := nm "log"
def rN : MlS := nm "r"
def tsN : MlS := nm "tstart"
def tN : MlS := nm "t"
def ntN : MlS := nm "nt"
def jN : MlS := nm "j"
def totN : MlS := nm "total"

/-- `lds 1 (x + k)` -/
def ldk (x : MlS) (k : Nat) : ExpHOL 64 := .load .one (.op .add [lv x, cw k])

def callW (f : MlS) (args : List (ExpHOL 64)) : ProgHOL 64 :=
  .call (some (some (.local, wN), none)) f args

def innerBody : ProgHOL 64 :=
  .seq (callW (nm "rlp_encode_bytes")
      [lv tN, .op .add [ldk logN 8, .panop .mul [lv jN, cw 32]], cw 32])
    (.seq (.assign .local tN (.op .add [lv tN, lv wN]))
      (.assign .local jN (.op .add [lv jN, cw 1])))

/-- after the topics loop -/
def afterTopics : ProgHOL 64 :=
  .seq (callW (nm "rlp_finish_list") [lv tsN, lv tN])
    (.seq (.assign .local rN (.op .add [lv tsN, lv wN]))
      (.seq (callW (nm "rlp_encode_bytes") [lv rN, ldk logN 24, ldk logN 32])
        (.seq (.assign .local rN (.op .add [lv rN, lv wN]))
          (.seq (callW (nm "rlp_finish_list") [lv qN, lv rN])
            (.seq (.assign .local qN (.op .add [lv qN, lv wN]))
              (.assign .local iN (.op .add [lv iN, cw 1])))))))

def topicsPart : ProgHOL 64 :=
  .dec tsN .one (lv rN)
    (.dec tN .one (.op .add [lv rN, cw 9])
      (.dec ntN .one (ldk logN 16)
        (.dec jN .one (cw 0)
          (.seq (.while (.cmp .less (lv jN) (lv ntN)) innerBody) afterTopics))))

def outerBody : ProgHOL 64 :=
  .dec logN .one (.load .one (.op .add [lv pN, .panop .mul [lv iN, cw 8]]))
    (.dec rN .one (.op .add [lv qN, cw 9])
      (.decCall wN .one (nm "rlp_encode_bytes") [lv rN, ldk logN 0, cw 20]
        (.seq (.assign .local rN (.op .add [lv rN, lv wN])) topicsPart)))

def encodeLogsBody : ProgHOL 64 :=
  .dec nN .one (ldk logsN 8)
    (.dec pN .one (ldk logsN 0)
      (.dec qN .one (.op .add [lv dN, cw 9])
        (.dec iN .one (cw 0)
          (.seq (.while (.cmp .less (lv iN) (lv nN)) outerBody)
            (.decCall totN .one (nm "rlp_finish_list") [lv dN, lv qN] (.return (lv totN)))))))

theorem entry_encode_logs : fnEntry Guest.Software.guestFn_encode_logs =
    (nm "encode_logs", [(dN, .one), (logsN, .one)], encodeLogsBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_encode_logs : guestCode (nm "encode_logs") =
    some ([(dN, .one), (logsN, .one)], encodeLogsBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 835) (by decide)) ⟨_, rfl⟩
    entry_encode_logs

/-! ## Locals invariants -/

def WW : Nat := 2 ^ 64
/-- Pointer bound of `encode_logs` (the destination is at most `2^60`). -/
def UU : Nat := 2 ^ 60 + domTop + 128
def B0 : Nat := domTop + 128
def B9 : Nat := domTop + 137

/-- A word local with bounds. -/
def Bd (m : Locals) (x : MlS) (lo hi : Nat) : Prop :=
  ∃ w : BitVec 64, m.lookup x = some (.val (.word w)) ∧ lo ≤ w.toNat ∧ w.toNat ≤ hi

theorem bd_upd {m : Locals} {x y : MlS} {v : ValueHOL 64} {lo hi : Nat} (h : x ≠ y)
    (hy : Bd m y lo hi) : Bd (m.update (x, v)) y lo hi := by
  obtain ⟨w, hw, h1, h2⟩ := hy
  exact ⟨w, by rw [lookup_update_ne _ _ h]; exact hw, h1, h2⟩

theorem bd_res {m : Locals} {x y : MlS} {o : Option (ValueHOL 64)} {lo hi : Nat} (h : x ≠ y)
    (hy : Bd m y lo hi) : Bd (m.resVarEq (x, o)) y lo hi := by
  obtain ⟨w, hw, h1, h2⟩ := hy
  exact ⟨w, by rw [lookup_resVarEq_ne _ _ h]; exact hw, h1, h2⟩

theorem bd_new (m : Locals) (x : MlS) (w : BitVec 64) {lo hi : Nat} (h1 : lo ≤ w.toNat)
    (h2 : w.toNat ≤ hi) : Bd (m.update (x, .val (.word w))) x lo hi :=
  ⟨w, lookup_update_self _ _ _, h1, h2⟩

theorem bd_wd (m : Locals) (x : MlS) (w : BitVec 64) : Bd (m.update (x, .val (.word w))) x 0 WW :=
  bd_new m x w (Nat.zero_le _) (by have := w.isLt; unfold WW; omega)

theorem bd_mono {m : Locals} {x : MlS} {lo hi lo' hi' : Nat} (h : Bd m x lo hi) (h1 : lo' ≤ lo)
    (h2 : hi ≤ hi') : Bd m x lo' hi' := by
  obtain ⟨w, hw, a, b⟩ := h
  exact ⟨w, hw, by omega, by omega⟩

theorem bd_wide {m : Locals} {x : MlS} {w : BitVec 64}
    (h : m.lookup x = some (.val (.word w))) : Bd m x 0 WW :=
  ⟨w, h, Nat.zero_le _, by have := w.isLt; unfold WW; omega⟩

/-- The loop invariant of `encode_logs`. -/
structure JO (D : BitVec 64) (m : Locals) : Prop where
  d : m.lookup dN = some (.val (.word D))
  lg : Bd m logsN 0 WW
  n : Bd m nN 0 WW
  p : Bd m pN 0 WW
  q : Bd m qN D.toNat UU
  i : Bd m iN 0 WW

def jnames : List MlS := [dN, logsN, nN, pN, qN, iN]

theorem jo_upd {D : BitVec 64} {m : Locals} {x : MlS} {v : ValueHOL 64} (h : JO D m)
    (hx : x ∉ jnames) : JO D (m.update (x, v)) := by
  simp only [jnames, List.mem_cons, List.not_mem_nil, or_false, not_or] at hx
  obtain ⟨h1, h2, h3, h4, h5, h6⟩ := hx
  exact ⟨by rw [lookup_update_ne _ _ h1]; exact h.d, bd_upd h2 h.lg, bd_upd h3 h.n,
    bd_upd h4 h.p, bd_upd h5 h.q, bd_upd h6 h.i⟩

theorem jo_res {D : BitVec 64} {m : Locals} {x : MlS} {o : Option (ValueHOL 64)} (h : JO D m)
    (hx : x ∉ jnames) : JO D (m.resVarEq (x, o)) := by
  simp only [jnames, List.mem_cons, List.not_mem_nil, or_false, not_or] at hx
  obtain ⟨h1, h2, h3, h4, h5, h6⟩ := hx
  exact ⟨by rw [lookup_resVarEq_ne _ _ h1]; exact h.d, bd_res h2 h.lg, bd_res h3 h.n,
    bd_res h4 h.p, bd_res h5 h.q, bd_res h6 h.i⟩

theorem jo_q {D W : BitVec 64} {m : Locals} (h : JO D m) (hlo : D.toNat ≤ W.toNat)
    (hhi : W.toNat ≤ UU) : JO D (m.update (qN, .val (.word W))) :=
  ⟨by rw [lookup_update_ne _ _ (by decide)]; exact h.d, bd_upd (by decide) h.lg,
    bd_upd (by decide) h.n, bd_upd (by decide) h.p, bd_new _ _ _ hlo hhi, bd_upd (by decide) h.i⟩

theorem jo_i {D W : BitVec 64} {m : Locals} (h : JO D m) :
    JO D (m.update (iN, .val (.word W))) :=
  ⟨by rw [lookup_update_ne _ _ (by decide)]; exact h.d, bd_upd (by decide) h.lg,
    bd_upd (by decide) h.n, bd_upd (by decide) h.p, bd_upd (by decide) h.q, bd_wd _ _ _⟩

theorem evs_two {s : State σ} {a b : ExpHOL 64} {vs : List (ValueHOL 64)}
    (h : evs s [a, b] = some vs) : ∃ v1 v2, vs = [v1, v2] ∧ ev s a = some v1 ∧ ev s b = some v2 := by
  obtain ⟨v1, vs1, rfl, h1, h2⟩ := evs_cons_inv h
  obtain ⟨v2, vs2, rfl, h3, h4⟩ := evs_cons_inv h2
  rw [show vs2 = [] from by simpa [evs, evalListHOLExact] using h4] 
  exact ⟨v1, v2, rfl, h1, h3⟩

theorem evs_three {s : State σ} {a b c : ExpHOL 64} {vs : List (ValueHOL 64)}
    (h : evs s [a, b, c] = some vs) :
    ∃ v1 v2 v3, vs = [v1, v2, v3] ∧ ev s a = some v1 ∧ ev s b = some v2 ∧ ev s c = some v3 := by
  obtain ⟨v1, vs1, rfl, h1, h2⟩ := evs_cons_inv h
  obtain ⟨v2, v3, rfl, h3, h4⟩ := evs_two h2
  exact ⟨v1, v2, v3, rfl, h1, h3, h4⟩

/-! ## Pointer-chasing steps -/

/-- `x` holds a pointer `T` and `w` a length `k` with `T + k` still in range. -/
def TW (D : BitVec 64) (x : MlS) (m : Locals) : Prop :=
  ∃ T : BitVec 64, ∃ k : Nat, m.lookup x = some (.val (.word T)) ∧
    m.lookup wN = some (.val (.word (BitVec.ofNat 64 k))) ∧ D.toNat ≤ T.toNat ∧ T.toNat + k ≤ B0

/-- `w = f(x, rest...)` for a writer: `w` gets a length `k` with `X + k ≤ B0` for the pointer `X`
in `x`. -/
theorem hoareG_callPtr {f x : MlS} {rest : List (ExpHOL 64)}
    {RetF : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (hf : FootRet σ X f HdrPreW (AbvArg 0) RetF)
    (hRetK : ∀ vs v, RetF vs v → ∀ X' : BitVec 64, argW vs 0 = some X' →
      ∃ k : Nat, v = .val (.word (BitVec.ofNat 64 k)) ∧ X'.toNat + k ≤ B0)
    {D : BitVec 64} {hi : Nat} (hhi : hi ≤ 2 ^ 61) {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L : Locals → Prop} (hR : ∀ a, AbvR D a → Rf a) (hL : ∀ m, L m → Bd m x D.toNat hi)
    (hLw : ∀ m v, L m → L (m.update (wN, v))) (hwx : wN ≠ x) {Ret : ValueHOL 64 → Prop} :
    HoareG σ X (LPre Rf s0 L) (callW f (lv x :: rest))
      (LZ Rf s0 (fun m => L m ∧ TW D x m) Ret) := by
  refine hoareG_callAFootZ hf ?_ ?_
  · intro s _ hpre vs hvs
    obtain ⟨X0, hx, h1, h2⟩ := hL _ hpre.1
    obtain ⟨v0, vs', rfl, hv0, -⟩ := evs_cons_inv hvs
    rw [ev_lw hx] at hv0
    cases hv0
    refine ⟨⟨X0, rfl, by omega⟩, fun a ⟨D2, hD2, h⟩ => ?_⟩
    cases hD2
    exact hR a (abvR_mono h h1)
  · intro s vs v hLs hvs hret _
    obtain ⟨X0, hx, h1, h2⟩ := hL _ hLs
    obtain ⟨v0, vs', rfl, hv0, -⟩ := evs_cons_inv hvs
    rw [ev_lw hx] at hv0
    cases hv0
    obtain ⟨k, hk, hb⟩ := hRetK _ v hret X0 rfl
    subst hk
    exact ⟨hLw _ _ hLs, X0, k, by rw [lookup_update_ne _ _ hwx]; exact hx,
      lookup_update_self _ _ _, h1, hb⟩

/-- `y = x + w`, with `x`, `w` a pointer and a length. -/
theorem hoareG_addW {x y : MlS} {D : BitVec 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (hL' : ∀ (m : Locals) (W : BitVec 64), L m → D.toNat ≤ W.toNat → W.toNat ≤ B0 →
      L' (m.update (y, .val (.word W)))) :
    HoareG σ X (LPre Rf s0 (fun m => L m ∧ TW D x m)) (.assign .local y (.op .add [lv x, lv wN]))
      (LZ Rf s0 L' Ret) := by
  refine hoareG_assignZ fun s _ ⟨hL, T, k, hT, hw, h1, h2⟩ v hv => ?_
  rw [ev_add2 (ev_lw hT) (ev_lw hw)] at hv
  cases hv
  have hs0 : B0 < 2 ^ 62 := by unfold B0 domTop; decide
  have hadd : (T + BitVec.ofNat 64 k).toNat = T.toNat + k := toNat_addc (by omega)
  exact hL' _ _ hL (by omega) (by omega)

theorem retK_enc : ∀ vs v, EncRetA vs v → ∀ X' : BitVec 64, argW vs 0 = some X' →
    ∃ k : Nat, v = .val (.word (BitVec.ofNat 64 k)) ∧ X'.toNat + k ≤ B0 := by
  intro vs v h X' hx
  obtain ⟨-, k, hk, -, hb⟩ := h X' hx
  exact ⟨k, hk, hb⟩

theorem retK_fin : ∀ vs v, FinRetA vs v → ∀ X' : BitVec 64, argW vs 0 = some X' →
    ∃ k : Nat, v = .val (.word (BitVec.ofNat 64 k)) ∧ X'.toNat + k ≤ B0 := by
  intro vs v h X' hx
  obtain ⟨-, k, hk, -, hb, -⟩ := h X' hx
  exact ⟨k, hk, hb⟩

/-! ## The invariants of the loop body -/

def B4 (D : BitVec 64) (m : Locals) : Prop :=
  JO D m ∧ Bd m logN 0 WW ∧ Bd m rN D.toNat B0

def B5 (D : BitVec 64) (m : Locals) : Prop := B4 D m ∧ Bd m tsN D.toNat B0
def B6 (D : BitVec 64) (m : Locals) : Prop := B5 D m ∧ Bd m tN D.toNat B9
def B7 (D : BitVec 64) (m : Locals) : Prop := B6 D m ∧ Bd m ntN 0 WW
def B8 (D : BitVec 64) (m : Locals) : Prop := B7 D m ∧ Bd m jN 0 WW

theorem b4_upd {D : BitVec 64} {m : Locals} {x : MlS} {v : ValueHOL 64} (h : B4 D m)
    (hx : x ∉ jnames) (h1 : x ≠ logN) (h2 : x ≠ rN) : B4 D (m.update (x, v)) :=
  ⟨jo_upd h.1 hx, bd_upd h1 h.2.1, bd_upd h2 h.2.2⟩

theorem b8_upd {D : BitVec 64} {m : Locals} {x : MlS} {v : ValueHOL 64} (h : B8 D m)
    (hx : x ∉ jnames) (h1 : x ≠ logN) (h2 : x ≠ rN) (h3 : x ≠ tsN) (h4 : x ≠ tN) (h5 : x ≠ ntN)
    (h6 : x ≠ jN) : B8 D (m.update (x, v)) :=
  ⟨⟨⟨⟨b4_upd h.1.1.1.1 hx h1 h2, bd_upd h3 h.1.1.1.2⟩, bd_upd h4 h.1.1.2⟩, bd_upd h5 h.1.2⟩,
    bd_upd h6 h.2⟩

theorem num_facts : UU + 18 ≤ 2 ^ 61 ∧ B9 + 18 ≤ 2 ^ 61 ∧ B9 ≤ UU ∧ B0 ≤ B9 ∧ B0 ≤ UU ∧
    UU = 2 ^ 60 + B0 ∧ B9 = domTop + 137 ∧ B0 = domTop + 128 := by
  unfold UU B0 B9 domTop
  decide

theorem b4_w {D : BitVec 64} {m : Locals} {v : ValueHOL 64} (h : B4 D m) :
    B4 D (m.update (wN, v)) := b4_upd h (by decide) (by decide) (by decide)

theorem b8_w {D : BitVec 64} {m : Locals} {v : ValueHOL 64} (h : B8 D m) :
    B8 D (m.update (wN, v)) :=
  b8_upd h (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)

theorem b8_t {D W : BitVec 64} {m : Locals} (h : B8 D m) (h1 : D.toNat ≤ W.toNat)
    (h2 : W.toNat ≤ B9) : B8 D (m.update (tN, .val (.word W))) :=
  ⟨⟨⟨⟨b4_upd h.1.1.1.1 (by decide) (by decide) (by decide),
    bd_upd (by decide) h.1.1.1.2⟩, bd_new _ _ _ h1 h2⟩, bd_upd (by decide) h.1.2⟩,
    bd_upd (by decide) h.2⟩

theorem b8_j {D W : BitVec 64} {m : Locals} (h : B8 D m) :
    B8 D (m.update (jN, .val (.word W))) :=
  ⟨⟨⟨⟨b4_upd h.1.1.1.1 (by decide) (by decide) (by decide),
    bd_upd (by decide) h.1.1.1.2⟩, bd_upd (by decide) h.1.1.2⟩, bd_upd (by decide) h.1.2⟩,
    bd_wd _ _ _⟩

theorem b8_r {D W : BitVec 64} {m : Locals} (h : B8 D m) (h1 : D.toNat ≤ W.toNat)
    (h2 : W.toNat ≤ B0) : B4 D (m.update (rN, .val (.word W))) :=
  ⟨jo_upd h.1.1.1.1.1 (by decide), bd_upd (by decide) h.1.1.1.1.2.1, bd_new _ _ _ h1 h2⟩

theorem b4_r {D W : BitVec 64} {m : Locals} (h : B4 D m) (h1 : D.toNat ≤ W.toNat)
    (h2 : W.toNat ≤ B0) : B4 D (m.update (rN, .val (.word W))) :=
  ⟨jo_upd h.1 (by decide), bd_upd (by decide) h.2.1, bd_new _ _ _ h1 h2⟩

theorem b4_q {D W : BitVec 64} {m : Locals} (h : B4 D m) (h1 : D.toNat ≤ W.toNat)
    (h2 : W.toNat ≤ B0) : B4 D (m.update (qN, .val (.word W))) :=
  ⟨jo_q h.1 h1 (by have := num_facts; omega), bd_upd (by decide) h.2.1, bd_upd (by decide) h.2.2⟩

/-! ## The topics loop -/

theorem inner_loop (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomBelow X)
    {D : BitVec 64} {Rf : BitVec 64 → Prop} {s0 : State σ} {Ret : ValueHOL 64 → Prop}
    (hR : ∀ a, AbvR D a → Rf a) :
    HoareG σ X (LPre Rf s0 (B8 D)) (.while (.cmp .less (lv jN) (lv ntN)) innerBody)
      (LZ Rf s0 (B8 D) Ret) := by
  have hn := num_facts
  refine hoareG_whileZ (J := B8 D) ?_ (fun s _ h _ => h)
  refine hoareG_pre (P := LPre Rf s0 (B8 D)) ?_ (fun s _ h => h.1)
  unfold innerBody
  refine hoareG_seqZ (L2 := fun m => B8 D m ∧ TW D tN m) ?_ ?_
  · exact hoareG_callPtr (footRet_encode_bytesA hC hA hT) retK_enc (hi := B9) (by omega) hR
      (fun m h => h.1.1.2) (fun m v h => b8_w h) (by decide)
  · refine hoareG_seqZ (L2 := B8 D) (hoareG_addW (x := tN) (y := tN) ?_) ?_
    · intro m W hm h1 h2
      exact b8_t hm h1 (by omega)
    · refine hoareG_assignZ fun s _ hB v hv => ?_
      obtain ⟨J, hJ, -, -⟩ := hB.2
      rw [ev_add2 (ev_lw hJ) (ev_cw _ 1)] at hv
      cases hv
      exact b8_j hB

/-- The rest of an iteration, after the topics loop. -/
theorem after_topics (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomBelow X)
    {D : BitVec 64} {Rf : BitVec 64 → Prop} {s0 : State σ} {Ret : ValueHOL 64 → Prop}
    (hR : ∀ a, AbvR D a → Rf a) :
    HoareG σ X (LPre Rf s0 (B8 D)) afterTopics (LZ Rf s0 (JO D) Ret) := by
  have hn := num_facts
  unfold afterTopics
  refine hoareG_seqZ (L2 := fun m => B8 D m ∧ TW D tsN m) ?_ ?_
  · exact hoareG_callPtr (footRet_finish_listA hC hA hT) retK_fin (hi := B0) (by omega) hR
      (fun m h => h.1.1.1.2) (fun m v h => b8_w h) (by decide)
  refine hoareG_seqZ (L2 := B4 D) (hoareG_addW (x := tsN) (y := rN) ?_) ?_
  · intro m W hm h1 h2
    exact b8_r hm h1 h2
  refine hoareG_seqZ (L2 := fun m => B4 D m ∧ TW D rN m) ?_ ?_
  · exact hoareG_callPtr (footRet_encode_bytesA hC hA hT) retK_enc (hi := B0) (by omega) hR
      (fun m h => h.2.2) (fun m v h => b4_w h) (by decide)
  refine hoareG_seqZ (L2 := B4 D) (hoareG_addW (x := rN) (y := rN) ?_) ?_
  · intro m W hm h1 h2
    exact b4_r hm h1 h2
  refine hoareG_seqZ (L2 := fun m => B4 D m ∧ TW D qN m) ?_ ?_
  · exact hoareG_callPtr (footRet_finish_listA hC hA hT) retK_fin (hi := UU) (by omega) hR
      (fun m h => h.1.q) (fun m v h => b4_w h) (by decide)
  refine hoareG_seqZ (L2 := B4 D) (hoareG_addW (x := qN) (y := qN) ?_) ?_
  · intro m W hm h1 h2
    exact b4_q hm h1 h2
  refine hoareG_assignZ fun s _ hB v hv => ?_
  obtain ⟨I, hI, -, -⟩ := hB.1.i
  rw [ev_add2 (ev_lw hI) (ev_cw _ 1)] at hv
  cases hv
  exact jo_i hB.1

theorem topics_part (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomBelow X)
    {D : BitVec 64} {Rf : BitVec 64 → Prop} {s0 : State σ} {Ret : ValueHOL 64 → Prop}
    (hR : ∀ a, AbvR D a → Rf a) :
    HoareG σ X (LPre Rf s0 (B4 D)) topicsPart (LZ Rf s0 (JO D) Ret) := by
  have hn := num_facts
  unfold topicsPart
  refine hoareG_decZ (L' := fun _ m' => JO D m') ?_ (fun m m' _ h => jo_res h (by decide))
  intro s hs hL v hv hsh
  obtain ⟨R, hr, h1, h2⟩ := hL.2.2
  rw [ev_lw hr] at hv
  cases hv
  refine hoareG_preZ (L' := B5 D) ?_ (fun m hm => by
    subst hm
    exact ⟨b4_upd hL (by decide) (by decide) (by decide), bd_new _ _ _ h1 h2⟩)
  refine hoareG_decZ (L' := fun _ m' => JO D m') ?_ (fun m m' _ h => jo_res h (by decide))
  intro s hs hL v hv hsh
  obtain ⟨R', hr, h1, h2⟩ := hL.1.2.2
  rw [ev_add2 (ev_lw hr) (ev_cw _ 9)] at hv
  cases hv
  have hadd : (R' + BitVec.ofNat 64 9).toNat = R'.toNat + 9 := toNat_addc (by omega)
  refine hoareG_preZ (L' := B6 D) ?_ (fun m hm => by
    subst hm
    exact ⟨⟨b4_upd hL.1 (by decide) (by decide) (by decide), bd_upd (by decide) hL.2⟩,
      bd_new _ _ _ (by omega) (by omega)⟩)
  refine hoareG_decZ (L' := fun _ m' => JO D m') ?_ (fun m m' _ h => jo_res h (by decide))
  intro s hs hL v hv hsh
  obtain ⟨X1, rfl⟩ := val_of_shapeEq_one hsh
  refine hoareG_preZ (L' := B7 D) ?_ (fun m hm => by
    subst hm
    exact ⟨⟨⟨b4_upd hL.1.1 (by decide) (by decide) (by decide), bd_upd (by decide) hL.1.2⟩,
      bd_upd (by decide) hL.2⟩, bd_wd _ _ _⟩)
  refine hoareG_decZ (L' := fun _ m' => JO D m') ?_ (fun m m' _ h => jo_res h (by decide))
  intro s hs hL v hv hsh
  rw [ev_cw] at hv
  cases hv
  refine hoareG_preZ (L' := B8 D) ?_ (fun m hm => by
    subst hm
    exact ⟨⟨⟨⟨b4_upd hL.1.1.1 (by decide) (by decide) (by decide),
      bd_upd (by decide) hL.1.1.2⟩, bd_upd (by decide) hL.1.2⟩, bd_upd (by decide) hL.2⟩,
      bd_wd _ _ _⟩)
  exact hoareG_seqZ (L2 := B8 D) (inner_loop hC hA hT hR) (after_topics hC hA hT hR)

theorem outer_body (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomBelow X)
    {D : BitVec 64} {Rf : BitVec 64 → Prop} {s0 : State σ} {Ret : ValueHOL 64 → Prop}
    (hR : ∀ a, AbvR D a → Rf a) :
    HoareG σ X (LPre Rf s0 (JO D)) outerBody (LZ Rf s0 (JO D) Ret) := by
  have hn := num_facts
  unfold outerBody
  refine hoareG_decZ (L' := fun _ m' => JO D m') ?_ (fun m m' _ h => jo_res h (by decide))
  intro s hs hL v hv hsh
  obtain ⟨X1, rfl⟩ := val_of_shapeEq_one hsh
  refine hoareG_preZ (L' := fun m => JO D m ∧ Bd m logN 0 WW) ?_ (fun m hm => by
    subst hm
    exact ⟨jo_upd hL (by decide), bd_wd _ _ _⟩)
  refine hoareG_decZ (L' := fun _ m' => JO D m') ?_ (fun m m' _ h => jo_res h (by decide))
  intro s2 hs2 hL2 v2 hv2 hsh2
  obtain ⟨Q, hq, hq1, hq2⟩ := hL2.1.q
  rw [ev_add2 (ev_lw hq) (ev_cw _ 9)] at hv2
  cases hv2
  have hQ9 : (Q + BitVec.ofNat 64 9).toNat = Q.toNat + 9 := toNat_addc (by omega)
  refine hoareG_preZ (L' := fun m => (JO D m ∧ Bd m logN 0 WW) ∧ Bd m rN D.toNat (UU + 9)) ?_
    (fun m hm => by
      subst hm
      exact ⟨⟨jo_upd hL2.1 (by decide), bd_upd (by decide) hL2.2⟩,
        bd_new _ _ _ (by omega) (by omega)⟩)
  refine hoareG_decCallFootZ (L' := fun _ m' => JO D m') (footRet_encode_bytesA hC hA hT) ?_ ?_
    (fun m m' _ h => jo_res h (by decide))
  · intro t _ hpre vs hvs
    obtain ⟨R, hr, h1, h2⟩ := hpre.1.2
    obtain ⟨v0, vs', rfl, hv0, -⟩ := evs_cons_inv hvs
    rw [ev_lw hr] at hv0
    cases hv0
    refine ⟨⟨R, rfl, by omega⟩, fun a ⟨D2, hD2, hh⟩ => ?_⟩
    cases hD2
    exact hR a (abvR_mono hh h1)
  · intro s3 vs v hs3 hL3 hvs hret _
    obtain ⟨⟨hO, hlog⟩, R, hr, h1, h2⟩ := hL3
    obtain ⟨v0, vs', rfl, hv0, -⟩ := evs_cons_inv hvs
    rw [ev_lw hr] at hv0
    cases hv0
    obtain ⟨hI, k, hk, hk1, hk2⟩ := hret R rfl
    subst hk
    let B3 : Locals → Prop := fun m => (JO D m ∧ Bd m logN 0 WW) ∧
      m.lookup rN = some (.val (.word R)) ∧
      m.lookup wN = some (.val (.word (BitVec.ofNat 64 k)))
    refine hoareG_preZ (L' := B3) ?_ (fun m hm => by
      subst hm
      exact ⟨⟨jo_upd hO (by decide), bd_upd (by decide) hlog⟩,
        by rw [lookup_update_ne _ _ (by decide)]; exact hr, lookup_update_self _ _ _⟩)
    refine hoareG_seqZ (L2 := B4 D) ?_ (topics_part hC hA hT hR)
    refine hoareG_assignZ fun t _ hB3 v' hv' => ?_
    obtain ⟨⟨hO', hlog'⟩, hr', hw'⟩ := hB3
    rw [ev_add2 (ev_lw hr') (ev_lw hw')] at hv'
    cases hv'
    have hadd : (R + BitVec.ofNat 64 k).toNat = R.toNat + k := toNat_addc (by omega)
    exact ⟨jo_upd hO' (by decide), bd_upd (by decide) hlog', bd_new _ _ _ (by omega) (by omega)⟩

/-! ## `encode_logs` -/

def LogsPre (vs : List (ValueHOL 64)) : Prop :=
  ∃ D : BitVec 64, argW vs 0 = some D ∧ D.toNat ≤ 2 ^ 60

/-- **`encode_logs(dst, logs)`**, no typing of the logs, any lengths: writes only cells at or above
`dst`'s, returns `k ≥ 1` with `dst + k ≤ domTop + 128`, and `dst` lies in the domain. -/
theorem footRet_encode_logs (hC : X.code.lookup = guestCode) (hA : AlignedDom X)
    (hT : DomBelow X) :
    FootRet σ X (nm "encode_logs") LogsPre (AbvArg 0) EncRetA := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bb, rfl, hA', hB', hla, hlb⟩ :=
    lookupCode_two code_encode_logs (by decide) hl
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨Lg, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨D', hD, hb⟩ := hP
  cases hD
  have hn := num_facts
  let Rf := AbvArg 0 [.val (.word D), .val (.word Lg)]
  have hR : ∀ a, AbvR D a → Rf a := fun a h => ⟨D, rfl, h⟩
  let Ret : ValueHOL 64 → Prop := fun v => InD D ∧ ∃ k : Nat,
    v = .val (.word (BitVec.ofNat 64 k)) ∧ 1 ≤ k ∧ D.toNat + k ≤ domTop + 128
  let L0 : Locals → Prop := fun m => m.lookup dN = some (.val (.word D)) ∧ Bd m logsN 0 WW
  have main : HoareG σ X (LPre Rf s0 L0) encodeLogsBody (LZ Rf s0 (fun _ => True) Ret) := by
    unfold encodeLogsBody
    refine hoareG_decZ (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
    intro s hs hL v hv hsh
    obtain ⟨Nv, rfl⟩ := val_of_shapeEq_one hsh
    refine hoareG_preZ (L' := fun m => L0 m ∧ Bd m nN 0 WW) ?_ (fun m hm => by
      subst hm
      exact ⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1, bd_upd (by decide) hL.2⟩,
        bd_wd _ _ _⟩)
    refine hoareG_decZ (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
    intro s hs hL v hv hsh
    obtain ⟨Pv, rfl⟩ := val_of_shapeEq_one hsh
    refine hoareG_preZ (L' := fun m => (L0 m ∧ Bd m nN 0 WW) ∧ Bd m pN 0 WW) ?_ (fun m hm => by
      subst hm
      exact ⟨⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.1,
        bd_upd (by decide) hL.1.2⟩, bd_upd (by decide) hL.2⟩, bd_wd _ _ _⟩)
    refine hoareG_decZ (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
    intro s hs hL v hv hsh
    rw [ev_add2 (ev_lw hL.1.1.1) (ev_cw _ 9)] at hv
    cases hv
    have hadd : (D + BitVec.ofNat 64 9).toNat = D.toNat + 9 := toNat_addc (by omega)
    refine hoareG_preZ (L' := fun m => ((L0 m ∧ Bd m nN 0 WW) ∧ Bd m pN 0 WW) ∧
        Bd m qN D.toNat UU) ?_ (fun m hm => by
      subst hm
      exact ⟨⟨⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.1.1,
        bd_upd (by decide) hL.1.1.2⟩, bd_upd (by decide) hL.1.2⟩, bd_upd (by decide) hL.2⟩,
        bd_new _ _ _ (by omega) (by omega)⟩)
    refine hoareG_decZ (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
    intro s hs hL v hv hsh
    rw [ev_cw] at hv
    cases hv
    refine hoareG_preZ (L' := JO D) ?_ (fun m hm => by
      subst hm
      exact ⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.1.1.1,
        bd_upd (by decide) hL.1.1.1.2, bd_upd (by decide) hL.1.1.2, bd_upd (by decide) hL.1.2,
        bd_upd (by decide) hL.2, bd_wd _ _ _⟩)
    refine hoareG_seqZ (L2 := JO D) ?_ ?_
    · refine hoareG_whileZ (J := JO D) ?_ (fun s _ h _ => h)
      exact hoareG_pre (outer_body hC hA hT hR) (fun s _ h => h.1)
    · refine hoareG_decCallFootZ (L' := fun _ _ => False) (footRet_finish_listA hC hA hT) ?_ ?_
        (fun _ _ _ h => h.elim)
      · intro t _ hpre vs hvs
        obtain ⟨Q, hQ, hq1, hq2⟩ := hpre.1.q
        rw [evs_cons (ev_lw hpre.1.d) (evs_cons (ev_lw hQ) evs_nil)] at hvs
        cases hvs
        refine ⟨⟨D, rfl, by omega⟩, fun a ⟨D2, hD2, h⟩ => ?_⟩
        cases hD2
        exact hR a h
      · intro s vs v _ hL hvs hret _
        obtain ⟨Q, hQ, -, -⟩ := hL.q
        rw [evs_cons (ev_lw hL.d) (evs_cons (ev_lw hQ) evs_nil)] at hvs
        cases hvs
        have hv := hret D rfl
        refine hoareG_returnZ fun t _ hL' w hw => ?_
        rw [ev_lv, hL', lookup_update_self] at hw
        cases hw
        obtain ⟨a1, k, a2, a3, a4, -⟩ := hv
        exact ⟨a1, k, a2, a3, a4⟩
  exact hoareG_conseq main
    (fun t _ ht => by
      subst t
      exact lpre_init ⟨by rw [hloc]; exact hla, bd_wide (by rw [hloc]; exact hlb)⟩)
    fun _ _ _ _ h => ⟨h.1.1, fun w hw D2 hD2 => by cases hD2; exact h.1.2.2 w hw⟩

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.footRet_encode_logs
