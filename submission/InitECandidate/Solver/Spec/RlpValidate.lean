import InitECandidate.Solver.Spec.RlpStack
import InitECandidate.Solver.Spec.FootprintGuest

/-!
# The tick bound of `_rlp_validate_items_body`

```
fun 1 _rlp_validate_items_body(1 p, 1 len) {
  var top = 0; var pos = p; var end = p + len; var go = 1;
  while go != 0 {
    if pos == end { if top == 0 { go = 0; } else { pos = lds (top+0); end = lds (top+8);
      top = lds (top+16); } }
    else { var h = rlp_item_header(pos, end - pos); var payload = pos + h.0;
      var after = payload + h.1;
      if h.2 != 0 { var rec = scratch_alloc(24); st rec, after; st rec+8, end; st rec+16, top;
        top = rec; pos = payload; end = after; } else { pos = after; } } }
  return 0; }
```

**Invariant** (`RvSt`, for the fixed payload `P = p`, `Ln = len`): the records reachable
from `top` mirror the list `es` of outer frame ends (`RChain`, `Spec/RlpStack.lean`); the
cursor offsets satisfy `off pos ≤ off end ≤ … ≤ Ln`; when `top ≠ 0` the arena pointers
are words with `frame_mem_ptr ≤ scratch_ptr` and every record word is safe for them; and
`depth + cnt(pos) ≤ cnt(p)`, where `cnt(x)` counts the domain hits among the remaining
offsets `x, …, p + Ln - 1` (`Spec/DomCount.lean`).

**Measure** `[go ≠ 0] + 2·cnt(pos) + depth`: a string item advances `pos` from a hit
(`ld8 pos` of the header passed the domain check), losing a hit (`-2`); a list item
advances `pos` by its header `h0 ≥ 1` and pushes a record (`-2 + 1`); a pop keeps `pos`
(its record holds `resume = end = pos`) and drops a level (`-1`); the final `go = 0`
costs `-1`. With the ordinary domain in a cyclic interval of length `L`, `cnt(p) ≤ L + 8`,
so the loop runs at most `2 (L + 8) + 2` iterations (`rv_body_cost`).
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost

variable {σ : Type} {X : Ctx 64}

/-! ## The loop state -/

/-- The stack, offsets and hit-count facts, for memory `M` and arena pointers `gsp`, `gfp`. -/
def Core (D : BitVec 64 → Prop) (P : BitVec 64) (Ln : Nat) (M : BitVec 64 → HolWordLab 64)
    (gsp gfp : Option (ValueHOL 64)) (Pos End Top : BitVec 64) (es : List (BitVec 64)) : Prop :=
  (∃ SP F : BitVec 64, RChain M SP.toNat F.toNat P Ln Top End es ∧
    (Top ≠ 0 → gsp = some (.val (.word SP)) ∧ gfp = some (.val (.word F)) ∧
      F.toNat ≤ SP.toNat)) ∧
  off P Pos ≤ off P End ∧ es.length + cnt D Pos (Ln - off P Pos) ≤ cnt D P Ln

/-- The loop locals. -/
def Locs (s : PanSemStateFiniteExact 64 σ) (Pos End Top Go : BitVec 64) : Prop :=
  s.locals.lookup (nm "pos") = some (.val (.word Pos)) ∧
  s.locals.lookup (nm "end") = some (.val (.word End)) ∧
  s.locals.lookup (nm "top") = some (.val (.word Top)) ∧
  s.locals.lookup (nm "go") = some (.val (.word Go))

def RvSt (D : BitVec 64 → Prop) (P : BitVec 64) (Ln : Nat) (s : PanSemStateFiniteExact 64 σ)
    (Pos End Top Go : BitVec 64) (es : List (BitVec 64)) : Prop :=
  Locs s Pos End Top Go ∧
    Core D P Ln s.memory (s.globals.lookup spN) (s.globals.lookup fpN) Pos End Top es

def RvInv (D : BitVec 64 → Prop) (P : BitVec 64) (Ln : Nat) (s : PanSemStateFiniteExact 64 σ) :
    Prop :=
  ∃ Pos End Top Go es, RvSt D P Ln s Pos End Top Go es

/-- The measure, on ghost values. -/
noncomputable def gmu (D : BitVec 64 → Prop) (P : BitVec 64) (Ln : Nat) (Pos Go : BitVec 64)
    (es : List (BitVec 64)) : Nat :=
  (if Go = 0 then 0 else 1) + 2 * cnt D Pos (Ln - off P Pos) + es.length

/-- A word local (`0` if absent). -/
def wl (s : PanSemStateFiniteExact 64 σ) (x : MlS) : BitVec 64 :=
  match s.locals.lookup x with
  | some (.val (.word w)) => w
  | _ => 0

theorem wl_of {s : PanSemStateFiniteExact 64 σ} {x : MlS} {w : BitVec 64}
    (h : s.locals.lookup x = some (.val (.word w))) : wl s x = w := by
  unfold wl; rw [h]

/-- The measure, on states. -/
noncomputable def rvMu (D : BitVec 64 → Prop) (P : BitVec 64) (Ln : Nat)
    (s : PanSemStateFiniteExact 64 σ) : Nat :=
  (if wl s (nm "go") = 0 then 0 else 1) +
    2 * cnt D (wl s (nm "pos")) (Ln - off P (wl s (nm "pos"))) +
    chainLen s.memory (wl s (nm "top")) (2 ^ 64)

theorem rvMu_eq {D : BitVec 64 → Prop} {P : BitVec 64} {Ln : Nat} (hLn : Ln ≤ 2 ^ 64)
    {s : PanSemStateFiniteExact 64 σ} {Pos End Top Go : BitVec 64} {es : List (BitVec 64)}
    (h : RvSt D P Ln s Pos End Top Go es) : rvMu D P Ln s = gmu D P Ln Pos Go es := by
  obtain ⟨⟨h1, _, h3, h4⟩, ⟨SP, F, hch, _⟩, _, hcnt⟩ := h
  have hle : es.length ≤ 2 ^ 64 := by
    have := cnt_le_n D P Ln
    omega
  unfold rvMu gmu
  rw [wl_of h1, wl_of h3, wl_of h4, rchain_len es Top End _ hch hle]

/-- The loop body's post, for start measure `μ0`. -/
def RvPost (D : BitVec 64 → Prop) (P : BitVec 64) (Ln : Nat) (μ0 : Nat)
    (r : Option (PanSemResultExact 64)) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  r = none ∨ r = some .continue →
    ∃ Pos End Top Go es, RvSt D P Ln t Pos End Top Go es ∧ gmu D P Ln Pos Go es < μ0

theorem rvPost_of {D : BitVec 64 → Prop} {P : BitVec 64} {Ln μ0 : Nat}
    {r : Option (PanSemResultExact 64)} {t : PanSemStateFiniteExact 64 σ}
    {Pos End Top Go : BitVec 64} {es : List (BitVec 64)} (h : RvSt D P Ln t Pos End Top Go es)
    (hμ : gmu D P Ln Pos Go es < μ0) : RvPost D P Ln μ0 r t :=
  fun _ => ⟨Pos, End, Top, Go, es, h, hμ⟩

