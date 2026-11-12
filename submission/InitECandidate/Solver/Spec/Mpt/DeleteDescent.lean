import InitECandidate.Solver.Spec.Mpt.Keep
import InitECandidate.Solver.Spec.StateRestore

/-!
# The descent loop of `_mpt_delete_node_body`

```
while go != 0 {
  go = 0;
  if node == 0 { res = 0; } else {
    var k = ld node; if k == HASHED { mpt_fail(2); } node_invalidate(node);
    if k == LEAF { ... memeq ... }                                  -- go stays 0
    else if k == EXT { ...; var pl = common_prefix_length(...);
      if pl <+ sl { res = node; }                                   -- go stays 0
      else { var fr = scratch_alloc(40); st ...; top = fr; node = ...; level = ...; go = 1; } }
    else if level == klen { ... _collapse_branch ... }              -- go stays 0
    else { var idx = ld8 ...; var fr2 = scratch_alloc(40); st ...; ...; go = 1; } } }
```

**All states.** Every iteration that sets `go = 1` has made one successful
`scratch_alloc(40)` call, and nothing else in the iteration writes `scratch_ptr` or
`frame_mem_ptr`. By `funSpec_scratch_alloc` the call returns `Q` with `F ≤ Q`, and `Q < P`
whenever `F ≤ P` (`P`, `F`: entry values of the two pointers). So the *arena value*
`arenaV P F = if F ≤ P then P - F else 2 ^ 64` strictly decreases, `frame_mem_ptr` being
fixed. The measure is `[go ≠ 0] · (1 + arenaV)`, at most `2 ^ 64 + 1`
(`delDesc_cost`).
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## The measure -/

/-- A word value as a number (`0` otherwise). -/
def ow : Option (ValueHOL 64) → Nat
  | some (.val (.word w)) => w.toNat
  | _ => 0

theorem gwv_eq_ow (s : PanSemStateFiniteExact 64 σ) (x : MlS) :
    gwv s x = ow (s.globals.lookup x) := by
  unfold gwv ow; rfl

theorem ow_le (o : Option (ValueHOL 64)) : ow o < 2 ^ 64 := by
  unfold ow
  split
  · rename_i w; exact w.isLt
  · decide

/-- The arena value: `P - F` for `F ≤ P`, else `2 ^ 64`. -/
def arenaV (P F : Nat) : Nat := if F ≤ P then P - F else 2 ^ 64

theorem arenaV_le (P F : Nat) (hP : P < 2 ^ 64) : arenaV P F ≤ 2 ^ 64 := by
  unfold arenaV; split <;> omega

/-- `go` is the zero word. -/
def GoZ (t : PanSemStateFiniteExact 64 σ) : Prop := t.locals.lookup go_ = some (.val (.word 0))

/-- `frame_mem_ptr` kept at `F0`, and the arena value dropped below that of `P0`. -/
def Strict (P0 F0 : Nat) (t : PanSemStateFiniteExact 64 σ) : Prop :=
  ow (t.globals.lookup fpN) = F0 ∧ arenaV (ow (t.globals.lookup spN)) F0 < arenaV P0 F0

def DPost (P0 F0 : Nat) (t : PanSemStateFiniteExact 64 σ) : Prop := GoZ t ∨ Strict P0 F0 t

theorem dpost_restore {P0 F0 : Nat} {t : PanSemStateFiniteExact 64 σ} {y : MlS} (hy : y ≠ go_)
    (old : Option (ValueHOL 64)) (h : DPost P0 F0 t) :
    DPost P0 F0 { t with locals := t.locals.resVarEq (y, old) } := by
  rcases h with h | h
  · left
    show (t.locals.resVarEq (y, old)).lookup go_ = _
    rw [lookup_resVarEq_ne _ _ hy]
    exact h
  · exact Or.inr h

theorem kp_restore {P0 F0 : Nat} {r : Option (PanSemResultExact 64)}
    {t : PanSemStateFiniteExact 64 σ} {y : MlS} (hy : y ≠ go_) (old : Option (ValueHOL 64))
    (h : KP (DPost P0 F0) r t) :
    KP (DPost P0 F0) r { t with locals := t.locals.resVarEq (y, old) } :=
  h.mono (dpost_restore hy old)

