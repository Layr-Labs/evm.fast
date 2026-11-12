import InitECandidate.Solver.MemSafe.Loc.DecLoc
import InitECandidate.Solver.Spec.TrieWalk
import InitECandidate.Solver.Spec.CodeWalk

set_option autoImplicit false

/-!
# `trie_walk`: what it returns (sonnet-loc, deliverable 2)

`walk_spec`: starting from a null-or-`Nd` node, with `NdClosed`, nibbles `< 16` at `nibs + j` for
`j < nlen`, a returned `<x, y, z>` with `x ≠ 0` is the value slice of some `Nd` node of the entry
memory (`ValOf`); the memory is never written (`memeq` reads only).
-/

set_option maxRecDepth 1000000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Loc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
open InitECandidate.Solver.MemSafe.St2 (ValOf)
open InitECandidate.Solver.Spec.Mpt (NullOrNd NdClosed byteOf)
open InitECandidate.Solver.Spec.Mpt.Leaves (hoare_decL hoare_decCallL)

variable {σ : Type} {X : Ctx 64}

/-- A returned `<x, y, z>` with `x ≠ 0` is the value slice of an `Nd` node of `M`. -/
def WOK (Nd : BitVec 64 → Prop) (M : Mem) (v : ValueHOL 64) : Prop :=
  ∀ x y z : BitVec 64, v = .rStruct [.val (.word x), .val (.word y), .val (.word z)] → x ≠ 0 →
    ∃ n, Nd n ∧ ValOf M n y z

/-- A result is "normal" (no `break`/`continue`): normal completion or a good return. -/
def NF (Nd : BitVec 64 → Prop) (M : Mem) (r : Option (PanSemResultExact 64)) : Prop :=
  r = none ∨ ∃ v, r = some (.returned v) ∧ WOK Nd M v

theorem wok_zero (Nd : BitVec 64 → Prop) (M : Mem) :
    WOK Nd M (.rStruct [.val (.word (BitVec.ofNat 64 0)), .val (.word (BitVec.ofNat 64 0)),
      .val (.word (BitVec.ofNat 64 0))]) := by
  intro x y z h hx
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
    and_true] at h
  obtain ⟨rfl, -, -⟩ := h
  exact absurd rfl hx

theorem ev_ret3 {t : State σ} {e1 e2 e3 : ExpHOL 64} {v : ValueHOL 64}
    (h : ev t (.rstruct [e1, e2, e3]) = some v) :
    ∃ v1 v2 v3, v = .rStruct [v1, v2, v3] ∧ ev t e1 = some v1 ∧ ev t e2 = some v2 ∧ ev t e3 = some v3 := by
  obtain ⟨vs, rfl, hvs⟩ := ev_rstruct_inv h
  obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
  obtain ⟨v3, vs3, rfl, h3, hvs3⟩ := evs_cons_inv hvs2
  simp only [evs, evalListHOLExact, Option.some.injEq] at hvs3
  subst hvs3
  exact ⟨v1, v2, v3, rfl, h1, h2, h3⟩

theorem ev_cw_inv {t : State σ} {k : Nat} {v : ValueHOL 64} (h : ev t (cw k) = some v) :
    v = .val (.word (BitVec.ofNat 64 k)) := by
  rw [ev_cw] at h; exact (Option.some.inj h).symm

/-- The three-word result of a `ldn` pair, in a state whose node is `N` and memory `M`. -/
theorem ldn_val {t : State σ} {N : BitVec 64} {M : Mem}
    (hn : t.locals.lookup (nm "node") = some (.val (.word N))) (hm : t.memory = M) (k : Nat)
    {v : ValueHOL 64} (h : ev t (ldn k) = some v) :
    v = .val (.word (rd M (N + BitVec.ofNat 64 k))) := by
  rw [ev_ld_inv hn h, hm, Spec.Mpt.mem_word M _]