/-- Restoring a local other than the loop locals keeps the post. -/
theorem rvPost_restore {D : BitVec 64 → Prop} {P : BitVec 64} {Ln μ0 : Nat}
    {r : Option (PanSemResultExact 64)} {t : PanSemStateFiniteExact 64 σ} {n : MlS}
    (o : Option (ValueHOL 64)) (h1 : n ≠ nm "pos") (h2 : n ≠ nm "end") (h3 : n ≠ nm "top")
    (h4 : n ≠ nm "go") (h : RvPost D P Ln μ0 r t) :
    RvPost D P Ln μ0 r { t with locals := t.locals.resVarEq (n, o) } := by
  intro hr
  obtain ⟨Pos, End, Top, Go, es, ⟨⟨l1, l2, l3, l4⟩, hc⟩, hμ⟩ := h hr
  refine ⟨Pos, End, Top, Go, es, ⟨⟨?_, ?_, ?_, ?_⟩, hc⟩, hμ⟩
  · show (t.locals.resVarEq _).lookup _ = _; rw [lookup_resVarEq_ne _ _ h1]; exact l1
  · show (t.locals.resVarEq _).lookup _ = _; rw [lookup_resVarEq_ne _ _ h2]; exact l2
  · show (t.locals.resVarEq _).lookup _ = _; rw [lookup_resVarEq_ne _ _ h3]; exact l3
  · show (t.locals.resVarEq _).lookup _ = _; rw [lookup_resVarEq_ne _ _ h4]; exact l4

theorem hoare_ghostM {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop} {p : ProgHOL 64}
    (h : ∀ M : BitVec 64 → HolWordLab 64, Hoare σ X (fun s => P s ∧ s.memory = M) p Q) :
    Hoare σ X P p Q :=
  fun s hs hp => h s.memory s hs ⟨hp, rfl⟩

/-! ## Comparisons -/

theorem equal_true {x y : BitVec 64} (h : wordCmpHOL .equal x y = true) : x = y := by
  simpa [wordCmpHOL] using h

theorem notEqual_true {x y : BitVec 64} (h : wordCmpHOL .notEqual x y = true) : x ≠ y := by
  simpa [wordCmpHOL] using h

theorem notEqual_false {x y : BitVec 64} (h : wordCmpHOL .notEqual x y = false) : x = y := by
  simpa [wordCmpHOL] using h

theorem ev_add_cw {s : PanSemStateFiniteExact 64 σ} {x : MlS} {w : BitVec 64}
    (h : s.locals.lookup x = some (.val (.word w))) (k : Nat) :
    ev s (.op .add [lv x, cw k]) = some (.val (.word (w + BitVec.ofNat 64 k))) :=
  ev_add2 (ev_lw h) (ev_cw _ k)

/-- A one-word load at `x + k`. -/
theorem ev_ld_inv {s : PanSemStateFiniteExact 64 σ} {x : MlS} {w : BitVec 64} {k : Nat}
    {v : ValueHOL 64} (h : s.locals.lookup x = some (.val (.word w)))
    (hv : ev s (.load .one (.op .add [lv x, cw k])) = some v) :
    v = .val (s.memory (w + BitVec.ofNat 64 k)) := by
  obtain ⟨a, ha, -, rfl⟩ := ev_load_one hv
  rw [ev_add_cw h] at ha
  cases ha
  rfl

/-! ## The two `pos == end` branches -/

theorem rv_done {D : BitVec 64 → Prop} {P : BitVec 64} {Ln : Nat} (Pos End Top Go : BitVec 64)
    (es : List (BitVec 64)) :
    Hoare σ X (fun s => RvSt D P Ln s Pos End Top Go es ∧ Go ≠ 0)
      (.assign .local (nm "go") (cw 0)) (RvPost D P Ln (gmu D P Ln Pos Go es)) := by
  refine hoare_assign fun s _ ⟨⟨⟨l1, l2, l3, _⟩, hc⟩, hGo⟩ v hv _ => ?_
  rw [ev_cw] at hv
  cases hv
  refine rvPost_of (Pos := Pos) (End := End) (Top := Top) (Go := BitVec.ofNat 64 0) (es := es)
    ⟨⟨?_, ?_, ?_, lk_set_self _ _ _⟩, hc⟩ ?_
  · rw [lk_set_ne _ _ (by decide)]; exact l1
  · rw [lk_set_ne _ _ (by decide)]; exact l2
  · rw [lk_set_ne _ _ (by decide)]; exact l3
  · unfold gmu; rw [if_neg hGo]; simp

theorem rv_pop {D : BitVec 64 → Prop} {P : BitVec 64} {Ln : Nat} (Pos End Top Go : BitVec 64)
    (es : List (BitVec 64)) :
    Hoare σ X (fun s => RvSt D P Ln s Pos End Top Go es ∧ Pos = End ∧ Top ≠ 0) rvPop
      (RvPost D P Ln (gmu D P Ln Pos Go es)) := by
  cases es with
  | nil =>
      intro s _ ⟨⟨_, ⟨SP, F, hch, _⟩, _⟩, _, hT⟩
      exact absurd hch.1 hT
  | cons e' es' =>
  apply hoare_ghostM
  intro M
  refine hoare_seq (R := fun r u => r = none ∧ u.memory = M ∧
      Locs u End End Top Go ∧
      Core D P Ln M (u.globals.lookup spN) (u.globals.lookup fpN) Pos End Top (e' :: es') ∧
      Pos = End ∧ Top ≠ 0) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun s _ ⟨⟨⟨⟨l1, l2, l3, l4⟩, hc⟩, hPE, hT⟩, hm⟩ v hv _ => ?_
    rw [ev_ld_inv l3 hv]
    obtain ⟨⟨SP, F, hch, hg⟩, hoff, hcnt⟩ := hc
    have hM0 := hch.2.1
    rw [BitVec.add_zero, hM0]
    refine ⟨rfl, hm, ⟨lk_set_self _ _ _, ?_, ?_, ?_⟩, ?_, hPE, hT⟩
    · rw [lk_set_ne _ _ (by decide)]; exact l2
    · rw [lk_set_ne _ _ (by decide)]; exact l3
    · rw [lk_set_ne _ _ (by decide)]; exact l4
    · rw [← hm]; exact ⟨⟨SP, F, hch, hg⟩, hoff, hcnt⟩
  refine hoare_seq (R := fun r u => r = none ∧ u.memory = M ∧
      Locs u End e' Top Go ∧
      Core D P Ln M (u.globals.lookup spN) (u.globals.lookup fpN) Pos End Top (e' :: es') ∧
      Pos = End ∧ Top ≠ 0) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun s _ ⟨_, hm, ⟨l1, l2, l3, l4⟩, hc, hPE, hT⟩ v hv _ => ?_
    rw [ev_ld_inv l3 hv]
    obtain ⟨⟨SP, F, hch, hg⟩, hoff, hcnt⟩ := hc
    have hM8 := hch.2.2.1
    rw [hm, hM8]
    refine ⟨rfl, hm, ⟨?_, lk_set_self _ _ _, ?_, ?_⟩, ⟨⟨SP, F, hch, hg⟩, hoff, hcnt⟩, hPE, hT⟩
    · rw [lk_set_ne _ _ (by decide)]; exact l1
    · rw [lk_set_ne _ _ (by decide)]; exact l3
    · rw [lk_set_ne _ _ (by decide)]; exact l4
  · refine hoare_assign fun s _ ⟨_, hm, ⟨l1, l2, l3, l4⟩, hc, hPE, hT⟩ v hv _ => ?_
    rw [ev_ld_inv l3 hv]
    obtain ⟨⟨SP, F, hch, hg⟩, hoff, hcnt⟩ := hc
    obtain ⟨_, _, _, _, _, _, hle, nxt, hn, hr⟩ := hch
    rw [hm, hn]
    subst hPE
    refine rvPost_of (Pos := Pos) (End := e') (Top := nxt) (Go := Go) (es := es')
      ⟨⟨?_, ?_, lk_set_self _ _ _, ?_⟩, ?_⟩ ?_
    · rw [lk_set_ne _ _ (by decide)]; exact l1
    · rw [lk_set_ne _ _ (by decide)]; exact l2
    · rw [lk_set_ne _ _ (by decide)]; exact l4
    · show Core D P Ln s.memory (s.globals.lookup spN) (s.globals.lookup fpN) Pos e' nxt es'
      rw [hm]
      refine ⟨⟨SP, F, hr, fun _ => hg hT⟩, hle, ?_⟩
      simp only [List.length_cons] at hcnt
      omega
    · simp only [gmu, List.length_cons]
      omega