/-- The loop measure. -/
def descMu (s : PanSemStateFiniteExact 64 σ) : Nat :=
  if wl s go_ = 0 then 0 else 1 + arenaV (ow (s.globals.lookup spN)) (ow (s.globals.lookup fpN))

/-! ## Footprint sets -/

def arenaGs : List MlS := [spN, fpN]

theorem arenaGs_closed (hC : X.code.lookup = guestCode) :
    ∀ g ∈ arenaGs, GwClosed g arenaNames X.code.lookup := by
  intro g hg
  rw [hC]
  simp only [arenaGs, List.mem_cons, List.not_mem_nil, or_false] at hg
  rcases hg with rfl | rfl
  · exact arena_gwClosed_sp
  · exact arena_gwClosed_fp

theorem nil_closed : ∀ g ∈ ([] : List MlS), GwClosed g ([] : List MlS) X.code.lookup := by
  intro g hg; cases hg

/-! ## Syntactic checks -/

set_option maxRecDepth 100000
set_option cbv.warning false

theorem kp_res0 : kpB [go_] [] [] (.assign .local (nm "res") (cw 0)) = true := by decide_cbv
theorem kp_leaf : kpB [go_] [] [] delLeaf = true := by decide_cbv
theorem kp_brEnd : kpB [go_] [] [] delBrEnd = true := by decide_cbv
theorem kp_resNode : kpB [go_] [] [] (.assign .local (nm "res") (lv (nm "node"))) = true := by
  decide_cbv
theorem kp_failHashed : kpB [go_] arenaGs arenaNames failHashed = true := by decide_cbv
theorem kp_inval :
    kpB [go_] arenaGs arenaNames (callD (nm "node_invalidate") [lv (nm "node")]) = true := by
  decide_cbv
theorem kp_pushE : kpB [] arenaGs arenaNames delPushE = true := by decide_cbv
theorem kp_pushB : kpB [] arenaGs arenaNames delPushB = true := by decide_cbv
theorem cpl_callOk : callOk arenaGs arenaNames (nm "common_prefix_length") = true := by decide_cbv

theorem notin_go {y : MlS} (h : y ≠ go_) : y ∉ [go_] := by simpa using h

/-! ## One iteration -/

/-- The `go = 0` frame: the locals `[go]` hold `0`. -/
abbrev L0 : MlS → Option (ValueHOL 64) := fun _ => some (.val (.word 0))

theorem goZ_of_keeps {gs : List MlS} {G : MlS → Option (ValueHOL 64)}
    {t : PanSemStateFiniteExact 64 σ} (h : Keeps [go_] L0 gs G t) : GoZ t :=
  h.1 go_ (by simp)

/-- A `go = 0` branch that does not touch `go`. -/
theorem hoare_goZ {p : ProgHOL 64} (hp : kpB [go_] [] [] p = true) {P0 F0 : Nat}
    {P : PanSemStateFiniteExact 64 σ → Prop} (hP : ∀ s, P s → GoZ s) :
    Hoare σ X P p (KP (DPost P0 F0)) := by
  refine hoare_conseq (hoare_kp (gs := []) (L := L0) (G := fun _ => none) nil_closed p hp)
    (fun s _ h => ⟨fun x hx => by simp at hx; subst hx; exact hP s h, fun g hg => by cases hg⟩)
    (fun _ _ _ _ h => h.mono fun hk => Or.inl (goZ_of_keeps hk))