theorem walk_leaf (hC : X.code.lookup = guestCode) {Nd : BitVec 64 → Prop} {M : Mem} {N : BitVec 64}
    (hNd : Nd N) (hK : rd M N = 1) :
    Hoare σ X (fun t => t.locals.lookup (nm "node") = some (.val (.word N)) ∧ t.memory = M) twLeaf
      (fun r t => ∃ v, r = some (.returned v) ∧ WOK Nd M v) := by
  have hret : ∀ {t : State σ}, t.locals.lookup (nm "node") = some (.val (.word N)) → t.memory = M →
      ∀ v, ev t (.rstruct [cw 1, ldn 48, ldn 56]) = some v → WOK Nd M v := by
    intro t hn hm v hv x y z hxyz hx
    obtain ⟨v1, v2, v3, rfl, h1, h2, h3⟩ := ev_ret3 hv
    rw [ev_cw_inv h1, ldn_val hn hm 48 h2, ldn_val hn hm 56 h3] at hxyz
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
      and_true] at hxyz
    obtain ⟨-, rfl, rfl⟩ := hxyz
    exact ⟨N, hNd, Or.inl ⟨hK, rfl, rfl⟩⟩
  unfold twLeaf
  refine hoare_decL (fun _ _ _ h => h) fun s hs ⟨hn, hm⟩ v hv hsh => ?_
  refine hoare_pre (P := fun t => t.locals.lookup (nm "node") = some (.val (.word N)) ∧ t.memory = M)
    ?_ (fun t _ ht => by subst ht; exact ⟨by rw [lk_set_ne _ _ (by decide)]; exact hn, hm⟩)
  refine hoare_seq (R := fun r t => NF Nd M r) ?_ (fun r t _ hr _ h => ?_) (hoare_return ?_)
  · refine hoare_ite ?_ (hoare_skip fun t _ h => Or.inl rfl)
    refine hoare_decCallS (funSpec_memeq hC) ?_
    intro u _ ⟨⟨hn', hm'⟩, _⟩ vs hvs callee w st ⟨hret', hmem⟩ _ hsh'
    refine hoare_pre (P := fun t => t.locals.lookup (nm "node") = some (.val (.word N)) ∧ t.memory = M)
      ?_ (fun t _ ht => by
        subst ht
        exact ⟨by rw [lk_set_ne _ _ (by decide)]; exact hn', hmem.trans hm'⟩)
    refine hoare_ite (hoare_return ?_) (hoare_skip fun t _ h => Or.inl rfl)
    intro t _ ⟨⟨hn2, hm2⟩, _⟩ v' hv'
    exact Or.inr ⟨v', rfl, hret hn2 hm2 v' hv'⟩
  · rcases h with h | ⟨v', hv', hw⟩
    · exact absurd h hr
    · exact ⟨v', hv', hw⟩
  · intro t _ ht v' hv'
    obtain ⟨v1, v2, v3, rfl, h1, h2, h3⟩ := ev_ret3 hv'
    rw [ev_cw_inv h1, ev_cw_inv h2, ev_cw_inv h3]
    exact ⟨_, rfl, wok_zero Nd M⟩


/-! ## The loop state -/

/-- The four loop locals, memory and byte order. -/
def Wst (M : Mem) (be : Bool) (NB NL N POS : BitVec 64) (t : State σ) : Prop :=
  t.locals.lookup (nm "node") = some (.val (.word N)) ∧
    t.locals.lookup (nm "nibs") = some (.val (.word NB)) ∧
    t.locals.lookup (nm "nlen") = some (.val (.word NL)) ∧
    t.locals.lookup (nm "pos") = some (.val (.word POS)) ∧ t.memory = M ∧ t.be = be

def WI (Nd : BitVec 64 → Prop) (M : Mem) (be : Bool) (NB NL : BitVec 64) (t : State σ) : Prop :=
  ∃ N POS : BitVec 64, Wst M be NB NL N POS t ∧ POS.toNat ≤ NL.toNat ∧ NullOrNd Nd N

/-- The body's post: normal completion keeps the loop state; returns are good; no break/continue. -/
def BQ (Nd : BitVec 64 → Prop) (M : Mem) (be : Bool) (NB NL : BitVec 64)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r = none → WI Nd M be NB NL t) ∧ (∀ v, r = some (.returned v) → WOK Nd M v) ∧
    r ≠ some .continue ∧ r ≠ some .break

theorem wst_res {M be NB NL N POS} {t : State σ} {n : MlS} (h : Wst M be NB NL N POS t)
    (h1 : n ≠ nm "node") (h2 : n ≠ nm "nibs") (h3 : n ≠ nm "nlen") (h4 : n ≠ nm "pos")
    (o : Option (ValueHOL 64)) :
    Wst M be NB NL N POS { t with locals := t.locals.resVarEq (n, o) } := by
  obtain ⟨h1', h2', h3', h4', h5, h6⟩ := h
  exact ⟨by rw [lookup_resVarEq_ne _ _ h1]; exact h1', by rw [lookup_resVarEq_ne _ _ h2]; exact h2',
    by rw [lookup_resVarEq_ne _ _ h3]; exact h3', by rw [lookup_resVarEq_ne _ _ h4]; exact h4', h5, h6⟩

theorem wst_set {M be NB NL N POS} {t : State σ} {n : MlS} (h : Wst M be NB NL N POS t)
    (h1 : n ≠ nm "node") (h2 : n ≠ nm "nibs") (h3 : n ≠ nm "nlen") (h4 : n ≠ nm "pos")
    (v : ValueHOL 64) : Wst M be NB NL N POS (setVarHOLFinite n v t) := by
  obtain ⟨h1', h2', h3', h4', h5, h6⟩ := h
  exact ⟨by rw [lk_set_ne _ _ h1]; exact h1', by rw [lk_set_ne _ _ h2]; exact h2',
    by rw [lk_set_ne _ _ h3]; exact h3', by rw [lk_set_ne _ _ h4]; exact h4', h5, h6⟩