/-! ## The item branch -/

theorem core_adv {D : BitVec 64 → Prop} {P : BitVec 64} {Ln : Nat} {M : BitVec 64 → HolWordLab 64}
    {gsp gfp : Option (ValueHOL 64)} {Pos End Top : BitVec 64} {es : List (BitVec 64)}
    (hc : Core D P Ln M gsp gfp Pos End Top es) (hhit : Hit D Pos) {d : Nat} (h1 : 1 ≤ d)
    (hle : off P Pos + d ≤ off P End) :
    cnt D (Pos + BitVec.ofNat 64 d) (Ln - (off P Pos + d)) + 1 ≤ cnt D Pos (Ln - off P Pos) := by
  obtain ⟨⟨SP, F, hch, _⟩, _, _⟩ := hc
  have hE := rchain_off_le es Top End hch
  have := cnt_step (n := Ln - off P Pos) hhit h1 (by omega)
  rwa [show Ln - off P Pos - d = Ln - (off P Pos + d) by omega] at this

theorem ofNat_toNat' (a : BitVec 64) : BitVec.ofNat 64 a.toNat = a := by
  apply BitVec.eq_of_toNat_eq; simp

/-- A string item: skip it. -/
theorem rv_string {D : BitVec 64 → Prop} {P : BitVec 64} {Ln : Nat} {M : BitVec 64 → HolWordLab 64}
    {gsp gfp : Option (ValueHOL 64)} {Pos End Top Go a b : BitVec 64} {es : List (BitVec 64)}
    (hc : Core D P Ln M gsp gfp Pos End Top es) (hhit : Hit D Pos)
    (hab1 : 1 ≤ a.toNat + b.toNat) (hle : off P Pos + (a.toNat + b.toNat) ≤ off P End) :
    Hoare σ X (fun u => Locs u Pos End Top Go ∧
        u.locals.lookup (nm "after") = some (.val (.word (Pos + a + b))) ∧ u.memory = M ∧
        u.globals.lookup spN = gsp ∧ u.globals.lookup fpN = gfp)
      (.assign .local (nm "pos") (lv (nm "after"))) (RvPost D P Ln (gmu D P Ln Pos Go es)) := by
  refine hoare_assign fun u _ ⟨⟨l1, l2, l3, l4⟩, haf, hm, hsp, hfp⟩ v hv _ => ?_
  rw [ev_lw haf] at hv
  cases hv
  have hstep := core_adv hc hhit hab1 hle
  have hPos' : Pos + a + b = Pos + BitVec.ofNat 64 (a.toNat + b.toNat) := by
    rw [ofNat_toNat_add, BitVec.add_assoc]
  have hoff' : off P (Pos + a + b) = off P Pos + (a.toNat + b.toNat) := by
    rw [hPos', off_add _ (by have := off_lt P End; rw [BitVec.toNat_ofNat,
      Nat.mod_eq_of_lt (by have := a.isLt; have := b.isLt; omega)]; omega)]
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by have := off_lt P End; omega)]
  obtain ⟨hch, hoff, hcnt⟩ := hc
  refine rvPost_of (Pos := Pos + a + b) (End := End) (Top := Top) (Go := Go) (es := es)
    ⟨⟨lk_set_self _ _ _, ?_, ?_, ?_⟩, ?_⟩ ?_
  · rw [lk_set_ne _ _ (by decide)]; exact l2
  · rw [lk_set_ne _ _ (by decide)]; exact l3
  · rw [lk_set_ne _ _ (by decide)]; exact l4
  · show Core D P Ln u.memory (u.globals.lookup spN) (u.globals.lookup fpN) _ End Top es
    rw [hm, hsp, hfp]
    refine ⟨hch, by rw [hoff']; exact hle, ?_⟩
    rw [hoff', hPos']
    omega
  · unfold gmu
    rw [hoff', hPos']
    omega

/-- The memory after the three record stores. -/
def pushMem (M : BitVec 64 → HolWordLab 64) (Q Aft End Top : BitVec 64) :
    BitVec 64 → HolWordLab 64 :=
  fun x => if x = Q + BitVec.ofNat 64 16 then .word Top else
    if x = Q + BitVec.ofNat 64 8 then .word End else
      if x = Q then .word Aft else M x

theorem ne_add8 (Q : BitVec 64) : Q ≠ Q + BitVec.ofNat 64 8 := by bv_omega
theorem ne_add16 (Q : BitVec 64) : Q ≠ Q + BitVec.ofNat 64 16 := by bv_omega
theorem ne_add8_16 (Q : BitVec 64) : Q + BitVec.ofNat 64 8 ≠ Q + BitVec.ofNat 64 16 := by bv_omega

/-- The stack facts after a push. -/
theorem core_push {D : BitVec 64 → Prop} {P : BitVec 64} {Ln : Nat} {M : BitVec 64 → HolWordLab 64}
    {gsp gfp : Option (ValueHOL 64)} {Pos End Top a b P0 F0 Q : BitVec 64} {es : List (BitVec 64)}
    (hc : Core D P Ln M gsp gfp Pos End Top es) (hhit : Hit D Pos) (ha1 : 1 ≤ a.toNat)
    (hle : off P Pos + (a.toNat + b.toNat) ≤ off P End)
    (hP0 : gsp = some (.val (.word P0))) (hF0 : gfp = some (.val (.word F0)))
    (h1 : 24 ≤ (P0 - F0).toNat) (h2 : Q.toNat ≤ (P0 - BitVec.ofNat 64 24).toNat)
    (h3 : F0.toNat ≤ Q.toNat) :
    ∃ es', Core D P Ln (pushMem M Q (Pos + a + b) End Top) (some (.val (.word Q)))
        (some (.val (.word F0))) (Pos + a) (Pos + a + b) Q es' ∧
      es'.length + 2 * cnt D (Pos + a) (Ln - off P (Pos + a)) <
        es.length + 2 * cnt D Pos (Ln - off P Pos) := by
  have hA := a.isLt
  have hB := b.isLt
  have hEnd := off_lt P End
  have hoffa : off P (Pos + a) = off P Pos + a.toNat := off_add _ (by omega)
  have hoffab : off P (Pos + a + b) = off P Pos + (a.toNat + b.toNat) := by
    rw [off_add _ (by omega), hoffa]; omega
  have hstep := core_adv hc hhit ha1 (by omega)
  rw [ofNat_toNat'] at hstep
  obtain ⟨⟨SP, F, hch, hg⟩, hoff, hcnt⟩ := hc
  have hE := rchain_off_le es Top End hch
  -- the old chain survives the stores and the lower arena pointer
  have hold : RChain (pushMem M Q (Pos + a + b) End Top) Q.toNat F0.toNat P Ln Top End es := by
    by_cases hT : Top = 0
    · subst hT
      have := rchain_nil_of_zero hch
      subst this
      exact hch
    · obtain ⟨hsp, hfp, hFS⟩ := hg hT
      rw [hP0] at hsp
      rw [hF0] at hfp
      cases hsp
      cases hfp
      have hb := alloc_below h1 h2 hFS
      refine rchain_mono (by omega) es Top End
        (rchain_congr (fun w hw => ?_) es Top End hch)
      have n0 := alloc_fresh hb h3 hw 0 (by omega)
      have n8 := alloc_fresh hb h3 hw 8 (by omega)
      have n16 := alloc_fresh hb h3 hw 16 (by omega)
      rw [show Q + BitVec.ofNat 64 0 = Q by simp] at n0
      simp only [pushMem, if_neg n16, if_neg n8, if_neg n0]
  by_cases hQ : Q = 0
  · refine ⟨[], ⟨⟨Q, F0, ⟨hQ, by rw [hoffab]; omega⟩, fun h => absurd hQ h⟩, ?_, ?_⟩, ?_⟩
    · rw [hoffa, hoffab]; omega
    · rw [hoffa]
      simp only [List.length_nil]
      omega
    · rw [hoffa]
      simp only [List.length_nil]
      omega
  · have s0 := alloc_safe h1 h2 h3 0 (by omega)
    rw [show Q + BitVec.ofNat 64 0 = Q by simp] at s0
    refine ⟨End :: es, ⟨⟨Q, F0, ⟨hQ, ?_, ?_, s0, alloc_safe h1 h2 h3 8 (by omega),
      alloc_safe h1 h2 h3 16 (by omega), by rw [hoffab]; omega, Top, ?_, hold⟩,
      fun _ => ⟨rfl, rfl, h3⟩⟩, ?_, ?_⟩, ?_⟩
    · simp only [pushMem, if_neg (ne_add16 Q), if_neg (ne_add8 Q), if_true]
    · simp only [pushMem, if_neg (ne_add8_16 Q), if_true]
    · simp only [pushMem, if_true]
    · rw [hoffa, hoffab]; omega
    · rw [hoffa]
      simp only [List.length_cons]
      omega
    · rw [hoffa]
      simp only [List.length_cons]
      omega

/-- A one-word store of a word local at a known address. -/
theorem hoare_store_lv {F : PanSemStateFiniteExact 64 σ → Prop}
    (hF : ∀ w (mem : BitVec 64 → HolWordLab 64), F w → F { w with memory := mem })
    {a : ExpHOL 64} {y : MlS} {A V : BitVec 64} {Mx : BitVec 64 → HolWordLab 64}
    (ha : ∀ w, F w → ev w a = some (.val (.word A)))
    (hy : ∀ w, F w → w.locals.lookup y = some (.val (.word V))) :
    Hoare σ X (fun w => F w ∧ w.memory = Mx) (.store a (lv y))
      (fun r w => r = none ∧ F w ∧ w.memory = fun z => if z = A then .word V else Mx z) := by
  refine hoare_store fun w _ ⟨hFw, hm⟩ A' v mem hA hv hmem => ?_
  rw [ha w hFw] at hA
  cases hA
  rw [ev_lw (hy w hFw)] at hv
  cases hv
  simp only [flattenHOL] at hmem
  obtain ⟨-, rfl⟩ := stores_one hmem
  exact ⟨rfl, hF w _ hFw, by rw [hm]⟩

/-- `var rec = scratch_alloc(24); st rec, after; st rec + 8, end; st rec + 16, top;
top = rec; pos = payload; end = after`. -/
theorem rv_push_hoare (hC : X.code.lookup = guestCode) {D : BitVec 64 → Prop} {P : BitVec 64}
    {Ln : Nat} {M : BitVec 64 → HolWordLab 64} {gsp gfp : Option (ValueHOL 64)}
    {Pos End Top Go a b : BitVec 64} {es : List (BitVec 64)}
    (hc : Core D P Ln M gsp gfp Pos End Top es) (hhit : Hit D Pos) (ha1 : 1 ≤ a.toNat)
    (hle : off P Pos + (a.toNat + b.toNat) ≤ off P End) :
    Hoare σ X (fun u => Locs u Pos End Top Go ∧
        u.locals.lookup (nm "payload") = some (.val (.word (Pos + a))) ∧
        u.locals.lookup (nm "after") = some (.val (.word (Pos + a + b))) ∧ u.memory = M ∧
        u.globals.lookup spN = gsp ∧ u.globals.lookup fpN = gfp)
      (.decCall (nm "rec") .one (nm "scratch_alloc") [cw 24] rvPush)
      (RvPost D P Ln (gmu D P Ln Pos Go es)) := by
  refine hoare_decCallS (funSpec_scratch_alloc hC) ?_
  intro u _ ⟨hl, hpl, haf, hm, hsp, hfp⟩ vs hvs callee v st hR _ _
  have hvs' : vs = [.val (.word (BitVec.ofNat 64 24))] := by
    rw [evs_cons (ev_cw _ 24) evs_nil] at hvs
    exact (Option.some.inj hvs).symm
  subst hvs'
  obtain ⟨N, P0, F0, Q, hN, hP0, hF0, rfl, hsp', hfp', hmem', h1, h2, h3⟩ := hR _ rfl
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hN
  subst hN
  have hP0' : gsp = some (.val (.word P0)) := by rw [← hsp]; exact hP0
  have hF0' : gfp = some (.val (.word F0)) := by rw [← hfp]; exact hF0
  obtain ⟨es', hcore', hμ'⟩ := core_push hc hhit ha1 hle hP0' hF0' h1 h2 h3
  refine hoare_post (Q := RvPost D P Ln (gmu D P Ln Pos Go es)) ?_
    (fun r t _ _ h => rvPost_restore _ (by decide) (by decide) (by decide) (by decide) h)
  -- the frame of the stores
  let F : PanSemStateFiniteExact 64 σ → Prop := fun w => Locs w Pos End Top Go ∧
    w.locals.lookup (nm "rec") = some (.val (.word Q)) ∧
    w.locals.lookup (nm "payload") = some (.val (.word (Pos + a))) ∧
    w.locals.lookup (nm "after") = some (.val (.word (Pos + a + b))) ∧
    w.globals.lookup spN = some (.val (.word Q)) ∧ w.globals.lookup fpN = some (.val (.word F0))
  have hF : ∀ w (mem : BitVec 64 → HolWordLab 64), F w → F { w with memory := mem } :=
    fun _ _ h => h
  refine hoare_pre (P := fun w => F w ∧ w.memory = M) ?_ ?_
  · unfold rvPush
    refine hoare_seq (hoare_store_lv hF (A := Q) (V := Pos + a + b)
        (fun w h => ev_lw h.2.1) (fun w h => h.2.2.2.1))
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    refine hoare_pre (P := fun w => F w ∧ w.memory = _) ?_ (fun w _ h => ⟨h.2.1, h.2.2⟩)
    refine hoare_seq (hoare_store_lv hF (A := Q + BitVec.ofNat 64 8) (V := End)
        (fun w h => ev_add_cw h.2.1 8) (fun w h => h.1.2.1))
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    refine hoare_pre (P := fun w => F w ∧ w.memory = _) ?_ (fun w _ h => ⟨h.2.1, h.2.2⟩)
    refine hoare_seq (hoare_store_lv hF (A := Q + BitVec.ofNat 64 16) (V := Top)
        (fun w h => ev_add_cw h.2.1 16) (fun w h => h.1.2.2.1))
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    -- `top = rec`
    refine hoare_seq (R := fun r w => r = none ∧ Locs w Pos End Q Go ∧
        w.locals.lookup (nm "payload") = some (.val (.word (Pos + a))) ∧
        w.locals.lookup (nm "after") = some (.val (.word (Pos + a + b))) ∧
        w.globals.lookup spN = some (.val (.word Q)) ∧
        w.globals.lookup fpN = some (.val (.word F0)) ∧
        w.memory = pushMem M Q (Pos + a + b) End Top) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_assign fun w _ ⟨_, ⟨⟨l1, l2, _, l4⟩, hr, hpl', haf', hsp'', hfp''⟩, hm'⟩ x hx _ => ?_
      rw [ev_lw hr] at hx
      cases hx
      refine ⟨rfl, ⟨?_, ?_, lk_set_self _ _ _, ?_⟩, ?_, ?_, hsp'', hfp'', hm'⟩
      · rw [lk_set_ne _ _ (by decide)]; exact l1
      · rw [lk_set_ne _ _ (by decide)]; exact l2
      · rw [lk_set_ne _ _ (by decide)]; exact l4
      · rw [lk_set_ne _ _ (by decide)]; exact hpl'
      · rw [lk_set_ne _ _ (by decide)]; exact haf'
    -- `pos = payload`
    refine hoare_seq (R := fun r w => r = none ∧ Locs w (Pos + a) End Q Go ∧
        w.locals.lookup (nm "after") = some (.val (.word (Pos + a + b))) ∧
        w.globals.lookup spN = some (.val (.word Q)) ∧
        w.globals.lookup fpN = some (.val (.word F0)) ∧
        w.memory = pushMem M Q (Pos + a + b) End Top) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_assign fun w _ ⟨_, ⟨_, l2, l3, l4⟩, hpl', haf', hsp'', hfp'', hm'⟩ x hx _ => ?_
      rw [ev_lw hpl'] at hx
      cases hx
      refine ⟨rfl, ⟨lk_set_self _ _ _, ?_, ?_, ?_⟩, ?_, hsp'', hfp'', hm'⟩
      · rw [lk_set_ne _ _ (by decide)]; exact l2
      · rw [lk_set_ne _ _ (by decide)]; exact l3
      · rw [lk_set_ne _ _ (by decide)]; exact l4
      · rw [lk_set_ne _ _ (by decide)]; exact haf'
    -- `end = after`
    · refine hoare_assign fun w _ ⟨_, ⟨l1, _, l3, l4⟩, haf', hsp'', hfp'', hm'⟩ x hx _ => ?_
      rw [ev_lw haf'] at hx
      cases hx
      refine rvPost_of (Pos := Pos + a) (End := Pos + a + b) (Top := Q) (Go := Go) (es := es')
        ⟨⟨?_, lk_set_self _ _ _, ?_, ?_⟩, ?_⟩ ?_
      · rw [lk_set_ne _ _ (by decide)]; exact l1
      · rw [lk_set_ne _ _ (by decide)]; exact l3
      · rw [lk_set_ne _ _ (by decide)]; exact l4
      · show Core D P Ln w.memory (w.globals.lookup spN) (w.globals.lookup fpN) _ _ Q es'
        rw [hm', hsp'', hfp'']
        exact hcore'
      · unfold gmu
        omega
  · intro w _ hw
    subst hw
    refine ⟨⟨⟨?_, ?_, ?_, ?_⟩, lk_set_self _ _ _, ?_, ?_, hsp', hfp'⟩, ?_⟩
    · rw [lk_set_ne _ _ (by decide)]; exact hl.1
    · rw [lk_set_ne _ _ (by decide)]; exact hl.2.1
    · rw [lk_set_ne _ _ (by decide)]; exact hl.2.2.1
    · rw [lk_set_ne _ _ (by decide)]; exact hl.2.2.2
    · rw [lk_set_ne _ _ (by decide)]; exact hpl
    · rw [lk_set_ne _ _ (by decide)]; exact haf
    · exact hmem'.trans hm

/-- Everything after the header call. -/
theorem rv_after_hdr (hC : X.code.lookup = guestCode) {P : BitVec 64} {Ln : Nat}
    {M : BitVec 64 → HolWordLab 64} {gsp gfp : Option (ValueHOL 64)}
    {Pos End Top Go a b c : BitVec 64} {es : List (BitVec 64)}
    (hc : Core X.memaddrs P Ln M gsp gfp Pos End Top es) (hhit : Hit X.memaddrs Pos)
    (hab1 : 1 ≤ a.toNat + b.toNat) (hle : off P Pos + (a.toNat + b.toNat) ≤ off P End)
    (hca : c ≠ 0 → 1 ≤ a.toNat) :
    Hoare σ X (fun u => Locs u Pos End Top Go ∧
        u.locals.lookup (nm "h") = some (.rStruct [.val (.word a), .val (.word b), .val (.word c)]) ∧
        u.memory = M ∧ u.globals.lookup spN = gsp ∧ u.globals.lookup fpN = gfp)
      (.dec (nm "payload") .one (.op .add [lv (nm "pos"), .rfield 0 (lv (nm "h"))])
        (.dec (nm "after") .one (.op .add [lv (nm "payload"), .rfield 1 (lv (nm "h"))])
          (.ite (.cmp .notEqual (.rfield 2 (lv (nm "h"))) (cw 0))
            (.decCall (nm "rec") .one (nm "scratch_alloc") [cw 24] rvPush)
            (.assign .local (nm "pos") (lv (nm "after"))))))
      (RvPost X.memaddrs P Ln (gmu X.memaddrs P Ln Pos Go es)) := by
  have hfi : ∀ (u : PanSemStateFiniteExact 64 σ) (i : Nat),
      u.locals.lookup (nm "h") = some (.rStruct [.val (.word a), .val (.word b), .val (.word c)]) →
      ev u (.rfield i (lv (nm "h"))) =
        ([.val (.word a), .val (.word b), .val (.word c)] : List (ValueHOL 64))[i]? :=
    fun u i hh => ev_rfield (by rw [ev_lv]; exact hh) i
  refine hoare_dec fun u _ ⟨hl, hh, hm, hsp, hfp⟩ v hv _ => ?_
  rw [ev_add2 (ev_lw hl.1) (hfi u 0 hh)] at hv
  cases hv
  refine hoare_post (Q := RvPost X.memaddrs P Ln (gmu X.memaddrs P Ln Pos Go es)) ?_
    (fun r t _ _ h => rvPost_restore _ (by decide) (by decide) (by decide) (by decide) h)
  refine hoare_pre (P := fun u => Locs u Pos End Top Go ∧
      u.locals.lookup (nm "h") = some (.rStruct [.val (.word a), .val (.word b), .val (.word c)]) ∧
      u.locals.lookup (nm "payload") = some (.val (.word (Pos + a))) ∧
      u.memory = M ∧ u.globals.lookup spN = gsp ∧ u.globals.lookup fpN = gfp) ?_ ?_
  · refine hoare_dec fun u _ ⟨hl, hh, hpl, hm, hsp, hfp⟩ v hv _ => ?_
    rw [ev_add2 (ev_lw hpl) (hfi u 1 hh)] at hv
    cases hv
    refine hoare_post (Q := RvPost X.memaddrs P Ln (gmu X.memaddrs P Ln Pos Go es)) ?_
      (fun r t _ _ h => rvPost_restore _ (by decide) (by decide) (by decide) (by decide) h)
    have hcv : ∀ (u : PanSemStateFiniteExact 64 σ),
        u.locals.lookup (nm "h") = some (.rStruct [.val (.word a), .val (.word b), .val (.word c)]) →
        ev u (.cmp .notEqual (.rfield 2 (lv (nm "h"))) (cw 0)) =
          some (.val (.word (if wordCmpHOL .notEqual c (BitVec.ofNat 64 0) then 1 else 0))) :=
      fun u hh => ev_cmp (hfi u 2 hh) (ev_cw _ 0)
    refine hoare_pre (P := fun u => Locs u Pos End Top Go ∧
        u.locals.lookup (nm "h") = some (.rStruct [.val (.word a), .val (.word b), .val (.word c)]) ∧
        u.locals.lookup (nm "payload") = some (.val (.word (Pos + a))) ∧
        u.locals.lookup (nm "after") = some (.val (.word (Pos + a + b))) ∧
        u.memory = M ∧ u.globals.lookup spN = gsp ∧ u.globals.lookup fpN = gfp) ?_ ?_
    · by_cases hc0 : c = 0
      · subst hc0
        refine hoare_ite ?_ ?_
        · intro w _ ⟨⟨_, hh', _⟩, x, hx, hx0⟩ _
          rw [hcv w hh'] at hx
          simp [wordCmpHOL] at hx
          exact absurd hx.symm hx0
        · exact hoare_pre (rv_string hc hhit hab1 hle)
            (fun w _ ⟨⟨hl', _, _, haf', hm', hsp', hfp'⟩, _⟩ => ⟨hl', haf', hm', hsp', hfp'⟩)
      · refine hoare_ite ?_ ?_
        · exact hoare_pre (rv_push_hoare hC hc hhit (hca hc0) hle)
            (fun w _ ⟨⟨hl', _, hpl', haf', hm', hsp', hfp'⟩, _⟩ => ⟨hl', hpl', haf', hm', hsp', hfp'⟩)
        · intro w _ ⟨⟨_, hh', _⟩, hx⟩ _
          rw [hcv w hh'] at hx
          simp [wordCmpHOL] at hx
          exact absurd hx hc0
    · intro w _ hw
      subst hw
      refine ⟨⟨?_, ?_, ?_, ?_⟩, ?_, ?_, lk_set_self _ _ _, hm, hsp, hfp⟩
      · rw [lk_set_ne _ _ (by decide)]; exact hl.1
      · rw [lk_set_ne _ _ (by decide)]; exact hl.2.1
      · rw [lk_set_ne _ _ (by decide)]; exact hl.2.2.1
      · rw [lk_set_ne _ _ (by decide)]; exact hl.2.2.2
      · rw [lk_set_ne _ _ (by decide)]; exact hh
      · rw [lk_set_ne _ _ (by decide)]; exact hpl
  · intro w _ hw
    subst hw
    refine ⟨⟨?_, ?_, ?_, ?_⟩, ?_, lk_set_self _ _ _, hm, hsp, hfp⟩
    · rw [lk_set_ne _ _ (by decide)]; exact hl.1
    · rw [lk_set_ne _ _ (by decide)]; exact hl.2.1
    · rw [lk_set_ne _ _ (by decide)]; exact hl.2.2.1
    · rw [lk_set_ne _ _ (by decide)]; exact hl.2.2.2
    · rw [lk_set_ne _ _ (by decide)]; exact hh

/-- The header facts the walker uses: result, memory and arena pointers. -/
theorem funSpec_hdr (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "rlp_item_header") (fun vs s r t =>
      (∀ v, r = .returned v → HdrRet2 X.memaddrs vs v) ∧ t.memory = s.memory ∧
      t.globals.lookup spN = s.globals.lookup spN ∧ t.globals.lookup fpN = s.globals.lookup fpN) :=
  (funSpec_of_funRet (funRet_rlp_item_header2 hC)).and
    ((funSpec_rlp_item_header_mw hC).and (funSpec_rlp_item_header_scratch hC))

theorem rv_item (hC : X.code.lookup = guestCode) {P : BitVec 64} {Ln : Nat}
    (Pos End Top Go : BitVec 64) (es : List (BitVec 64)) :
    Hoare σ X (fun s => RvSt X.memaddrs P Ln s Pos End Top Go es ∧ Pos ≠ End) rvItem
      (RvPost X.memaddrs P Ln (gmu X.memaddrs P Ln Pos Go es)) := by
  refine hoare_decCallS (funSpec_hdr hC) ?_
  intro s _ ⟨⟨hl, hc⟩, hne⟩ vs hvs callee v st hR _ _
  have hvs' : vs = [.val (.word Pos), .val (.word (End - Pos))] := by
    rw [evs_cons (ev_lw hl.1) (evs_cons (ev_sub2 (ev_lw hl.2.1) (ev_lw hl.1)) evs_nil)] at hvs
    exact (Option.some.inj hvs).symm
  subst hvs'
  obtain ⟨hret, hmem, hsp, hfp⟩ := hR
  obtain ⟨P', L', heq, ⟨a, b, c, rfl, hab1, hab2, hca⟩, hhit⟩ := hret _ rfl
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at heq
  obtain ⟨rfl, rfl⟩ := heq
  have hoff := hc.2.1
  rw [sub_toNat_off hoff] at hab2
  have hle : off P Pos + (a.toNat + b.toNat) ≤ off P End := by omega
  refine hoare_post (Q := RvPost X.memaddrs P Ln (gmu X.memaddrs P Ln Pos Go es)) ?_
    (fun r t _ _ h => rvPost_restore _ (by decide) (by decide) (by decide) (by decide) h)
  refine hoare_pre (rv_after_hdr hC hc hhit hab1 hle hca) ?_
  intro u _ hu
  subst hu
  refine ⟨⟨?_, ?_, ?_, ?_⟩, lk_set_self _ _ _, hmem, hsp, hfp⟩
  · rw [lk_set_ne _ _ (by decide)]; exact hl.1
  · rw [lk_set_ne _ _ (by decide)]; exact hl.2.1
  · rw [lk_set_ne _ _ (by decide)]; exact hl.2.2.1
  · rw [lk_set_ne _ _ (by decide)]; exact hl.2.2.2

/-- **One iteration** decreases the measure and keeps the invariant. -/
theorem rv_body_step (hC : X.code.lookup = guestCode) {P : BitVec 64} {Ln : Nat}
    (Pos End Top Go : BitVec 64) (es : List (BitVec 64)) :
    Hoare σ X (fun s => RvSt X.memaddrs P Ln s Pos End Top Go es ∧ Go ≠ 0) rvLoopBody
      (RvPost X.memaddrs P Ln (gmu X.memaddrs P Ln Pos Go es)) := by
  unfold rvLoopBody
  refine hoare_ite ?_ ?_
  · refine hoare_pre (P := fun s => (RvSt X.memaddrs P Ln s Pos End Top Go es ∧ Go ≠ 0) ∧
      Pos = End) (hoare_ite ?_ ?_) ?_
    · exact hoare_pre (rv_done Pos End Top Go es) (fun _ _ h => h.1.1)
    · refine hoare_pre (rv_pop Pos End Top Go es) ?_
      intro s _ ⟨⟨⟨hst, _⟩, hPE⟩, hc⟩
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_lw hst.1.2.2.1] at hx
      cases hx
      rw [ev_cw] at hy
      cases hy
      exact ⟨hst, hPE, equal_false hxy⟩
    · intro s _ ⟨h, w, hw, hw0⟩
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lw h.1.1.1] at hx
      cases hx
      rw [ev_lw h.1.1.2.1] at hy
      cases hy
      exact ⟨h, equal_true hxy⟩
  · refine hoare_pre (rv_item hC Pos End Top Go es) ?_
    intro s _ ⟨⟨hst, _⟩, hc⟩
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    rw [ev_lw hst.1.1] at hx
    cases hx
    rw [ev_lw hst.1.2.1] at hy
    cases hy
    exact ⟨hst, equal_false hxy⟩

theorem rv_step (hC : X.code.lookup = guestCode) {P : BitVec 64} {Ln : Nat} (hLn : Ln ≤ 2 ^ 64)
    (k : Nat) :
    Hoare σ X (fun s => RvInv X.memaddrs P Ln s ∧ CondTrue s rvCond ∧ rvMu X.memaddrs P Ln s = k)
      rvLoopBody (fun r t => r = none ∨ r = some .continue →
        RvInv X.memaddrs P Ln t ∧ rvMu X.memaddrs P Ln t < k) := by
  intro s hs ⟨⟨Pos, End, Top, Go, es, hst⟩, ⟨w, hw, hw0⟩, hk⟩ ht hr
  have hGo : Go ≠ 0 := by
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_lw hst.1.2.2.2] at hx
    cases hx
    rw [ev_cw] at hy
    cases hy
    exact notEqual_true hxy
  obtain ⟨Pos', End', Top', Go', es', hst', hμ⟩ := rv_body_step hC Pos End Top Go es s hs ⟨hst, hGo⟩ ht hr
  refine ⟨⟨_, _, _, _, _, hst'⟩, ?_⟩
  rw [rvMu_eq hLn hst', ← hk, rvMu_eq hLn hst]
  exact hμ

/-! ## Costs -/

theorem rvLoopBody_cost {Bh Ba : Nat} (hh : CalleeCost σ X (nm "rlp_item_header") Bh)
    (ha : CalleeCost σ X (nm "scratch_alloc") Ba) : Cost σ X rvLoopBody (Bh + Ba + 2) := by
  have hpush : Cost σ X rvPush 0 := by
    unfold rvPush
    exact cost_seq (cost_store _ _) (cost_seq (cost_store _ _) (cost_seq (cost_store _ _)
      (cost_seq (cost_assign _ _ _) (cost_seq (cost_assign _ _ _) (cost_assign _ _ _)))))
  unfold rvLoopBody rvPop rvItem
  refine (cost_ite (cost_ite (cost_assign _ _ _) (cost_seq (cost_assign _ _ _)
    (cost_seq (cost_assign _ _ _) (cost_assign _ _ _))))
    (cost_decCall hh (cost_dec (cost_dec (cost_ite (cost_decCall ha hpush)
      (cost_assign _ _ _)))))).mono ?_
  omega

/-- The loop, from an invariant state, given a bound `C` on the hit count of any range. -/
theorem rv_loop_cost (hC : X.code.lookup = guestCode) {C : Nat}
    (hcnt : ∀ (P : BitVec 64) (Ln : Nat), Ln ≤ 2 ^ 64 → cnt X.memaddrs P Ln ≤ C)
    {Bh Ba : Nat} (hh : CalleeCost σ X (nm "rlp_item_header") Bh)
    (ha : CalleeCost σ X (nm "scratch_alloc") Ba) (P : BitVec 64) (Ln : Nat) (hLn : Ln ≤ 2 ^ 64) :
    CostP σ X (RvInv X.memaddrs P Ln) (.while rvCond rvLoopBody)
      ((2 * C + 2) * (Bh + Ba + 3)) := by
  refine (costP_while_inv (RvInv X.memaddrs P Ln) (rvMu X.memaddrs P Ln) (2 * C + 1)
    (rvLoopBody_cost hh ha) (fun s h => ⟨h, rfl⟩) ?_ (rv_step hC hLn)).mono (le_of_eq (by
    rw [show 2 * C + 1 + 1 = 2 * C + 2 by omega, show Bh + Ba + 2 + 1 = Bh + Ba + 3 by omega]))
  intro s _ ⟨Pos, End, Top, Go, es, hst⟩ _
  rw [rvMu_eq hLn hst]
  have h0 := hcnt P Ln hLn
  have h1 := hst.2.2.2
  unfold gmu
  split <;> omega

theorem off_add_self (P L : BitVec 64) : off P (P + L) = L.toNat := by
  unfold off; rw [show P + L - P = L by bv_omega]

/-- The function body, given a hit-count bound `C`. -/
theorem rv_body_cost (hC : X.code.lookup = guestCode) {C : Nat}
    (hcnt : ∀ (P : BitVec 64) (Ln : Nat), Ln ≤ 2 ^ 64 → cnt X.memaddrs P Ln ≤ C)
    {Bh Ba : Nat} (hh : CalleeCost σ X (nm "rlp_item_header") Bh)
    (ha : CalleeCost σ X (nm "scratch_alloc") Ba) :
    Cost σ X rvBody ((2 * C + 2) * (Bh + Ba + 3)) := by
  apply cost_of_costP
  unfold rvBody
  refine costP_dec (P' := fun s => s.locals.lookup (nm "top") = some (.val (.word 0))) ?_
    (fun s _ _ v hv _ => by rw [ev_cw] at hv; cases hv; exact lk_set_self _ _ _)
  refine costP_dec (P' := fun s => s.locals.lookup (nm "top") = some (.val (.word 0)) ∧
      ∃ P, s.locals.lookup (nm "pos") = some (.val (.word P)) ∧
        s.locals.lookup (nm "p") = some (.val (.word P))) ?_ ?_
  rotate_left
  · intro s _ htop v hv hsh
    obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsh
    refine ⟨by rw [lk_set_ne _ _ (by decide)]; exact htop, P, lk_set_self _ _ _, ?_⟩
    rw [lk_set_ne _ _ (by decide)]; exact hv
  refine costP_dec (P' := fun s => s.locals.lookup (nm "top") = some (.val (.word 0)) ∧
      ∃ P Lw : BitVec 64, s.locals.lookup (nm "pos") = some (.val (.word P)) ∧
        s.locals.lookup (nm "end") = some (.val (.word (P + Lw)))) ?_ ?_
  rotate_left
  · intro s _ ⟨htop, P, hpos, hp⟩ v hv hsh
    obtain ⟨E, rfl⟩ := val_of_shapeEq_one hsh
    obtain ⟨y, z, hy, _, hE⟩ := ev_add2_inv hv
    rw [ev_lw hp] at hy
    cases hy
    refine ⟨by rw [lk_set_ne _ _ (by decide)]; exact htop, P, z, ?_, ?_⟩
    · rw [lk_set_ne _ _ (by decide)]; exact hpos
    · rw [hE]; exact lk_set_self _ _ _
  refine costP_dec (P' := fun s => ∃ P Lw : BitVec 64, RvInv X.memaddrs P Lw.toNat s) ?_ ?_
  · refine (costP_seq_cost (costP_exists fun P => costP_exists fun (Lw : BitVec 64) =>
      rv_loop_cost hC hcnt hh ha P Lw.toNat (Nat.le_of_lt Lw.isLt)) (cost_return _)).mono ?_
    omega
  · intro s _ ⟨htop, P, Lw, hpos, hend⟩ v hv _
    rw [ev_cw] at hv
    cases hv
    refine ⟨P, Lw, P, P + Lw, 0, BitVec.ofNat 64 1, [], ⟨⟨?_, ?_, ?_, lk_set_self _ _ _⟩, ?_⟩⟩
    · rw [lk_set_ne _ _ (by decide)]; exact hpos
    · rw [lk_set_ne _ _ (by decide)]; exact hend
    · rw [lk_set_ne _ _ (by decide)]; exact htop
    · refine ⟨⟨0, 0, ⟨rfl, by rw [off_add_self]⟩, fun h => absurd rfl h⟩, ?_, ?_⟩
      · rw [off_self]; exact Nat.zero_le _
      · rw [off_self]; simp

/-- **Tick bound of `_rlp_validate_items_body`**, given a bound `C` on the number of domain
hits among any `≤ 2 ^ 64` consecutive addresses, and costs `Bh` of `rlp_item_header`, `Ba`
of `scratch_alloc`. -/
theorem rlp_validate_items_body_cost_cnt (hC : X.code.lookup = guestCode) {C : Nat}
    (hcnt : ∀ (P : BitVec 64) (Ln : Nat), Ln ≤ 2 ^ 64 → cnt X.memaddrs P Ln ≤ C)
    {Bh Ba : Nat} (hh : CalleeCost σ X (nm "rlp_item_header") Bh)
    (ha : CalleeCost σ X (nm "scratch_alloc") Ba) :
    CalleeCost σ X (nm "_rlp_validate_items_body") ((2 * C + 2) * (Bh + Ba + 3)) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_two code_rlp_validate_items_body (by decide) hl
  exact rv_body_cost hC hcnt hh ha

/-- **Tick bound of `_rlp_validate_items_body`** when the ordinary memory domain lies in a
cyclic interval of length `L`: at most `2 L + 18` iterations. -/
theorem rlp_validate_items_body_cost (hC : X.code.lookup = guestCode) {lo : BitVec 64} {L : Nat}
    (hD : DomIn X.memaddrs lo L) (hL : L + 8 ≤ 2 ^ 64)
    {Bh Ba : Nat} (hh : CalleeCost σ X (nm "rlp_item_header") Bh)
    (ha : CalleeCost σ X (nm "scratch_alloc") Ba) :
    CalleeCost σ X (nm "_rlp_validate_items_body") ((2 * L + 18) * (Bh + Ba + 3)) := by
  have := rlp_validate_items_body_cost_cnt (σ := σ) hC (C := L + 8)
    (fun P Ln hLn => cnt_le hD hL P hLn) hh ha
  rwa [show 2 * (L + 8) + 2 = 2 * L + 18 by omega] at this

/-- Without a domain bound: at most `2 ^ 65 + 2` iterations. -/
theorem rlp_validate_items_body_cost_any (hC : X.code.lookup = guestCode)
    {Bh Ba : Nat} (hh : CalleeCost σ X (nm "rlp_item_header") Bh)
    (ha : CalleeCost σ X (nm "scratch_alloc") Ba) :
    CalleeCost σ X (nm "_rlp_validate_items_body") ((2 ^ 65 + 2) * (Bh + Ba + 3)) := by
  have := rlp_validate_items_body_cost_cnt (σ := σ) hC (C := 2 ^ 64)
    (fun P Ln hLn => (cnt_le_n _ P Ln).trans hLn) hh ha
  rwa [show 2 * 2 ^ 64 + 2 = 2 ^ 65 + 2 by rfl] at this

/-! ## `rlp_validate_items`, `rlp_item_total`: straight-line composition -/

/-- **`rlp_validate_items`** (`mark = scratch_mark(); try body(p, len) catch RlpErr e
{ scratch_release(mark); throw }; scratch_release(mark)`). -/
theorem rlp_validate_items_cost (hC : X.code.lookup = guestCode) {Bm Bv Br : Nat}
    (hm : CalleeCost σ X (nm "scratch_mark") Bm)
    (hv : CalleeCost σ X (nm "_rlp_validate_items_body") Bv)
    (hr : CalleeCost σ X (nm "scratch_release") Br) :
    CalleeCost σ X (nm "rlp_validate_items") (Bm + Bv + 2 * Br + 4) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_two code_rlp_validate_items (by decide) hl
  have hrel : Cost σ X (callD (nm "scratch_release") [lv (nm "mark")]) (1 + Br + 0) :=
    cost_call hr (fun _ _ _ _ h => by simp at h)
  have hhd : Cost σ X rviHandler (1 + Br + 0 + 0) := cost_seq hrel (cost_raise _ _)
  unfold rviBody
  refine (cost_decCall hm (cost_dec (cost_seq
    (cost_call hv (fun _ _ _ _ h => by
      simp only [Option.some.injEq, Prod.mk.injEq] at h
      obtain ⟨-, -, -, rfl⟩ := h
      exact hhd))
    (cost_seq hrel (cost_return _))))).mono ?_
  omega

/-- **`rlp_item_total`** (`h = rlp_item_header(p, len); if h.2 != 0 { rlp_validate_items(p + h.0,
h.1) }; return h.0 + h.1`). -/
theorem rlp_item_total_cost (hC : X.code.lookup = guestCode) {Bh Bvi : Nat}
    (hh : CalleeCost σ X (nm "rlp_item_header") Bh)
    (hvi : CalleeCost σ X (nm "rlp_validate_items") Bvi) :
    CalleeCost σ X (nm "rlp_item_total") (Bh + Bvi + 2) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_two code_rlp_item_total (by decide) hl
  unfold totalBody
  refine (cost_decCall hh (cost_seq (cost_ite (cost_call (Bh := 0) hvi (fun _ _ _ _ h => by simp at h))
    cost_skip) (cost_return _))).mono ?_
  omega

end InitECandidate.Solver.Spec
