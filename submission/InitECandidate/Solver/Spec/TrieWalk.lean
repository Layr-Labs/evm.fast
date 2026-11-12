import InitECandidate.Solver.Spec.Memeq
import InitECandidate.Solver.Spec.HoareG
import InitECandidate.Solver.Spec.RlpValidate
import InitECandidate.Solver.SourceCost.LoopExtra.WalkLoop
import Mathlib.Tactic.Ring

/-!
# The tick bound of `trie_walk`

```
fun {1,1,1} trie_walk(1 node, 1 nibs, 1 nlen) {
  var pos = 0;
  while node != 0 {
    var k = lds (node + 0);
    if k == 0 { mpt_fail(2); }                                     -- hashed: raises
    if k == 1 { ... return ...; }                                   -- leaf: returns
    if k == 2 { var sl = lds (node + 40); if sl >+ nlen - pos { return <0,0,0>; }
      var eq2 = memeq(lds (node + 32), nibs + pos, sl); if eq2 == 0 { return <0,0,0>; }
      pos = pos + sl; node = lds (node + 48); }                     -- extension
    else { if pos == nlen { ... return ...; }
      node = lds (node + 32 + ld8 (nibs + pos) * 8); pos = pos + 1; } }   -- branch
  return <0,0,0>; }
```

The loop writes no memory (`memeq` writes none). A completed iteration either advances
`pos` from a domain hit at `nibs + pos` (a branch step reads `ld8 (nibs + pos)`; an
extension step with `sl ≥ 1` calls `memeq`, which reads `nibs + pos` before returning,
`funRet_memeq`), or is a *zero-length extension step*: the node `v` has
`M[v] = 2, M[v + 40] = 0` (`zQ`), `memeq(…, 0)` returns `1`, `pos` is unchanged and
`node` becomes `zG v = M[v + 48]`.

Measure: `cnt(nibs + pos, nlen - pos) · (R + 1) + runLen`, where `runLen ≤ R = L + 1` is
the number of consecutive `zQ` points of the `zG`-orbit of `node` (`runLenG`). `zQ` points
are domain addresses, so a full run of `L + 1` such points repeats a point and the walk
is periodic: a state with a full run loops forever (`tw_doom`, via the `HoareG` logic,
`memeq` being escape-free) and is excluded by `cost_while_doomed`. Hence at most
`(L + 9) (L + 2)` iterations (`trie_walk_cost`).
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost

variable {σ : Type} {X : Ctx 64}

/-! ## Zero-length extension nodes and the orbit pigeonhole -/

open Classical in
/-- `v` is a nonzero domain address holding an extension node with an empty key segment. -/
noncomputable def zQ (D : BitVec 64 → Prop) (M : BitVec 64 → HolWordLab 64) (v : BitVec 64) :
    Bool :=
  decide (v ≠ 0 ∧ D v ∧ M v = .word (BitVec.ofNat 64 2) ∧
    M (v + BitVec.ofNat 64 40) = .word (BitVec.ofNat 64 0))

/-- The extension child. -/
def zG (M : BitVec 64 → HolWordLab 64) (v : BitVec 64) : BitVec 64 :=
  match M (v + BitVec.ofNat 64 48) with
  | .word w => w

theorem zQ_dom {D : BitVec 64 → Prop} {M : BitVec 64 → HolWordLab 64} {v : BitVec 64}
    (h : zQ D M v = true) : v ≠ 0 ∧ D v := by
  classical
  simp only [zQ, decide_eq_true_eq] at h
  exact ⟨h.1, h.2.1⟩