theorem bq_res {Nd M be NB NL} {r : Option (PanSemResultExact 64)} {t : State σ} {n : MlS}
    (h : BQ Nd M be NB NL r t) (h1 : n ≠ nm "node") (h2 : n ≠ nm "nibs") (h3 : n ≠ nm "nlen")
    (h4 : n ≠ nm "pos") (o : Option (ValueHOL 64)) :
    BQ Nd M be NB NL r { t with locals := t.locals.resVarEq (n, o) } := by
  obtain ⟨a, b, c, d⟩ := h
  refine ⟨fun hr => ?_, b, c, d⟩
  obtain ⟨N, POS, hw, h5, h6⟩ := a hr
  exact ⟨N, POS, wst_res hw h1 h2 h3 h4 o, h5, h6⟩

theorem bq_ret000 {Nd M be NB NL} {t t' : State σ} {v : ValueHOL 64}
    (hv : ev t (.rstruct [cw 0, cw 0, cw 0]) = some v) :
    BQ Nd M be NB NL (some (.returned v)) t' := by
  obtain ⟨v1, v2, v3, rfl, h1, h2, h3⟩ := ev_ret3 hv
  rw [ev_cw_inv h1, ev_cw_inv h2, ev_cw_inv h3]
  refine ⟨(fun h => by cases h), fun w hw => ?_, by simp, by simp⟩
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
  subst hw
  exact wok_zero Nd M

theorem hoare_decQ {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    (hQ : ∀ r (t : State σ) o, Q r t → Q r { t with locals := t.locals.resVarEq (n, o) })
    (h : ∀ s : State σ, InCtx s X → P s → ∀ v, ev s e = some v →
      shapeEqHOL sh (shapeOfHOLExact v) = true →
      Hoare σ X (fun t => t = setVarHOLFinite n v s) body Q) :
    Hoare σ X P (.dec n sh e body) Q :=
  hoare_dec fun s hs hp v hv hsh => hoare_conseq (h s hs hp v hv hsh) (fun _ _ h => h)
    fun r t _ _ hq => hQ r t _ hq

theorem hoare_decCallQ {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ X f R)
    (hQ : ∀ r (t : State σ) o, Q r t → Q r { t with locals := t.locals.resVarEq (rn, o) })
    (h : ∀ s : State σ, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : State σ),
        R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
        shapeEqHOL (shapeOfHOLExact v) sh = true →
        Hoare σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k Q) :
    Hoare σ X P (.decCall rn sh f args k) Q :=
  hoare_decCallS hf fun s hs hp vs hvs callee v st hR hst hsh =>
    hoare_conseq (h s hs hp vs hvs callee v st hR hst hsh) (fun _ _ h => h)
      fun r t _ _ hq => hQ r t _ hq

theorem ev_nibByte {s : State σ} {NB POS : BitVec 64} {M : Mem} {be : Bool} {v : ValueHOL 64}
    (hn : s.locals.lookup (nm "nibs") = some (.val (.word NB)))
    (hp : s.locals.lookup (nm "pos") = some (.val (.word POS)))
    (hm : s.memory = M) (hb : s.be = be) (hnib : byteOf M be (NB + POS) < 16)
    (h : ev s (.loadByte (.op .add [lv (nm "nibs"), lv (nm "pos")])) = some v) :
    ∃ w : BitVec 64, v = .val (.word w) ∧ w.toNat < 16 := by
  subst hm hb
  have ha := ev_add2 (ev_lw hn) (ev_lw hp)
  simp only [ev, evalHOLExact] at h ha
  rw [ha] at h
  obtain ⟨b, hb', rfl⟩ := Option.map_eq_some_iff.mp h
  refine ⟨_, rfl, ?_⟩
  unfold panMemLoadByteHOL at hb'
  dsimp only at hb'
  split at hb'
  · simp only [Option.some.injEq] at hb'
    subst hb'
    unfold byteOf at hnib
    have hrd : rd s.memory (panByteAlignHOL (NB + POS)) = (s.memory (panByteAlignHOL (NB + POS))).1 := by
      unfold rd; cases s.memory (panByteAlignHOL (NB + POS)); rfl
    rw [hrd] at hnib
    simp only [BitVec.toNat_ofNat]
    exact lt_of_le_of_lt (Nat.mod_le _ _) hnib
  · simp at hb'


open InitECandidate.Solver.MemSafe.Helpers (funSpec_dom)

theorem walk_ext (hC : X.code.lookup = guestCode) {Nd : BitVec 64 → Prop} {M : Mem} {be : Bool}
    {NB NL N POS : BitVec 64} (hle : POS.toNat ≤ NL.toNat)
    (hcl : NullOrNd Nd (rd M (N + 48))) :
    Hoare σ X (Wst M be NB NL N POS) twExt (BQ Nd M be NB NL) := by
  unfold twExt
  refine hoare_decQ (fun r t o h => bq_res h (by decide) (by decide) (by decide) (by decide) o)
    fun s hs hW v hv hsh => ?_
  have hv' := ldn_val hW.1 hW.2.2.2.2.1 40 hv
  subst hv'
  set SL := rd M (N + BitVec.ofNat 64 40) with hSL
  refine hoare_pre (P := fun t => Wst M be NB NL N POS t ∧
      t.locals.lookup (nm "sl") = some (.val (.word SL))) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨wst_set hW (by decide) (by decide) (by decide) (by decide) _, lk_set_self _ _ _⟩)
  refine Spec.hoare_ite_skip_seq (hoare_return fun t _ _ v' hv' =>
    ⟨by simp, bq_ret000 hv'⟩) ?_
  -- `memeq(node + 32, nibs + pos, sl)`
  refine hoare_decCallQ ((funSpec_memeq hC).and (funSpec_dom _))
    (fun r t o h => bq_res h (by decide) (by decide) (by decide) (by decide) o) ?_
  intro u _ ⟨⟨hW', hsl⟩, hc⟩ vs hvs callee w st ⟨⟨hret, hmem⟩, hdom⟩ _ hsh
  -- the guard `nlen - pos < sl` was false
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
  rw [ev_lw hsl] at hy
  cases hy
  obtain ⟨Nl, Pos, hNl, hPos, rfl⟩ := ev_sub2_inv hx
  rw [ev_lv] at hNl hPos
  rw [hW'.2.2.1] at hNl
  rw [hW'.2.2.2.1] at hPos
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hNl hPos
  subst hNl hPos
  have hle2 := lower_false hxy
  have hsub : (NL - POS).toNat = NL.toNat - POS.toNat := by
    rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def]; exact hle)]
  obtain ⟨W, rfl⟩ := val_of_shapeEq_one' hsh
  refine hoare_pre (P := fun t => Wst M be NB NL N POS t ∧
      t.locals.lookup (nm "sl") = some (.val (.word SL))) ?_
    (fun t _ ht => by
      subst ht
      refine ⟨⟨?_, ?_, ?_, ?_, ?_, ?_⟩, ?_⟩
      · rw [lk_set_ne _ _ (by decide)]; exact hW'.1
      · rw [lk_set_ne _ _ (by decide)]; exact hW'.2.1
      · rw [lk_set_ne _ _ (by decide)]; exact hW'.2.2.1
      · rw [lk_set_ne _ _ (by decide)]; exact hW'.2.2.2.1
      · exact hmem.trans hW'.2.2.2.2.1
      · exact hdom.2.trans hW'.2.2.2.2.2
      · rw [lk_set_ne _ _ (by decide)]; exact hsl)
  refine Spec.hoare_ite_skip_seq (hoare_return fun t _ _ v' hv' =>
    ⟨by simp, bq_ret000 hv'⟩) ?_
  refine hoare_seq (R := fun r t => r = none ∧ Wst M be NB NL N (POS + SL) t) ?_
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun t _ ⟨⟨hW2, hsl2⟩, _⟩ z hz _ => ?_
    rw [ev_add2 (ev_lw hW2.2.2.2.1) (ev_lw hsl2)] at hz
    cases hz
    refine ⟨rfl, ?_, ?_, ?_, ?_, ?_, ?_⟩
    · rw [lk_set_ne _ _ (by decide)]; exact hW2.1
    · rw [lk_set_ne _ _ (by decide)]; exact hW2.2.1
    · rw [lk_set_ne _ _ (by decide)]; exact hW2.2.2.1
    · exact lk_set_self _ _ _
    · exact hW2.2.2.2.2.1
    · exact hW2.2.2.2.2.2
  · refine hoare_assign fun t _ ⟨_, hW2⟩ z hz _ => ?_
    have hz' := ldn_val hW2.1 hW2.2.2.2.2.1 48 hz
    subst hz'
    refine ⟨fun _ => ⟨rd M (N + BitVec.ofNat 64 48), POS + SL, ⟨?_, ?_, ?_, ?_, ?_, ?_⟩, ?_, ?_⟩,
      (fun v h => by cases h), by simp, by simp⟩
    · exact lk_set_self _ _ _
    · rw [lk_set_ne _ _ (by decide)]; exact hW2.2.1
    · rw [lk_set_ne _ _ (by decide)]; exact hW2.2.2.1
    · rw [lk_set_ne _ _ (by decide)]; exact hW2.2.2.2.1
    · exact hW2.2.2.2.2.1
    · exact hW2.2.2.2.2.2
    · have : (POS + SL).toNat = POS.toNat + SL.toNat := by
        rw [BitVec.toNat_add]
        exact Nat.mod_eq_of_lt (by have := NL.isLt; omega)
      omega
    · exact hcl


def childExp : ExpHOL 64 :=
  .load .one (.op .add [lv (nm "node"), cw 32,
    .panop .mul [.loadByte (.op .add [lv (nm "nibs"), lv (nm "pos")]), cw 8]])

theorem ev_childLoad {t : State σ} {N NB POS : BitVec 64} {M : Mem} {be : Bool} {v : ValueHOL 64}
    (hn : t.locals.lookup (nm "node") = some (.val (.word N)))
    (hnb : t.locals.lookup (nm "nibs") = some (.val (.word NB)))
    (hp : t.locals.lookup (nm "pos") = some (.val (.word POS)))
    (hm : t.memory = M) (hb : t.be = be) (hnib : byteOf M be (NB + POS) < 16)
    (h : ev t childExp = some v) :
    ∃ B : BitVec 64, B.toNat < 16 ∧ v = .val (.word (rd M (N + BitVec.ofNat 64 (32 + 8 * B.toNat)))) := by
  unfold childExp at h
  obtain ⟨a, ha, -, hva⟩ := ev_load_one h
  obtain ⟨vs, hvs⟩ := ev_op_evs ha
  obtain ⟨_, vs1, rfl, -, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨_, vs2, rfl, -, hvs2⟩ := evs_cons_inv hvs1
  obtain ⟨vz, vs3, rfl, hz, -⟩ := evs_cons_inv hvs2
  obtain ⟨ws, hws⟩ := ev_panop_evs hz
  obtain ⟨vb, ws1, rfl, hb', -⟩ := evs_cons_inv hws
  obtain ⟨B, rfl, hB16⟩ := ev_nibByte hnb hp hm hb hnib hb'
  have hmul : ev t (.panop .mul [.loadByte (.op .add [lv (nm "nibs"), lv (nm "pos")]), cw 8]) =
      some (.val (.word (B * BitVec.ofNat 64 8))) := ev_mul2 hb' (ev_cw _ 8)
  have hadd := ev_add3 (ev_lw hn) (ev_cw _ 32) hmul
  rw [hadd] at ha
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at ha
  subst ha
  refine ⟨B, hB16, ?_⟩
  have haddr : N + (BitVec.ofNat 64 32 + B * BitVec.ofNat 64 8) =
      N + BitVec.ofNat 64 (32 + 8 * B.toNat) := by
    congr 1
    apply BitVec.eq_of_toNat_eq
    simp only [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
    omega
  rw [hva, haddr, hm, Spec.Mpt.mem_word M _]


theorem walk_branch (hC : X.code.lookup = guestCode) {Nd : BitVec 64 → Prop} {M : Mem} {be : Bool}
    {NB NL N POS : BitVec 64} (hle : POS.toNat ≤ NL.toNat) (hNdN : Nd N)
    (hK0 : rd M N ≠ 0) (hK1 : rd M N ≠ 1) (hK2 : rd M N ≠ 2)
    (hchild : ∀ i : Nat, i < 16 → NullOrNd Nd (rd M (N + BitVec.ofNat 64 (32 + 8 * i))))
    (hNib : ∀ j, j < NL.toNat → byteOf M be (NB + BitVec.ofNat 64 j) < 16) :
    Hoare σ X (Wst M be NB NL N POS) twBranch (BQ Nd M be NB NL) := by
  unfold twBranch
  refine Spec.hoare_ite_skip_seq (P := Wst M be NB NL N POS) ?_ ?_
  · -- `pos == nlen`: the value slice of the branch
    refine hoare_decQ (Q := fun r t => r ≠ none ∧ BQ Nd M be NB NL r t)
      (fun r t o h => ⟨h.1, bq_res h.2 (by decide) (by decide) (by decide) (by decide) o⟩) ?_
    intro s hs ⟨hW, _⟩ v hv hsh
    have hv' := ldn_val hW.1 hW.2.2.2.2.1 168 hv
    subst hv'
    set VL := rd M (N + BitVec.ofNat 64 168) with hVL
    refine hoare_pre (P := fun t => Wst M be NB NL N POS t ∧
        t.locals.lookup (nm "vl") = some (.val (.word VL))) ?_
      (fun t _ ht => by
        subst ht
        exact ⟨wst_set hW (by decide) (by decide) (by decide) (by decide) _, lk_set_self _ _ _⟩)
    refine Spec.hoare_ite_skip_seq (hoare_return fun t _ _ v' hv' =>
      ⟨by simp, by simp, bq_ret000 hv'⟩) ?_
    refine hoare_return fun t _ ⟨⟨hW2, hvl⟩, _⟩ v' hv' => ⟨by simp, ?_⟩
    obtain ⟨v1, v2, v3, rfl, h1, h2, h3⟩ := ev_ret3 hv'
    rw [ev_cw_inv h1, ldn_val hW2.1 hW2.2.2.2.2.1 160 h2] at *
    rw [ev_lw hvl] at h3
    cases h3
    refine ⟨(fun h => by cases h), fun w hw => ?_, by simp, by simp⟩
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
    subst hw
    intro x y z hxyz hx
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
      and_true] at hxyz
    obtain ⟨-, rfl, rfl⟩ := hxyz
    exact ⟨N, hNdN, Or.inr ⟨hK0, hK1, hK2, rfl, rfl⟩⟩
  · -- descend: `node = child; pos = pos + 1`
    have hPN : ∀ t : State σ, Wst M be NB NL N POS t ∧ ev t (.cmp .equal (lv (nm "pos")) (lv (nm "nlen"))) =
        some (.val (.word 0)) → POS.toNat < NL.toNat := by
      intro t ⟨hW, hc⟩
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_lw hW.2.2.2.1] at hx
      rw [ev_lw hW.2.2.1] at hy
      cases hx; cases hy
      have := equal_false hxy
      have h2 : POS.toNat ≠ NL.toNat := fun h => this (BitVec.eq_of_toNat_eq h)
      omega
    refine hoare_seq (R := fun r t => r = none ∧ ∃ C, Wst M be NB NL C POS t ∧ NullOrNd Nd C ∧
        POS.toNat < NL.toNat) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_assign fun t _ hP z hz _ => ?_
      have hlt := hPN t hP
      obtain ⟨B, hB, rfl⟩ := ev_childLoad hP.1.1 hP.1.2.1 hP.1.2.2.2.1 hP.1.2.2.2.2.1 hP.1.2.2.2.2.2
        (by
          have := hNib POS.toNat hlt
          rwa [show BitVec.ofNat 64 POS.toNat = POS by simp] at this) hz
      refine ⟨rfl, rd M (N + BitVec.ofNat 64 (32 + 8 * B.toNat)), ?_, hchild _ hB, hlt⟩
      obtain ⟨h1, h2, h3, h4, h5, h6⟩ := hP.1
      exact ⟨lk_set_self _ _ _, by rw [lk_set_ne _ _ (by decide)]; exact h2,
        by rw [lk_set_ne _ _ (by decide)]; exact h3, by rw [lk_set_ne _ _ (by decide)]; exact h4, h5, h6⟩
    · refine hoare_assign fun t _ ⟨_, C, hW2, hC2, hlt⟩ z hz _ => ?_
      rw [ev_add2 (ev_lw hW2.2.2.2.1) (ev_cw _ 1)] at hz
      cases hz
      refine ⟨fun _ => ⟨C, POS + BitVec.ofNat 64 1, ⟨?_, ?_, ?_, ?_, hW2.2.2.2.2.1, hW2.2.2.2.2.2⟩, ?_, hC2⟩,
        (fun v h => by cases h), by simp, by simp⟩
      · rw [lk_set_ne _ _ (by decide)]; exact hW2.1
      · rw [lk_set_ne _ _ (by decide)]; exact hW2.2.1
      · rw [lk_set_ne _ _ (by decide)]; exact hW2.2.2.1
      · exact lk_set_self _ _ _
      · have : (POS + BitVec.ofNat 64 1).toNat = POS.toNat + 1 := by
          rw [BitVec.toNat_add, BitVec.toNat_ofNat]
          exact Nat.mod_eq_of_lt (by have := NL.isLt; omega)
        omega


theorem bq_of_ret {Nd M be NB NL} {r : Option (PanSemResultExact 64)} {t : State σ}
    (h : ∃ v, r = some (.returned v) ∧ WOK Nd M v) : BQ Nd M be NB NL r t := by
  obtain ⟨v, rfl, hw⟩ := h
  exact ⟨(fun h => by cases h), fun w hw' => by cases hw'; exact hw, by simp, by simp⟩

theorem walk_body (hC : X.code.lookup = guestCode) (hNS : NullSafe X) {Nd : BitVec 64 → Prop}
    {M : Mem} {be : Bool} {NB NL : BitVec 64} (hCl : NdClosed M Nd)
    (hNib : ∀ j, j < NL.toNat → byteOf M be (NB + BitVec.ofNat 64 j) < 16) :
    Hoare σ X (fun t => WI Nd M be NB NL t ∧ CondTrue t twCond) twLoopBody (BQ Nd M be NB NL) := by
  unfold twLoopBody
  refine hoare_decQ (fun r t o h => bq_res h (by decide) (by decide) (by decide) (by decide) o)
    fun s hs ⟨⟨N, POS, hW, hle, hNd⟩, _⟩ v hv hsh => ?_
  have hv' := ldn_val hW.1 hW.2.2.2.2.1 0 hv
  subst hv'
  have hN0 : N + BitVec.ofNat 64 0 = N := by simp
  rw [hN0]
  have hNdN : Nd N := by
    obtain ⟨a, ha, hdom, -⟩ := ev_load_one hv
    rw [ev_add_cw hW.1 0, hN0] at ha
    cases ha
    have := hNS _ (hs.2.1 ▸ hdom)
    rcases hNd with h | h
    · omega
    · exact h
  set K := rd M N with hKdef
  refine hoare_pre (P := fun t => Wst M be NB NL N POS t ∧ t.locals.lookup (nm "k") = some (.val (.word K)))
    ?_ (fun t _ ht => by
      subst ht
      exact ⟨wst_set hW (by decide) (by decide) (by decide) (by decide) _, lk_set_self _ _ _⟩)
  refine hoare_guard_seq (funRet_mpt_fail hC) ?_
  obtain ⟨hcl32, hcl2, hclb⟩ := hCl N hNdN
  refine hoare_pre (P := fun t => Wst M be NB NL N POS t ∧
      t.locals.lookup (nm "k") = some (.val (.word K)) ∧ K ≠ 0) ?_ (fun t _ ⟨⟨hW', hk⟩, hc⟩ => ⟨hW', hk, ?_⟩)
  swap
  · obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    rw [ev_lw hk] at hx
    rw [ev_cw] at hy
    cases hx; cases hy
    exact equal_false hxy
  have hkc : ∀ (t : State σ) (k : Nat), t.locals.lookup (nm "k") = some (.val (.word K)) →
      ev t (.cmp .equal (lv (nm "k")) (cw k)) =
        some (.val (.word (if wordCmpHOL .equal K (BitVec.ofNat 64 k) then 1 else 0))) :=
    fun t k hk => ev_cmp (ev_lw hk) (ev_cw _ k)
  refine Spec.hoare_ite_skip_seq (P := fun t => Wst M be NB NL N POS t ∧
      t.locals.lookup (nm "k") = some (.val (.word K)) ∧ K ≠ 0) ?_ ?_
  · intro t ht ⟨⟨hW', hk, hK0⟩, w, hw, hw0⟩ htr
    rw [hkc t 1 hk] at hw
    have hK1 : K = BitVec.ofNat 64 1 := by
      by_cases h : wordCmpHOL .equal K (BitVec.ofNat 64 1)
      · simpa [wordCmpHOL] using h
      · rw [if_neg h] at hw; cases hw; exact absurd rfl hw0
    have H := walk_leaf hC hNdN hK1 t ht ⟨hW'.1, hW'.2.2.2.2.1⟩
    obtain ⟨v, hv, hwk⟩ := H htr
    exact ⟨by simp [hv], bq_of_ret ⟨v, hv, hwk⟩⟩
  · have hneg : ∀ (t : State σ) (k : Nat) (K' : BitVec 64),
        t.locals.lookup (nm "k") = some (.val (.word K')) →
        ev t (.cmp .equal (lv (nm "k")) (cw k)) = some (.val (.word 0)) → K' ≠ BitVec.ofNat 64 k := by
      intro t k K' hk hc
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_lw hk] at hx
      rw [ev_cw] at hy
      cases hx; cases hy
      exact equal_false hxy
    have hpos : ∀ (t : State σ) (k : Nat) (K' : BitVec 64),
        t.locals.lookup (nm "k") = some (.val (.word K')) →
        (∃ w, ev t (.cmp .equal (lv (nm "k")) (cw k)) = some (.val (.word w)) ∧ w ≠ 0) →
        K' = BitVec.ofNat 64 k := by
      intro t k K' hk ⟨w, hw, hw0⟩
      rw [ev_cmp (ev_lw hk) (ev_cw _ k)] at hw
      by_cases h : wordCmpHOL .equal K' (BitVec.ofNat 64 k)
      · simpa [wordCmpHOL] using h
      · rw [if_neg h] at hw
        cases hw
        exact absurd rfl hw0
    refine hoare_ite ?_ ?_
    · intro t ht ⟨⟨⟨hW2, hk2, hK0'⟩, hc1⟩, hex⟩ htr
      have hK2 : K = BitVec.ofNat 64 2 := hpos t 2 K hk2 hex
      exact walk_ext hC hle (hcl2 hK2).2 t ht hW2 htr
    · intro t ht ⟨⟨⟨hW2, hk2, hK0'⟩, hc1⟩, hc2⟩ htr
      have hK1 := hneg t 1 K hk2 hc1
      have hK2 := hneg t 2 K hk2 hc2
      exact walk_branch hC hle hNdN hK0' hK1 hK2 (hclb hK0' hK1 hK2).2 hNib t ht hW2 htr


theorem walk_main (hC : X.code.lookup = guestCode) (hNS : NullSafe X) {Nd : BitVec 64 → Prop}
    {s0 : State σ} {N NB NL : BitVec 64}
    (hn : s0.locals.lookup (nm "node") = some (.val (.word N)))
    (hnb : s0.locals.lookup (nm "nibs") = some (.val (.word NB)))
    (hnl : s0.locals.lookup (nm "nlen") = some (.val (.word NL)))
    (hNd : NullOrNd Nd N) (hCl : NdClosed s0.memory Nd)
    (hNib : ∀ j, j < NL.toNat → byteOf s0.memory s0.be (NB + BitVec.ofNat 64 j) < 16) :
    Hoare σ X (fun s => s = s0) twBody
      (fun r t => ∀ v, r = some (.returned v) → WOK Nd s0.memory v) := by
  unfold twBody
  refine hoare_decL (fun _ _ _ h => h) fun s1 hs1 hP v hv hsh => ?_
  subst s1
  rw [ev_cw] at hv
  cases hv
  refine hoare_seq (R := fun r t => (r = none ∧ WI Nd s0.memory s0.be NB NL t) ∨
      ∃ v, r = some (.returned v) ∧ WOK Nd s0.memory v) ?_ (fun r t _ hr _ h => ?_) ?_
  · refine hoare_pre (P := WI Nd s0.memory s0.be NB NL) ?_ (fun t _ ht => ?_)
    · refine hoare_while (I := WI Nd s0.memory s0.be NB NL) (Q := fun r t => (r = none ∧ WI Nd s0.memory s0.be NB NL t) ∨
          ∃ v, r = some (.returned v) ∧ WOK Nd s0.memory v) (fun s h => h) ?_ (fun s _ hI _ => Or.inl ⟨rfl, hI⟩)
      refine hoare_post (walk_body hC hNS hCl hNib) ?_
      intro r t _ _ ⟨a, b, c, d⟩
      exact ⟨a, fun h => absurd h c, fun h => absurd h d,
        fun v hv => Or.inr ⟨v, hv, b v hv⟩⟩
    · subst ht
      refine ⟨N, BitVec.ofNat 64 0, ⟨?_, ?_, ?_, ?_, rfl, rfl⟩, by simp, hNd⟩
      · rw [lk_set_ne _ _ (by decide)]; exact hn
      · rw [lk_set_ne _ _ (by decide)]; exact hnb
      · rw [lk_set_ne _ _ (by decide)]; exact hnl
      · exact lk_set_self _ _ _
  · rcases h with ⟨h, -⟩ | ⟨v, hv, hw⟩
    · exact absurd h hr
    · intro v' hv'
      rw [hv] at hv'
      cases hv'
      exact hw
  · refine hoare_return fun t _ _ v' hv' => fun w hw => ?_
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
    subst hw
    obtain ⟨v1, v2, v3, rfl, h1, h2, h3⟩ := ev_ret3 hv'
    rw [ev_cw_inv h1, ev_cw_inv h2, ev_cw_inv h3]
    exact wok_zero Nd _


/-- **`trie_walk`'s return fact.** -/
theorem walk_spec (hC : X.code.lookup = guestCode) (hNS : NullSafe X) :
    FunSpec σ X (nm "trie_walk") (fun vs s r t => ∀ v, r = .returned v →
      ∀ (Nd : BitVec 64 → Prop) (N NB NL : BitVec 64),
        vs = [.val (.word N), .val (.word NB), .val (.word NL)] → NullOrNd Nd N →
        NdClosed s.memory Nd → (∀ j, j < NL.toNat → byteOf s.memory s.be (NB + BitVec.ofNat 64 j) < 16) →
        WOK Nd s.memory v) := by
  refine funSpec_of_hoare (R := fun vs s v t => ∀ (Nd : BitVec 64 → Prop) (N NB NL : BitVec 64),
        vs = [.val (.word N), .val (.word NB), .val (.word NL)] → NullOrNd Nd N →
        NdClosed s.memory Nd → (∀ j, j < NL.toNat → byteOf s.memory s.be (NB + BitVec.ofNat 64 j) < 16) →
        WOK Nd s.memory v) fun vs body callee rs hl s0 hs0 hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, C, rfl, hsa, hsb, hsc, hlA, hlB, hlC⟩ :=
    lookupCode_three code_trie_walk (by decide) (by decide) (by decide) hl
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hsa
  obtain ⟨B, rfl⟩ := val_of_shapeEq_one hsb
  obtain ⟨C, rfl⟩ := val_of_shapeEq_one hsc
  intro s hs hP htr v hv Nd N NB NL hvs hNd hCl hNib
  subst hP
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  exact walk_main hC hNS (by rw [hloc]; exact hlA) (by rw [hloc]; exact hlB) (by rw [hloc]; exact hlC)
    hNd hCl hNib s hs rfl htr v hv

end InitECandidate.Solver.MemSafe.Loc

#print axioms InitECandidate.Solver.MemSafe.Loc.walk_spec