/-- `var fr = scratch_alloc(40); push` from a state whose arena pointers are `G`. -/
theorem hoare_alloc_push (hC : X.code.lookup = guestCode) {fr : MlS} (hfr : fr ≠ go_)
    {push : ProgHOL 64} (hpush : kpB [] arenaGs arenaNames push = true)
    {G : MlS → Option (ValueHOL 64)} {P : PanSemStateFiniteExact 64 σ → Prop}
    (hP : ∀ s, P s → ∀ g ∈ arenaGs, s.globals.lookup g = G g) :
    Hoare σ X P (.decCall fr .one (nm "scratch_alloc") [cw 40] push)
      (KP (DPost (ow (G spN)) (ow (G fpN)))) := by
  refine hoare_decCallS (funSpec_scratch_alloc hC) fun s _ hs vs hvs callee v st hR _ _ => ?_
  obtain ⟨N, P', F', Q, hN, hP', hF', rfl, hsp', hfp', -, h1, h2, h3⟩ := hR _ rfl
  have hvs' : vs = [.val (.word (BitVec.ofNat 64 40))] := by
    rw [evs_cons (ev_cw _ 40) evs_nil] at hvs
    exact (Option.some.inj hvs).symm
  rw [hvs'] at hN
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hN
  subst hN
  have hG := hP s hs
  have hGsp : G spN = some (.val (.word P')) := by
    rw [← hG spN (by simp [arenaGs])]; exact hP'
  have hGfp : G fpN = some (.val (.word F')) := by
    rw [← hG fpN (by simp [arenaGs])]; exact hF'
  -- the strict decrease
  have hstrict : arenaV Q.toNat F'.toNat < arenaV P'.toNat F'.toNat := by
    have hQ := Q.isLt
    unfold arenaV
    rw [BitVec.toNat_sub] at h1 h2
    simp only [BitVec.toNat_ofNat] at h1 h2
    by_cases hle : F'.toNat ≤ P'.toNat
    · rw [if_pos hle, if_pos h3]
      have hP := P'.isLt
      rw [show (2 ^ 64 - F'.toNat + P'.toNat) % 2 ^ 64 = P'.toNat - F'.toNat by omega] at h1
      rw [show (2 ^ 64 - 40 % 2 ^ 64 + P'.toNat) % 2 ^ 64 = P'.toNat - 40 by omega] at h2
      omega
    · rw [if_neg hle, if_pos h3]
      omega
  refine hoare_conseq (hoare_kp (xs := []) (L := fun _ => none)
      (G := fun g => st.globals.lookup g) (arenaGs_closed hC) push hpush)
    (fun t _ ht => by subst ht; exact ⟨fun x hx => (by cases hx), fun g _ => rfl⟩) ?_
  intro r t _ _ hq
  refine hq.mono fun hk => Or.inr ?_
  have e1 : t.globals.lookup spN = some (.val (.word Q)) :=
    (hk.2 spN (by simp [arenaGs])).trans hsp'
  have e2 : t.globals.lookup fpN = some (.val (.word F')) :=
    (hk.2 fpN (by simp [arenaGs])).trans hfp'
  refine ⟨?_, ?_⟩
  · show ow (t.globals.lookup fpN) = ow (G fpN)
    rw [e2, hGfp]
  · show arenaV (ow (t.globals.lookup spN)) (ow (G fpN)) < arenaV (ow (G spN)) (ow (G fpN))
    rw [e1, hGsp, hGfp]
    exact hstrict

/-- **One iteration** from arena pointers `G`: normal completion leaves `go = 0` or a
strictly smaller arena value. -/
theorem delDesc_hoare (hC : X.code.lookup = guestCode) (G : MlS → Option (ValueHOL 64)) :
    Hoare σ X (fun s => ∀ g ∈ arenaGs, s.globals.lookup g = G g) delDescBody
      (KP (DPost (ow (G spN)) (ow (G fpN)))) := by
  have hS := arenaGs_closed (X := X) hC
  -- `go = 0`
  refine hoare_seq (R := fun r t => r = none ∧ Keeps [go_] L0 arenaGs G t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assign fun s _ h v hv _ => ⟨rfl, fun x hx => ?_, fun g hg => h g hg⟩
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hx
    subst hx
    rw [ev_cw] at hv
    cases hv
    exact lk_set_self _ _ _
  refine hoare_ite (hoare_goZ kp_res0 fun s h => goZ_of_keeps h.1.2) ?_
  -- `delNode`
  refine hoare_dec fun s _ hs vk _ _ => ?_
  have hks : Keeps [go_] L0 arenaGs G (setVarHOLFinite (nm "k") vk s) :=
    keeps_setVar (notin_go (by decide : nm "k" ≠ go_)) vk hs.1.2
  refine hoare_conseq (P := Keeps [go_] L0 arenaGs G) ?_ (fun t _ ht => ht ▸ hks)
    (fun _ _ _ _ h => kp_restore ((by decide : nm "k" ≠ go_)) _ h)
  refine hoare_seq (hoare_kp hS failHashed kp_failHashed) (fun _ _ _ _ _ h => ?_) ?_
  · exact h.mono fun hk => Or.inl (goZ_of_keeps hk)
  refine hoare_pre (P := Keeps [go_] L0 arenaGs G) ?_ (fun _ _ h => h.none_of)
  refine hoare_seq (hoare_kp hS _ kp_inval) (fun _ _ _ _ _ h => ?_) ?_
  · exact h.mono fun hk => Or.inl (goZ_of_keeps hk)
  refine hoare_pre (P := Keeps [go_] L0 arenaGs G) ?_ (fun _ _ h => h.none_of)
  -- the kinds
  refine hoare_ite (hoare_goZ kp_leaf fun _ h => goZ_of_keeps h.1) (hoare_ite ?_ ?_)
  · -- extension
    refine hoare_dec fun s1 _ hs1 vseg _ _ => ?_
    refine hoare_conseq (P := Keeps [go_] L0 arenaGs G) ?_
      (fun t _ ht => ht ▸ keeps_setVar (notin_go (by decide : nm "seg" ≠ go_)) vseg hs1.1.1)
      (fun _ _ _ _ h => kp_restore ((by decide : nm "seg" ≠ go_)) _ h)
    refine hoare_dec fun s2 _ hs2 vsl _ _ => ?_
    refine hoare_conseq (P := Keeps [go_] L0 arenaGs G) ?_
      (fun t _ ht => ht ▸ keeps_setVar (notin_go (by decide : nm "sl" ≠ go_)) vsl hs2)
      (fun _ _ _ _ h => kp_restore ((by decide : nm "sl" ≠ go_)) _ h)
    refine hoare_decCallS (funSpec_keepG hS cpl_callOk)
      fun s3 _ hs3 _ _ callee vpl st hR _ _ => ?_
    have hks3 : Keeps [go_] L0 arenaGs G
        (setVarHOLFinite (nm "pl") vpl { st with locals := s3.locals }) :=
      keeps_setVar (notin_go (by decide : nm "pl" ≠ go_)) vpl (keeps_call callee hR hs3)
    refine hoare_conseq (P := Keeps [go_] L0 arenaGs G) ?_ (fun t _ ht => ht ▸ hks3)
      (fun _ _ _ _ h => kp_restore ((by decide : nm "pl" ≠ go_)) _ h)
    refine hoare_ite (hoare_goZ kp_resNode fun _ h => goZ_of_keeps h.1) ?_
    exact hoare_alloc_push hC ((by decide : nm "fr" ≠ go_)) kp_pushE fun _ h => h.1.2
  · -- branch
    refine hoare_ite (hoare_goZ kp_brEnd fun _ h => goZ_of_keeps h.1.1.1) ?_
    refine hoare_dec fun s1 _ hs1 vidx _ _ => ?_
    refine hoare_conseq (P := Keeps [go_] L0 arenaGs G) ?_
      (fun t _ ht => ht ▸ keeps_setVar (notin_go (by decide : nm "idx" ≠ go_)) vidx hs1.1.1.1)
      (fun _ _ _ _ h => kp_restore ((by decide : nm "idx" ≠ go_)) _ h)
    exact hoare_alloc_push hC ((by decide : nm "fr2" ≠ go_)) kp_pushB fun _ h => h.2

/-! ## The loop bound -/

/-- The body bound, from the callee bounds. -/
def delDescB (Bf Bi Bm Bp Ba Bc : Nat) : Nat := Bf + Bi + Bm + Bp + Ba + Bc + 6

theorem delDescBody_cost {Bf Bi Bm Bp Ba Bc : Nat}
    (hf : CalleeCost σ X (nm "mpt_fail") Bf) (hi : CalleeCost σ X (nm "node_invalidate") Bi)
    (hm : CalleeCost σ X (nm "memeq") Bm) (hp : CalleeCost σ X (nm "common_prefix_length") Bp)
    (ha : CalleeCost σ X (nm "scratch_alloc") Ba) (hc : CalleeCost σ X (nm "_collapse_branch") Bc) :
    Cost σ X delDescBody (delDescB Bf Bi Bm Bp Ba Bc) := by
  have nh : ∀ {r : Option (VarKind × MlS)}, ∀ r' hid hv (hp : ProgHOL 64),
      (some (r, none) : Option (Option (VarKind × MlS) × Option (MlS × MlS × ProgHOL 64))) =
        some (r', some (hid, hv, hp)) → Cost σ X hp 0 := by
    intro _ _ _ _ _ h; cases h
  have cPushE : Cost σ X delPushE 0 := by
    unfold delPushE
    exact cost_seq (cost_store _ _) (cost_seq (cost_store _ _) (cost_seq (cost_store _ _)
      (cost_seq (cost_store _ _) (cost_seq (cost_store _ _) (cost_seq (cost_assign _ _ _)
        (cost_seq (cost_assign _ _ _) (cost_seq (cost_assign _ _ _) (cost_assign _ _ _))))))))
  have cPushB : Cost σ X delPushB 0 := by
    unfold delPushB
    exact cost_seq (cost_store _ _) (cost_seq (cost_store _ _) (cost_seq (cost_store _ _)
      (cost_seq (cost_store _ _) (cost_seq (cost_assign _ _ _) (cost_seq (cost_assign _ _ _)
        (cost_seq (cost_assign _ _ _) (cost_assign _ _ _)))))))
  have cLeaf := cost_seq (cost_assign (σ := σ) (X := X) .local (nm "res") (lv (nm "node")))
    (cost_ite (c := .cmp .equal (.load .one (.op .add [lv (nm "node"), cw 40]))
        (.op .sub [lv (nm "klen"), lv (nm "level")]))
      (cost_decCall (rn := nm "eq") (sh := .one)
        (args := [.load .one (.op .add [lv (nm "node"), cw 32]),
          .op .add [lv (nm "key"), lv (nm "level")], .op .sub [lv (nm "klen"), lv (nm "level")]])
        hm (cost_ite (c := .cmp .notEqual (lv (nm "eq")) (cw 0))
          (cost_assign .local (nm "res") (cw 0)) cost_skip)) cost_skip)
  have cExt := cost_dec (n := nm "seg") (sh := .one)
    (e := .load .one (.op .add [lv (nm "node"), cw 32])) (cost_dec (n := nm "sl") (sh := .one)
      (e := .load .one (.op .add [lv (nm "node"), cw 40]))
      (cost_decCall (rn := nm "pl") (sh := .one)
        (args := [lv (nm "seg"), lv (nm "sl"), .op .add [lv (nm "key"), lv (nm "level")],
          .op .sub [lv (nm "klen"), lv (nm "level")]]) hp
        (cost_ite (c := .cmp .lower (lv (nm "pl")) (lv (nm "sl")))
          (cost_assign (σ := σ) (X := X) .local (nm "res") (lv (nm "node")))
          (cost_decCall (rn := nm "fr") (sh := .one) (args := [cw 40]) ha cPushE))))
  have cBrEnd := cost_ite (c := .cmp .equal (.load .one (.op .add [lv (nm "node"), cw 168])) (cw 0))
    (cost_assign (σ := σ) (X := X) .local (nm "res") (lv (nm "node")))
    (cost_seq (cost_store (.op .add [lv (nm "node"), cw 160]) (cw 0))
      (cost_seq (cost_store (.op .add [lv (nm "node"), cw 168]) (cw 0))
        (cost_call (info := some (some (.local, nm "res"), none)) (args := [lv (nm "node")]) hc nh)))
  have cBranch := cost_ite (c := .cmp .equal (lv (nm "level")) (lv (nm "klen"))) cBrEnd
    (cost_dec (n := nm "idx") (sh := .one) (e := .loadByte (.op .add [lv (nm "key"), lv (nm "level")]))
      (cost_decCall (rn := nm "fr2") (sh := .one) (args := [cw 40]) ha cPushB))
  have cKinds := cost_ite (c := .cmp .equal (lv (nm "k")) (cw 1)) cLeaf
    (cost_ite (c := .cmp .equal (lv (nm "k")) (cw 2)) cExt cBranch)
  have cNode := cost_dec (n := nm "k") (sh := .one)
    (e := .load .one (.op .add [lv (nm "node"), cw 0]))
    (cost_seq (cost_ite (c := .cmp .equal (lv (nm "k")) (cw 0))
        (cost_call (info := some (none, none)) (args := [cw 2]) hf nh) (cost_skip (σ := σ) (X := X)))
      (cost_seq (cost_call (info := some (none, none)) (args := [lv (nm "node")]) hi nh) cKinds))
  have cBody := cost_seq (cost_assign (σ := σ) (X := X) .local (nm "go") (cw 0))
    (cost_ite (c := .cmp .equal (lv (nm "node")) (cw 0)) (cost_assign .local (nm "res") (cw 0))
      cNode)
  refine Cost.mono cBody ?_
  unfold delDescB
  omega

/-- **Descent loop of `_mpt_delete_node_body`**, from every state: at most `2 ^ 64 + 2`
iterations. -/
theorem delDesc_cost (hC : X.code.lookup = guestCode) {Bf Bi Bm Bp Ba Bc : Nat}
    (hf : CalleeCost σ X (nm "mpt_fail") Bf) (hi : CalleeCost σ X (nm "node_invalidate") Bi)
    (hm : CalleeCost σ X (nm "memeq") Bm) (hp : CalleeCost σ X (nm "common_prefix_length") Bp)
    (ha : CalleeCost σ X (nm "scratch_alloc") Ba) (hc : CalleeCost σ X (nm "_collapse_branch") Bc) :
    Cost σ X (.while goCond delDescBody) ((2 ^ 64 + 2) * (delDescB Bf Bi Bm Bp Ba Bc + 1)) := by
  have hb := delDescBody_cost hf hi hm hp ha hc
  have H := hdec_of_hoare (σ := σ) (X := X) (c := goCond) (body := delDescBody) descMu
    (fun _ => True) (fun _ => rfl) (fun _ h => h) ?_
  · have := cost_while (σ := σ) (X := X) (c := goCond) descMu (2 ^ 64 + 1) hb
      (fun s _ _ => by
        unfold descMu
        split
        · omega
        · have := arenaV_le (ow (s.globals.lookup spN)) (ow (s.globals.lookup fpN))
            (ow_le _)
          omega)
      (fun s hs hc _ hexit => H s hs hc trivial hexit)
    exact this
  · intro k s hs ⟨_, hc, hk⟩ ht
    have hgo : wl s go_ ≠ 0 := by
      obtain ⟨w, hw, hw0⟩ := hc
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lv] at hx
      rw [ev_cw] at hy
      cases hy
      rw [show wl s go_ = x from wl_of hx]
      exact notEqual_true hxy
    have hk' : k = 1 + arenaV (ow (s.globals.lookup spN)) (ow (s.globals.lookup fpN)) := by
      rw [← hk]; unfold descMu; rw [if_neg hgo]
    have hpost := delDesc_hoare (σ := σ) hC (fun g => s.globals.lookup g) s hs
      (fun _ _ => rfl) ht
    intro hexit
    rcases hpost with ⟨hr, hd⟩ | ⟨v, hv⟩
    · rcases hd with hz | ⟨hf', hlt⟩
      · have : wl (evaluateHOLFiniteState s delDescBody).2 go_ = 0 := by rw [wl_of hz]
        unfold descMu; rw [if_pos this]; omega
      · unfold descMu
        split
        · omega
        · rw [hf']; omega
    · rcases hexit with h | h <;> rw [hv] at h <;> cases h

end InitECandidate.Solver.Spec.Mpt