/-- A full run of `L + 1` orbit points in a domain of `L` addresses repeats a point, so it
stays full. -/
theorem runLen_full_dom {Q : BitVec 64 → Bool} {G : BitVec 64 → BitVec 64} {lo : BitVec 64}
    {L : Nat} (hQ : ∀ v, Q v = true → (v - lo).toNat < L) (v : BitVec 64)
    (h : runLenG Q G (L + 1) v = L + 1) : runLenG Q G (L + 1) (G v) = L + 1 := by
  have hall := (runLenG_eq_iff Q G (L + 1) v).mp h
  rw [runLenG_eq_iff]
  intro m hm
  rw [iterG_succ']
  by_cases hlast : m + 1 < L + 1
  · exact hall (m + 1) hlast
  · have hm' : m + 1 = L + 1 := by omega
    rw [hm']
    have hL : 1 ≤ L := by
      have := hQ _ (hall 0 (by omega))
      omega
    obtain ⟨a, b, hab, hb, he⟩ := pigeon_nat L
      (fun m => if m ≤ L then (iterG G m v - lo).toNat else 0)
      (fun m => by
        split
        · exact hQ _ (hall m (by omega))
        · omega)
    simp only [if_pos (show a ≤ L by omega), if_pos hb] at he
    have he' : iterG G a v = iterG G b v := by
      have := BitVec.eq_of_toNat_eq he
      have := congrArg (· + lo) this
      simpa using this
    have hK : L + 1 = (L + 1 - b) + b := by omega
    have e1 : iterG G ((L + 1 - b) + b) v = iterG G ((L + 1 - b) + a) v := by
      rw [iterG_add, iterG_add, he']
    rw [hK, e1]
    exact hall _ (by omega)

/-! ## Callee facts -/

theorem funRet_mpt_fail (hC : X.code.lookup = guestCode) :
    FunRet σ X (nm "mpt_fail") (fun _ _ => False) := by
  apply funRet_never_of
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_one code_mpt_fail hl
  exact hoare_seq (R := fun _ _ => False) hoare_raise (fun _ _ _ _ _ h => h.elim)
    (fun _ _ h => h.elim)

theorem memeq_escFreeB : escFreeB (fun _ => false) memeqBody = true := by decide

/-- `memeq` raises nothing. -/
theorem calleeEscFree_memeq (hC : X.code.lookup = guestCode) :
    CalleeEscFree σ X (nm "memeq") := by
  intro vs body callee rs hl
  have hl' := hl
  rw [hC] at hl'
  obtain ⟨rfl, -⟩ := lookupCode_three code_memeq (by decide) (by decide) (by decide) hl'
  exact escFreeB_sound (fun f hf => by simp at hf) _ memeq_escFreeB

theorem funSpec_memeq (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "memeq") (fun vs s r t =>
      (∀ v, r = .returned v → MemeqRet X.memaddrs vs v) ∧ t.memory = s.memory) :=
  (funSpec_of_funRet (funRet_memeq hC)).and (funSpec_memeq_mw hC)

/-! ## Measure -/

/-- Domain hits among the remaining nibble addresses `nibs + pos, …, nibs + nlen - 1`. -/
noncomputable def twA (D : BitVec 64 → Prop) (s : PanSemStateFiniteExact 64 σ) : Nat :=
  cnt D (wl s (nm "nibs") + wl s (nm "pos")) ((wl s (nm "nlen") - wl s (nm "pos")).toNat)

noncomputable def twR (D : BitVec 64 → Prop) (R : Nat) (s : PanSemStateFiniteExact 64 σ) : Nat :=
  runLenG (zQ D s.memory) (zG s.memory) R (wl s (nm "node"))

noncomputable def twMu (D : BitVec 64 → Prop) (R : Nat) (s : PanSemStateFiniteExact 64 σ) : Nat :=
  twA D s * (R + 1) + twR D R s

/-- A zero-length extension step from `s0` to `t`. -/
def ZStep (D : BitVec 64 → Prop) (s0 t : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ V, s0.locals.lookup (nm "node") = some (.val (.word V)) ∧ zQ D s0.memory V = true ∧
    t.locals.lookup (nm "node") = some (.val (.word (zG s0.memory V))) ∧
    t.memory = s0.memory ∧ twA D t = twA D s0

def TwPost (D : BitVec 64 → Prop) (s0 : PanSemStateFiniteExact 64 σ)
    (r : Option (PanSemResultExact 64)) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  r = none ∨ r = some .continue → twA D t < twA D s0 ∨ ZStep D s0 t

theorem twA_congr {D : BitVec 64 → Prop} {t t' : PanSemStateFiniteExact 64 σ}
    (h1 : t'.locals.lookup (nm "nibs") = t.locals.lookup (nm "nibs"))
    (h2 : t'.locals.lookup (nm "pos") = t.locals.lookup (nm "pos"))
    (h3 : t'.locals.lookup (nm "nlen") = t.locals.lookup (nm "nlen")) : twA D t' = twA D t := by
  unfold twA wl
  rw [h1, h2, h3]

theorem twPost_restore {D : BitVec 64 → Prop} {s0 t : PanSemStateFiniteExact 64 σ}
    {r : Option (PanSemResultExact 64)} {n : MlS} (o : Option (ValueHOL 64))
    (h1 : n ≠ nm "nibs") (h2 : n ≠ nm "pos") (h3 : n ≠ nm "nlen") (h4 : n ≠ nm "node")
    (h : TwPost D s0 r t) : TwPost D s0 r { t with locals := t.locals.resVarEq (n, o) } := by
  intro hr
  have hA : twA D { t with locals := t.locals.resVarEq (n, o) } = twA D t :=
    twA_congr (lookup_resVarEq_ne _ _ h1) (lookup_resVarEq_ne _ _ h2) (lookup_resVarEq_ne _ _ h3)
  rcases h hr with h | ⟨V, hV, hQ, hn, hm, hA'⟩
  · left; rw [hA]; exact h
  · right
    refine ⟨V, hV, hQ, ?_, hm, by rw [hA]; exact hA'⟩
    show (t.locals.resVarEq _).lookup _ = _
    rw [lookup_resVarEq_ne _ _ h4]
    exact hn

/-! ## Branches that always return -/

theorem hoare_seq_return {P : PanSemStateFiniteExact 64 σ → Prop} {a : ProgHOL 64} {e : ExpHOL 64}
    (ha : Hoare σ X P a (fun r _ => r ≠ some .continue)) :
    Hoare σ X P (.seq a (.return e)) (fun r _ => r ≠ none ∧ r ≠ some .continue) :=
  hoare_seq ha (fun _ _ _ hr _ h => ⟨hr, h⟩)
    (hoare_return fun _ _ _ _ _ => ⟨by simp, by simp⟩)

theorem hoare_ite_ret_skip {P : PanSemStateFiniteExact 64 σ → Prop} {c e : ExpHOL 64} :
    Hoare σ X P (.ite c (.return e) .skip) (fun r _ => r ≠ some .continue) :=
  hoare_ite (hoare_return fun _ _ _ _ _ => by simp) (hoare_skip fun _ _ _ => by simp)

theorem twLeaf_ret {P : PanSemStateFiniteExact 64 σ → Prop} :
    Hoare σ X P twLeaf (fun r _ => r ≠ none ∧ r ≠ some .continue) := by
  unfold twLeaf
  refine hoare_dec fun _ _ _ _ _ _ => ?_
  refine hoare_seq_return ?_
  refine hoare_ite ?_ (hoare_skip fun _ _ _ => by simp)
  exact hoare_decCallS (funSpec_true _) fun _ _ _ _ _ _ _ _ _ _ _ =>
    hoare_ite_ret_skip

theorem twBranchRet_ret {P : PanSemStateFiniteExact 64 σ → Prop} :
    Hoare σ X P (.dec (nm "vl") .one (ldn 168)
        (.seq (.ite (.cmp .equal (lv (nm "vl")) (cw 0)) ret000 .skip)
          (.return (.rstruct [cw 1, ldn 160, lv (nm "vl")]))))
      (fun r _ => r ≠ none ∧ r ≠ some .continue) :=
  hoare_dec fun _ _ _ _ _ _ => hoare_seq_return hoare_ite_ret_skip

/-- Normal completion is impossible, so any `TwPost` holds. -/
theorem twPost_of_ret {D : BitVec 64 → Prop} {s0 t : PanSemStateFiniteExact 64 σ}
    {r : Option (PanSemResultExact 64)} (h : r ≠ none ∧ r ≠ some .continue) :
    r ≠ none ∧ TwPost D s0 r t :=
  ⟨h.1, fun hr => by rcases hr with hr | hr <;> [exact absurd hr h.1; exact absurd hr h.2]⟩

/-! ## Inversions and arithmetic -/

theorem ev_op_evs {s : PanSemStateFiniteExact 64 σ} {o : BinOp} {es : List (ExpHOL 64)}
    {v : ValueHOL 64} (h : ev s (.op o es) = some v) : ∃ vs, evs s es = some vs := by
  simp only [ev, evs, evalHOLExact] at h ⊢
  split at h
  · rename_i vs hvs; exact ⟨vs, hvs⟩
  · simp at h

theorem ev_panop_evs {s : PanSemStateFiniteExact 64 σ} {o : PanOp} {es : List (ExpHOL 64)}
    {v : ValueHOL 64} (h : ev s (.panop o es) = some v) : ∃ vs, evs s es = some vs := by
  simp only [ev, evs, evalHOLExact] at h ⊢
  split at h
  · rename_i vs hvs; exact ⟨vs, hvs⟩
  · simp at h

/-- The branch step's child load read `ld8 (nibs + pos)`. -/
theorem ev_branch_hit {s : PanSemStateFiniteExact 64 σ} {v : ValueHOL 64}
    (h : ev s (.load .one (.op .add [lv (nm "node"), cw 32,
      .panop .mul [.loadByte (.op .add [lv (nm "nibs"), lv (nm "pos")]), cw 8]])) = some v) :
    ∃ w, ev s (.op .add [lv (nm "nibs"), lv (nm "pos")]) = some (.val (.word w)) ∧
      Hit s.memaddrs w := by
  obtain ⟨a, ha, -, -⟩ := ev_load_one h
  obtain ⟨vs, hvs⟩ := ev_op_evs ha
  obtain ⟨_, vs1, rfl, -, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨_, vs2, rfl, -, hvs2⟩ := evs_cons_inv hvs1
  obtain ⟨_, _, rfl, hz, -⟩ := evs_cons_inv hvs2
  obtain ⟨ws, hws⟩ := ev_panop_evs hz
  obtain ⟨_, _, rfl, hb, -⟩ := evs_cons_inv hws
  exact ev_loadByte_hit hb

theorem cnt_adv {D : BitVec 64 → Prop} {Nb Pos Nl d : BitVec 64} (hhit : Hit D (Nb + Pos))
    (h1 : d ≠ 0) (hle : d.toNat ≤ (Nl - Pos).toNat) :
    cnt D (Nb + (Pos + d)) ((Nl - (Pos + d)).toNat) < cnt D (Nb + Pos) ((Nl - Pos).toNat) := by
  have hd1 : 1 ≤ d.toNat := by
    have : d.toNat ≠ 0 := fun h => h1 (BitVec.eq_of_toNat_eq (by simpa using h))
    omega
  have := cnt_step (D := D) (base := Nb + Pos) hhit hd1 hle
  rw [ofNat_toNat'] at this
  have e : (Nl - (Pos + d)).toNat = (Nl - Pos).toNat - d.toNat := by
    rw [show Nl - (Pos + d) = (Nl - Pos) - d by bv_omega,
      BitVec.toNat_sub_of_le (by rw [BitVec.le_def]; exact hle)]
  rw [← BitVec.add_assoc, e]
  omega

theorem wl_eq {s t : PanSemStateFiniteExact 64 σ} {x : MlS}
    (h : t.locals.lookup x = s.locals.lookup x) : wl t x = wl s x := by
  unfold wl; rw [h]

/-! ## One iteration (tracked results) -/

/-- The frame between the loop head `s` and a body state `u`. -/
def TwAgree (s u : PanSemStateFiniteExact 64 σ) : Prop :=
  u.memory = s.memory ∧ u.locals.lookup (nm "node") = s.locals.lookup (nm "node") ∧
  u.locals.lookup (nm "nibs") = s.locals.lookup (nm "nibs") ∧
  u.locals.lookup (nm "nlen") = s.locals.lookup (nm "nlen") ∧
  u.locals.lookup (nm "pos") = s.locals.lookup (nm "pos")

theorem twAgree_set {s u : PanSemStateFiniteExact 64 σ} {n : MlS} (v : ValueHOL 64)
    (h1 : n ≠ nm "node") (h2 : n ≠ nm "nibs") (h3 : n ≠ nm "nlen") (h4 : n ≠ nm "pos")
    (h : TwAgree s u) : TwAgree s (setVarHOLFinite n v u) :=
  ⟨h.1, by rw [lk_set_ne _ _ h1]; exact h.2.1, by rw [lk_set_ne _ _ h2]; exact h.2.2.1,
    by rw [lk_set_ne _ _ h3]; exact h.2.2.2.1, by rw [lk_set_ne _ _ h4]; exact h.2.2.2.2⟩

theorem twAgree_call {s u st : PanSemStateFiniteExact 64 σ} {n : MlS} (v : ValueHOL 64)
    (hm : st.memory = u.memory)
    (h1 : n ≠ nm "node") (h2 : n ≠ nm "nibs") (h3 : n ≠ nm "nlen") (h4 : n ≠ nm "pos")
    (h : TwAgree s u) : TwAgree s (setVarHOLFinite n v { st with locals := u.locals }) :=
  twAgree_set (u := { st with locals := u.locals }) v h1 h2 h3 h4
    ⟨hm.trans h.1, h.2.1, h.2.2.1, h.2.2.2.1, h.2.2.2.2⟩

/-- The extension step. -/
theorem tw_ext (hC : X.code.lookup = guestCode) (s : PanSemStateFiniteExact 64 σ) (V : BitVec 64)
    (hV : s.locals.lookup (nm "node") = some (.val (.word V))) (hV0 : V ≠ 0)
    (hD : X.memaddrs V) (h2 : s.memory V = .word (BitVec.ofNat 64 2)) :
    Hoare σ X (TwAgree s) twExt (TwPost X.memaddrs s) := by
  unfold twExt
  refine hoare_dec fun u _ hA v hv _ => ?_
  rw [ev_ld_inv (hA.2.1.trans hV) hv]
  rw [hA.1]
  cases hSL : s.memory (V + BitVec.ofNat 64 40) with
  | word SL =>
  refine hoare_post (Q := TwPost X.memaddrs s) ?_
    (fun r t _ _ h => twPost_restore _ (by decide) (by decide) (by decide) (by decide) h)
  refine hoare_pre (P := fun u => TwAgree s u ∧
      u.locals.lookup (nm "sl") = some (.val (.word SL))) ?_
    (fun w _ hw => by subst hw; exact ⟨twAgree_set _ (by decide) (by decide) (by decide)
      (by decide) hA, lk_set_self _ _ _⟩)
  refine hoare_ite_skip_seq (hoare_return fun _ _ _ _ _ => twPost_of_ret ⟨by simp, by simp⟩) ?_
  refine hoare_decCallS (funSpec_memeq hC) ?_
  intro u _ ⟨⟨hA, hsl⟩, hc⟩ vs hvs callee w st hR _ hsh
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
  rw [ev_lw hsl] at hy
  cases hy
  obtain ⟨Nl, Pos, hNl, hPos, rfl⟩ := ev_sub2_inv hx
  have hle := lower_false hxy
  obtain ⟨va, vs1, rfl, -, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨vb, vs2, rfl, hvb, hvs2⟩ := evs_cons_inv hvs1
  obtain ⟨vc, vs3, rfl, hvc, hvs3⟩ := evs_cons_inv hvs2
  obtain ⟨hret, hmem⟩ := hR
  obtain ⟨A, B, N, heq, hphi⟩ := hret w rfl
  simp only [List.cons.injEq] at heq
  obtain ⟨-, rfl, rfl, -⟩ := heq
  rw [ev_lw hsl] at hvc
  cases hvc
  obtain ⟨Nb, Pos', hNb, hPos', hB⟩ := ev_add2_inv hvb
  rw [hPos] at hPos'
  cases hPos'
  obtain ⟨W, rfl⟩ := val_of_shapeEq_one' hsh
  refine hoare_post (Q := TwPost X.memaddrs s) ?_
    (fun r t _ _ h => twPost_restore _ (by decide) (by decide) (by decide) (by decide) h)
  refine hoare_pre (P := fun t => TwAgree s t ∧
      t.locals.lookup (nm "sl") = some (.val (.word SL)) ∧
      t.locals.lookup (nm "eq2") = some (.val (.word W))) ?_
    (fun t _ ht => by
      subst ht
      refine ⟨twAgree_call _ hmem (by decide) (by decide) (by decide) (by decide) hA, ?_,
        lk_set_self _ _ _⟩
      rw [lk_set_ne _ _ (by decide)]; exact hsl)
  refine hoare_ite_skip_seq (hoare_return fun _ _ _ _ _ => twPost_of_ret ⟨by simp, by simp⟩) ?_
  have hNb' : s.locals.lookup (nm "nibs") = some (.val (.word Nb)) := hA.2.2.1 ▸ hNb
  have hNl' : s.locals.lookup (nm "nlen") = some (.val (.word Nl)) := hA.2.2.2.1 ▸ hNl
  have hPos'' : s.locals.lookup (nm "pos") = some (.val (.word Pos)) := hA.2.2.2.2 ▸ hPos
  refine hoare_seq (R := fun r t => r = none ∧ TwAgree s { t with locals := u.locals } ∧
      t.memory = s.memory ∧ t.locals.lookup (nm "pos") = some (.val (.word (Pos + SL))) ∧
      t.locals.lookup (nm "nibs") = some (.val (.word Nb)) ∧
      t.locals.lookup (nm "nlen") = some (.val (.word Nl)) ∧
      t.locals.lookup (nm "node") = some (.val (.word V))) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun t _ ⟨⟨hA', hsl', _⟩, _⟩ z hz _ => ?_
    rw [ev_add2 (ev_lw (hA'.2.2.2.2.trans hPos'')) (ev_lw hsl')] at hz
    cases hz
    refine ⟨rfl, ⟨hA'.1.trans hA.1.symm |>.trans hA.1, hA.2.1, hA.2.2.1, hA.2.2.2.1, hA.2.2.2.2⟩,
      hA'.1, lk_set_self _ _ _, ?_, ?_, ?_⟩
    · rw [lk_set_ne _ _ (by decide)]; exact hA'.2.2.1.trans hNb'
    · rw [lk_set_ne _ _ (by decide)]; exact hA'.2.2.2.1.trans hNl'
    · rw [lk_set_ne _ _ (by decide)]; exact hA'.2.1.trans hV
  · refine hoare_assign fun t _ ⟨_, _, hm, hp, hnb, hnl, hn⟩ z hz _ => ?_
    rw [ev_ld_inv hn hz, hm]
    cases hG : s.memory (V + BitVec.ofNat 64 48) with
    | word G =>
    intro _
    have hA2 : twA X.memaddrs (setVarHOLFinite (nm "node") (.val (.word G)) t) =
        cnt X.memaddrs (Nb + (Pos + SL)) ((Nl - (Pos + SL)).toNat) := by
      unfold twA
      rw [wl_of (by rw [lk_set_ne _ _ (by decide)]; exact hnb),
        wl_of (by rw [lk_set_ne _ _ (by decide)]; exact hp),
        wl_of (by rw [lk_set_ne _ _ (by decide)]; exact hnl)]
    have hA0 : twA X.memaddrs s = cnt X.memaddrs (Nb + Pos) ((Nl - Pos).toNat) := by
      unfold twA
      rw [wl_of hNb', wl_of hPos'', wl_of hNl']
    by_cases hSL0 : SL = 0
    · subst hSL0
      right
      refine ⟨V, hV, ?_, ?_, hm, ?_⟩
      · classical
        simp only [zQ, decide_eq_true_eq]
        exact ⟨hV0, hD, h2, hSL⟩
      · rw [lk_set_self]
        unfold zG
        rw [hG]
      · rw [hA2, hA0]; simp
    · left
      rw [hA2, hA0]
      have hhit : Hit X.memaddrs (Nb + Pos) := hB ▸ hphi.2 hSL0
      exact cnt_adv hhit hSL0 hle

/-- The branch-node step. -/
theorem tw_branch (s : PanSemStateFiniteExact 64 σ) :
    Hoare σ X (TwAgree s) twBranch (TwPost X.memaddrs s) := by
  unfold twBranch
  refine hoare_ite_skip_seq (hoare_post twBranchRet_ret (fun _ _ _ _ h => twPost_of_ret h)) ?_
  refine hoare_seq (R := fun r t => r = none ∧ t.memory = s.memory ∧
      ∃ Pos Nl Nb : BitVec 64, t.locals.lookup (nm "pos") = some (.val (.word Pos)) ∧
        t.locals.lookup (nm "nibs") = some (.val (.word Nb)) ∧
        t.locals.lookup (nm "nlen") = some (.val (.word Nl)) ∧
        s.locals.lookup (nm "pos") = some (.val (.word Pos)) ∧
        s.locals.lookup (nm "nibs") = some (.val (.word Nb)) ∧
        s.locals.lookup (nm "nlen") = some (.val (.word Nl)) ∧
        Pos ≠ Nl ∧ Hit X.memaddrs (Nb + Pos)) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun u hu ⟨hA, hc⟩ v hv _ => ?_
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    obtain ⟨w, hw, hh⟩ := ev_branch_hit hv
    obtain ⟨Nb, Pos, hNb, hPos, rfl⟩ := ev_add2_inv hw
    have hxP : Pos = x := by rw [hPos] at hx; simpa using hx
    subst hxP
    have hne := equal_false hxy
    rw [ev_lv] at hNb hPos hy
    refine ⟨rfl, hA.1, Pos, y, Nb, ?_, ?_, ?_, hA.2.2.2.2 ▸ hPos, hA.2.2.1 ▸ hNb,
      hA.2.2.2.1 ▸ hy, hne, by rw [← hu.2.1]; exact hh⟩
    · rw [lk_set_ne _ _ (by decide)]; exact hPos
    · rw [lk_set_ne _ _ (by decide)]; exact hNb
    · rw [lk_set_ne _ _ (by decide)]; exact hy
  · refine hoare_assign fun t _ ⟨_, _, Pos, Nl, Nb, hp, hnb, hnl, hp0, hnb0, hnl0, hne, hh⟩ z hz _ => ?_
    rw [ev_add2 (ev_lw hp) (ev_cw _ 1)] at hz
    cases hz
    intro _
    left
    have hA2 : twA X.memaddrs (setVarHOLFinite (nm "pos") (.val (.word (Pos + BitVec.ofNat 64 1))) t)
        = cnt X.memaddrs (Nb + (Pos + BitVec.ofNat 64 1))
          ((Nl - (Pos + BitVec.ofNat 64 1)).toNat) := by
      unfold twA
      rw [wl_of (by rw [lk_set_ne _ _ (by decide)]; exact hnb), wl_of (lk_set_self _ _ _),
        wl_of (by rw [lk_set_ne _ _ (by decide)]; exact hnl)]
    have hA0 : twA X.memaddrs s = cnt X.memaddrs (Nb + Pos) ((Nl - Pos).toNat) := by
      unfold twA
      rw [wl_of hnb0, wl_of hp0, wl_of hnl0]
    rw [hA2, hA0]
    refine cnt_adv hh (by decide) ?_
    have : Nl - Pos ≠ 0 := fun h => hne (by bv_omega)
    have : (Nl - Pos).toNat ≠ 0 := fun h => this (BitVec.eq_of_toNat_eq (by simpa using h))
    simp only [BitVec.toNat_ofNat]
    omega

/-- **One iteration**: a completed iteration loses a nibble-address hit or is a
zero-length extension step. -/
theorem tw_step (hC : X.code.lookup = guestCode) (s0 : PanSemStateFiniteExact 64 σ) :
    Hoare σ X (fun s => s = s0 ∧ CondTrue s twCond) twLoopBody (TwPost X.memaddrs s0) := by
  unfold twLoopBody
  refine hoare_dec fun s hs ⟨hs0, ⟨w, hw, hw0⟩⟩ v hv _ => ?_
  subst hs0
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_cw] at hy
  cases hy
  rw [ev_lv] at hx
  have hV0 := notEqual_true hxy
  obtain ⟨a, ha, hdom, -⟩ := ev_load_one hv
  rw [ev_add_cw hx 0, BitVec.add_zero] at ha
  cases ha
  rw [ev_ld_inv hx hv, BitVec.add_zero]
  cases hK : s.memory x with
  | word K =>
  refine hoare_post (Q := TwPost X.memaddrs s) ?_
    (fun r t _ _ h => twPost_restore _ (by decide) (by decide) (by decide) (by decide) h)
  refine hoare_pre (P := fun u => TwAgree s u ∧ u.locals.lookup (nm "k") = some (.val (.word K)))
    ?_ (fun u _ hu => by
      subst hu
      exact ⟨twAgree_set _ (by decide) (by decide) (by decide) (by decide)
        ⟨rfl, rfl, rfl, rfl, rfl⟩, lk_set_self _ _ _⟩)
  refine hoare_guard_seq (funRet_mpt_fail hC) ?_
  refine hoare_ite_skip_seq (hoare_post twLeaf_ret (fun _ _ _ _ h => twPost_of_ret h)) ?_
  have hcv : ∀ u : PanSemStateFiniteExact 64 σ,
      u.locals.lookup (nm "k") = some (.val (.word K)) →
      ev u (.cmp .equal (lv (nm "k")) (cw 2)) =
        some (.val (.word (if wordCmpHOL .equal K (BitVec.ofNat 64 2) then 1 else 0))) :=
    fun u hk => ev_cmp (ev_lw hk) (ev_cw _ 2)
  by_cases hK2 : K = BitVec.ofNat 64 2
  · subst hK2
    refine hoare_ite ?_ ?_
    · exact hoare_pre (tw_ext hC s x hx hV0 (by rw [← hs.2.1]; exact hdom) hK)
        (fun u _ h => h.1.1.1.1)
    · intro u _ ⟨⟨⟨⟨_, hk⟩, _⟩, _⟩, hc⟩ _
      rw [hcv u hk] at hc
      simp [wordCmpHOL] at hc
  · refine hoare_ite ?_ ?_
    · intro u _ ⟨⟨⟨⟨_, hk⟩, _⟩, _⟩, w, hc, hw0⟩ _
      rw [hcv u hk] at hc
      simp [wordCmpHOL, hK2] at hc
      exact absurd hc.symm hw0
    · exact hoare_pre (tw_branch s) (fun u _ h => h.1.1.1.1)

/-! ## Zero-length extension steps only complete normally -/

/-- The doomed post: normal completion at the extension child, memory unchanged. -/
def DPost (M : BitVec 64 → HolWordLab 64) (V : BitVec 64) (r : Option (PanSemResultExact 64))
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  r = none ∧ t.memory = M ∧ t.locals.lookup (nm "node") = some (.val (.word (zG M V)))

theorem dPost_restore {M : BitVec 64 → HolWordLab 64} {V : BitVec 64}
    {r : Option (PanSemResultExact 64)} {t : PanSemStateFiniteExact 64 σ} {n : MlS}
    (o : Option (ValueHOL 64)) (hn : n ≠ nm "node") (h : DPost M V r t) :
    DPost M V r { t with locals := t.locals.resVarEq (n, o) } :=
  ⟨h.1, h.2.1, by show (t.locals.resVarEq _).lookup _ = _; rw [lookup_resVarEq_ne _ _ hn]; exact h.2.2⟩

theorem cond_eq_ne {u : PanSemStateFiniteExact 64 σ} {x : MlS} {K : BitVec 64} {j : Nat}
    (hk : u.locals.lookup x = some (.val (.word K))) (hne : K ≠ BitVec.ofNat 64 j) :
    ev u (.cmp .equal (lv x) (cw j)) = some (.val (.word 0)) := by
  rw [ev_cmp (ev_lw hk) (ev_cw _ j)]
  simp [wordCmpHOL, hne]

/-- From a `zQ` node, a good iteration is a zero-length extension step. -/
theorem tw_doom (hC : X.code.lookup = guestCode) (M : BitVec 64 → HolWordLab 64) (V : BitVec 64)
    (hQ : zQ X.memaddrs M V = true) :
    HoareG σ X (fun s => s.memory = M ∧ s.locals.lookup (nm "node") = some (.val (.word V)))
      twLoopBody (DPost M V) := by
  have hQ' := hQ
  classical
  simp only [zQ, decide_eq_true_eq] at hQ'
  obtain ⟨_, _, hM2, hM40⟩ := hQ'
  unfold twLoopBody
  refine hoareG_dec fun s _ ⟨hm, hn⟩ v hv _ => ?_
  rw [ev_ld_inv hn hv, BitVec.add_zero, hm, hM2]
  refine hoareG_conseq (Q := DPost M V) ?_ (fun _ _ h => h)
    (fun r t _ _ h => dPost_restore _ (by decide) h)
  refine hoareG_pre (P := fun u => u.memory = M ∧
      u.locals.lookup (nm "node") = some (.val (.word V)) ∧
      u.locals.lookup (nm "k") = some (.val (.word (BitVec.ofNat 64 2)))) ?_
    (fun u _ hu => by
      subst hu
      refine ⟨hm, ?_, lk_set_self _ _ _⟩
      rw [lk_set_ne _ _ (by decide)]; exact hn)
  -- `k` is neither `0` nor `1`
  have hskip : ∀ (j : Nat) (a : ProgHOL 64), BitVec.ofNat 64 2 ≠ BitVec.ofNat 64 j →
      HoareG σ X (fun u => u.memory = M ∧ u.locals.lookup (nm "node") = some (.val (.word V)) ∧
        u.locals.lookup (nm "k") = some (.val (.word (BitVec.ofNat 64 2)))) (.ite (.cmp .equal
        (lv (nm "k")) (cw j)) a .skip) (fun r u => r = none ∧ u.memory = M ∧
        u.locals.lookup (nm "node") = some (.val (.word V)) ∧
        u.locals.lookup (nm "k") = some (.val (.word (BitVec.ofNat 64 2)))) := by
    intro j a hj
    refine hoareG_ite (hoareG_false fun u _ ⟨⟨_, _, hk⟩, w, hw, hw0⟩ => ?_)
      (hoareG_skip fun u _ ⟨h, _⟩ => ⟨rfl, h⟩)
    rw [cond_eq_ne hk hj] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    exact hw0 hw.symm
  refine hoareG_seq (hskip 0 _ (by decide)) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoareG_pre ?_ (fun u _ h => h.2)
  refine hoareG_seq (hskip 1 _ (by decide)) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoareG_pre ?_ (fun u _ h => h.2)
  refine hoareG_ite ?_ (hoareG_false fun u _ ⟨⟨_, _, hk⟩, hc⟩ => ?_)
  rotate_left
  · rw [ev_cmp (ev_lw hk) (ev_cw _ 2)] at hc
    simp [wordCmpHOL] at hc
  refine hoareG_pre (P := fun u => u.memory = M ∧
      u.locals.lookup (nm "node") = some (.val (.word V))) ?_ (fun u _ h => ⟨h.1.1, h.1.2.1⟩)
  unfold twExt
  refine hoareG_dec fun s _ ⟨hm, hn⟩ v hv _ => ?_
  rw [ev_ld_inv hn hv, hm, hM40]
  refine hoareG_conseq (Q := DPost M V) ?_ (fun _ _ h => h)
    (fun r t _ _ h => dPost_restore _ (by decide) h)
  refine hoareG_pre (P := fun u => u.memory = M ∧
      u.locals.lookup (nm "node") = some (.val (.word V)) ∧
      u.locals.lookup (nm "sl") = some (.val (.word (BitVec.ofNat 64 0)))) ?_
    (fun u _ hu => by
      subst hu
      refine ⟨hm, ?_, lk_set_self _ _ _⟩
      rw [lk_set_ne _ _ (by decide)]; exact hn)
  refine hoareG_seq (R := fun r u => r = none ∧ u.memory = M ∧
      u.locals.lookup (nm "node") = some (.val (.word V)) ∧
      u.locals.lookup (nm "sl") = some (.val (.word (BitVec.ofNat 64 0))))
    (hoareG_ite (hoareG_false fun u _ ⟨⟨_, _, hsl⟩, w, hw, hw0⟩ => ?_)
      (hoareG_skip fun u _ ⟨h, _⟩ => ⟨rfl, h⟩))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · obtain ⟨x, y, _, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_lw hsl] at hy
    cases hy
    have := lower_true hxy
    simp at this
  refine hoareG_pre ?_ (fun u _ h => h.2)
  refine hoareG_decCallS (funSpec_memeq hC) (calleeEscFree_memeq hC) ?_
  intro u _ ⟨hm, hn, hsl⟩ vs hvs callee w st hR _ hsh
  obtain ⟨va, vs1, rfl, -, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨vb, vs2, rfl, -, hvs2⟩ := evs_cons_inv hvs1
  obtain ⟨vc, vs3, rfl, hvc, -⟩ := evs_cons_inv hvs2
  obtain ⟨hret, hmem⟩ := hR
  obtain ⟨A, B, N, heq, hphi⟩ := hret w rfl
  simp only [List.cons.injEq] at heq
  obtain ⟨-, -, rfl, -⟩ := heq
  rw [ev_lw hsl] at hvc
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hvc
  have hw1 := hphi.1 hvc.symm
  subst hw1
  refine hoareG_conseq (Q := DPost M V) ?_ (fun _ _ h => h)
    (fun r t _ _ h => dPost_restore _ (by decide) h)
  refine hoareG_pre (P := fun t => t.memory = M ∧
      t.locals.lookup (nm "node") = some (.val (.word V)) ∧
      t.locals.lookup (nm "eq2") = some (.val (.word (BitVec.ofNat 64 1)))) ?_
    (fun t _ ht => by
      subst ht
      refine ⟨hmem.trans hm, ?_, lk_set_self _ _ _⟩
      rw [lk_set_ne _ _ (by decide)]; exact hn)
  refine hoareG_seq (R := fun r t => r = none ∧ t.memory = M ∧
      t.locals.lookup (nm "node") = some (.val (.word V)))
    (hoareG_ite (hoareG_false fun t _ ⟨⟨_, _, he⟩, w, hw, hw0⟩ => ?_)
      (hoareG_skip fun t _ ⟨⟨h1, h2, _⟩, _⟩ => ⟨rfl, h1, h2⟩))
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · rw [cond_eq_ne he (by decide)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    exact hw0 hw.symm
  refine hoareG_seq (R := fun r t => r = none ∧ t.memory = M ∧
      t.locals.lookup (nm "node") = some (.val (.word V)))
    (hoareG_assign fun t _ ⟨_, hm', hn'⟩ _ _ _ => ⟨rfl, hm', by rw [lk_set_ne _ _ (by decide)]; exact hn'⟩)
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoareG_assign fun t _ ⟨_, hm', hn'⟩ z hz _ => ?_
  rw [ev_ld_inv hn' hz, hm']
  refine ⟨rfl, hm', ?_⟩
  rw [lk_set_self]
  unfold zG
  cases M (V + BitVec.ofNat 64 48)
  rfl

/-! ## Costs -/

theorem twLoopBody_cost {Bf Bm : Nat} (hf : CalleeCost σ X (nm "mpt_fail") Bf)
    (hm : CalleeCost σ X (nm "memeq") Bm) : Cost σ X twLoopBody (Bf + 2 * Bm + 3) := by
  unfold twLoopBody twLeaf twExt twBranch
  refine (cost_dec (cost_seq (cost_ite (cost_call (Bh := 0) hf (fun _ _ _ _ h => by simp at h))
    cost_skip) (cost_seq (cost_ite (cost_dec (cost_seq (cost_ite (cost_decCall hm
      (cost_ite (cost_return _) cost_skip)) cost_skip) (cost_return _))) cost_skip)
    (cost_ite (cost_dec (cost_seq (cost_ite (cost_return _) cost_skip) (cost_decCall hm
      (cost_seq (cost_ite (cost_return _) cost_skip)
        (cost_seq (cost_assign _ _ _) (cost_assign _ _ _))))))
      (cost_seq (cost_ite (cost_dec (cost_seq (cost_ite (cost_return _) cost_skip)
        (cost_return _))) cost_skip) (cost_seq (cost_assign _ _ _) (cost_assign _ _ _))))))).mono ?_
  omega

/-- The loop, when the ordinary domain lies in a cyclic interval of length `L`. -/
theorem tw_while_cost (hC : X.code.lookup = guestCode) {lo : BitVec 64} {L : Nat}
    (hD : DomIn X.memaddrs lo L) (hL : L + 8 ≤ 2 ^ 64) {Bb : Nat}
    (hb : Cost σ X twLoopBody Bb) :
    Cost σ X (.while twCond twLoopBody) ((L + 9) * (L + 2) * (Bb + 1)) := by
  have hQdom : ∀ (M : BitVec 64 → HolWordLab 64) v, zQ X.memaddrs M v = true →
      (v - lo).toNat < L := fun M v h => hD v (zQ_dom h).2
  refine (cost_while_doomed (twMu X.memaddrs (L + 1)) ((L + 8) * (L + 1 + 1) + (L + 1))
    (fun s => InCtx s X ∧ ∃ V, s.locals.lookup (nm "node") = some (.val (.word V)) ∧
      runLenG (zQ X.memaddrs s.memory) (zG s.memory) (L + 1) V = L + 1)
    hb ?_ ?_ ?_).mono (le_of_eq ?_)
  · -- the measure is bounded
    intro s _ _ _
    have h1 : twA X.memaddrs s ≤ L + 8 := cnt_le hD hL _ (Nat.le_of_lt (BitVec.isLt _))
    have h2 : twR X.memaddrs (L + 1) s ≤ L + 1 := runLenG_le _ _ _ _
    have := Nat.mul_le_mul_right (L + 1 + 1) h1
    unfold twMu
    omega
  · -- completed iterations from non-doomed states decrease it
    intro s hs hc _ hnd hexit
    have hstep := tw_step hC (decClockHOLFinite s) (decClockHOLFinite s) hs
      ⟨rfl, condTrue_decClock.mpr hc⟩ (by rcases hexit with h | h <;> rw [h] <;> simp) hexit
    have hA0 : twA X.memaddrs (decClockHOLFinite s) = twA X.memaddrs s := rfl
    generalize evaluateHOLFiniteState (decClockHOLFinite s) twLoopBody = E at hstep ⊢
    obtain ⟨r, t⟩ := E
    dsimp only at hstep ⊢
    rcases hstep with hlt | ⟨V, hV, hQ, hn, hm, hA⟩
    · rw [hA0] at hlt
      have h2 : twR X.memaddrs (L + 1) t ≤ L + 1 := runLenG_le _ _ _ _
      have := Nat.mul_le_mul_right (L + 1 + 1) (Nat.succ_le_of_lt hlt)
      rw [Nat.succ_mul] at this
      unfold twMu
      omega
    · rw [hA0] at hA
      have hV' : s.locals.lookup (nm "node") = some (.val (.word V)) := hV
      have hQ' : zQ X.memaddrs s.memory V = true := hQ
      have hn' : t.locals.lookup (nm "node") = some (.val (.word (zG s.memory V))) := hn
      have hm' : t.memory = s.memory := hm
      have hnotfull : runLenG (zQ X.memaddrs s.memory) (zG s.memory) (L + 1) V ≠ L + 1 :=
        fun h => hnd ⟨hs, V, hV', h⟩
      have hR0 : runLenG (zQ X.memaddrs s.memory) (zG s.memory) (L + 1) V =
          runLenG (zQ X.memaddrs s.memory) (zG s.memory) L (zG s.memory V) + 1 := by
        simp only [runLenG, hQ', if_true]
      have hle := runLenG_le (zQ X.memaddrs s.memory) (zG s.memory) L (zG s.memory V)
      have hR1 := runLenG_succ_of_lt (zQ X.memaddrs s.memory) (zG s.memory) L (zG s.memory V)
        (by omega)
      have ht : twR X.memaddrs (L + 1) t =
          runLenG (zQ X.memaddrs s.memory) (zG s.memory) L (zG s.memory V) := by
        unfold twR
        rw [hm', wl_of hn', hR1]
      have hs' : twR X.memaddrs (L + 1) s =
          runLenG (zQ X.memaddrs s.memory) (zG s.memory) (L + 1) V := by
        unfold twR
        rw [wl_of hV']
      unfold twMu
      rw [hA, ht, hs', hR0]
      omega
  · -- doomed states loop forever
    intro s ⟨hs, V, hV, hfull⟩
    have hQV : zQ X.memaddrs s.memory V = true :=
      (runLenG_eq_iff _ _ (L + 1) V).mp hfull 0 (by omega)
    have hV0 := (zQ_dom hQV).1
    refine ⟨⟨1, ?_, by decide⟩, fun hg => ?_⟩
    · have : ev s twCond = some (.val (.word (if wordCmpHOL .notEqual V (BitVec.ofNat 64 0)
          then 1 else 0))) := ev_cmp (ev_lw hV) (ev_cw _ 0)
      rw [show wordCmpHOL .notEqual V (BitVec.ofNat 64 0) = true by
        simp [wordCmpHOL]; exact hV0] at this
      exact this
    · have hd := tw_doom hC s.memory V hQV (decClockHOLFinite s) hs ⟨rfl, hV⟩ hg
      obtain ⟨hr, hm, hn⟩ := hd
      refine ⟨Or.inl hr, inCtx_eval (s := decClockHOLFinite s) hs twLoopBody, zG s.memory V, hn, ?_⟩
      rw [hm]
      exact runLen_full_dom (hQdom s.memory) V hfull
  · ring

/-- **Tick bound of `trie_walk`** when the ordinary memory domain lies in a cyclic interval
of length `L`: at most `(L + 9)(L + 2)` iterations, given costs `Bf` of `mpt_fail` and `Bm`
of `memeq`. -/
theorem trie_walk_cost (hC : X.code.lookup = guestCode) {lo : BitVec 64} {L : Nat}
    (hD : DomIn X.memaddrs lo L) (hL : L + 8 ≤ 2 ^ 64) {Bf Bm : Nat}
    (hf : CalleeCost σ X (nm "mpt_fail") Bf) (hm : CalleeCost σ X (nm "memeq") Bm) :
    CalleeCost σ X (nm "trie_walk") ((L + 9) * (L + 2) * (Bf + 2 * Bm + 4)) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -⟩ := lookupCode_three code_trie_walk (by decide) (by decide) (by decide) hl
  unfold twBody
  exact (cost_dec (cost_seq (tw_while_cost hC hD hL (twLoopBody_cost hf hm))
    (cost_return _))).mono (le_of_eq (by rw [Nat.add_zero]))

end InitECandidate.Solver.Spec
