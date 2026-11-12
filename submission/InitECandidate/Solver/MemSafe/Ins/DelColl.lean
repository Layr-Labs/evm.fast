import InitECandidate.Solver.MemSafe.Ins.DelFinFn

set_option autoImplicit false

/-!
# `_collapse_branch`: the code and the 16-child counting loop

```
fun 1 _collapse_branch(1 node) {
  var count = 0; var idx = 0; var i = 0;
  while i < 16 { if NODE_CHILD_AT(node, i) != 0 { count = count + 1; idx = i; } i = i + 1; }
  var vl = lds 1 (node + BR_VAL_LEN);
  if count == 0 { if vl == 0 { mpt_fail(12); } return node_new_leaf(node, 0, lds 1 (node + BR_VAL), vl); }
  if (count == 1) && (vl == 0) { ... one child ... }
  return node;
}
```
The loop only reads: its invariant is the named locals `(node, count, idx, i)` with `i <= 16` and
`idx < 16` (so `idx` indexes a child slot).
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

def cbLoop : ProgHOL 64 :=
  .while (.cmp .less (lv (nm "i")) (cw 16))
    (.seq (.ite (.cmp .notEqual (.load .one (childAddrI (nm "node") (nm "i"))) (cw 0))
        (.seq (.assign .local (nm "count") (.op .add [lv (nm "count"), cw 1]))
          (.assign .local (nm "idx") (lv (nm "i")))) .skip)
      (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))

def cbCondAnd : ExpHOL 64 :=
  .op .and [.cmp .notEqual (cw 0) (.cmp .equal (lv (nm "count")) (cw 1)),
    .cmp .notEqual (cw 0) (.cmp .equal (lv (nm "vl")) (cw 0))]

/-- The `count == 1 && vl == 0` case. -/
def cbOne : ProgHOL 64 :=
  .dec (nm "child") .one (.load .one (childAddrI (nm "node") (nm "idx")))
    (.dec (nm "ck") .one (ldK "child" 0)
      (.seq (.ite (.cmp .equal (lv (nm "ck")) (cw 0))
          (.call (some (none, none)) (nm "mpt_fail") [cw 2]) .skip)
        (.decCall (nm "nib") .one (nm "alloc") [cw 8]
          (.seq (.storeByte (lv (nm "nib")) (lv (nm "idx")))
            (.seq (.ite (.cmp .equal (lv (nm "ck")) (cw 3))
                (.call none (nm "node_new_ext") [lv (nm "nib"), cw 1, lv (nm "child")]) .skip)
              (.decCall (nm "cat") .one (nm "nibbles_concat")
                [lv (nm "nib"), cw 1, ldK "child" 32, ldK "child" 40]
                (.seq (.ite (.cmp .equal (lv (nm "ck")) (cw 1))
                    (.call none (nm "node_new_leaf")
                      [lv (nm "cat"), .op .add [cw 1, ldK "child" 40], ldK "child" 48,
                       ldK "child" 56]) .skip)
                  (.call none (nm "node_new_ext")
                    [lv (nm "cat"), .op .add [cw 1, ldK "child" 40], ldK "child" 48]))))))))

def colBody : ProgHOL 64 :=
  .dec (nm "count") .one (cw 0) (.dec (nm "idx") .one (cw 0) (.dec (nm "i") .one (cw 0)
    (.seq cbLoop
      (.dec (nm "vl") .one (ldK "node" 168)
        (.seq (.ite (.cmp .equal (lv (nm "count")) (cw 0))
            (.seq (.ite (.cmp .equal (lv (nm "vl")) (cw 0))
                (.call (some (none, none)) (nm "mpt_fail") [cw 12]) .skip)
              (.call none (nm "node_new_leaf")
                [lv (nm "node"), cw 0, ldK "node" 160, lv (nm "vl")])) .skip)
          (.seq (.ite cbCondAnd cbOne .skip) (.return (lv (nm "node")))))))))

def params_col : List (MlS × ShapeHOL) := [(nm "node", .one)]

theorem entry_col : fnEntry Guest.Software.guestFn__collapse_branch =
    (nm "_collapse_branch", params_col, colBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_col :
    guestCode (nm "_collapse_branch") = some (params_col, colBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 276) (by decide)) ⟨_, rfl⟩
    entry_col

/-- The named locals of the counting loop. -/
def kvCB (N C X I : BitVec 64) : List (MlS × BitVec 64) :=
  [(nm "node", N), (nm "count", C), (nm "idx", X), (nm "i", I)]

theorem lkvCB_count {N C X I W : BitVec 64} {s : State σ} (h : LKV (kvCB N C X I) s.locals) :
    LKV (kvCB N W X I) (setVarHOLFinite (nm "count") (.val (.word W)) s).locals := by
  refine lkv_upd_gen h (by simp [kvCB]) ?_
  intro p hp hne
  simp only [kvCB, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl <;>
    first | exact absurd rfl hne | exact ⟨by dsimp only; decide, by simp [kvCB]⟩

theorem lkvCB_idx {N C X I W : BitVec 64} {s : State σ} (h : LKV (kvCB N C X I) s.locals) :
    LKV (kvCB N C W I) (setVarHOLFinite (nm "idx") (.val (.word W)) s).locals := by
  refine lkv_upd_gen h (by simp [kvCB]) ?_
  intro p hp hne
  simp only [kvCB, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl <;>
    first | exact absurd rfl hne | exact ⟨by dsimp only; decide, by simp [kvCB]⟩

theorem lkvCB_i {N C X I W : BitVec 64} {s : State σ} (h : LKV (kvCB N C X I) s.locals) :
    LKV (kvCB N C X W) (setVarHOLFinite (nm "i") (.val (.word W)) s).locals := by
  refine lkv_upd_gen h (by simp [kvCB]) ?_
  intro p hp hne
  simp only [kvCB, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl <;>
    first | exact absurd rfl hne | exact ⟨by dsimp only; decide, by simp [kvCB]⟩

/-- Loop locals: `i <= 16`, `idx < 16`. -/
def CbL (N : BitVec 64) (m : LocalsH) : Prop :=
  ∃ C X I : BitVec 64, LKV (kvCB N C X I) m ∧ I.toNat ≤ 16 ∧ X.toNat < 16

/-- After the loop: `i = 16`. -/
def CbLx (N : BitVec 64) (m : LocalsH) : Prop :=
  ∃ C X : BitVec 64, LKV (kvCB N C X 16) m ∧ X.toNat < 16

theorem less16 {I : BitVec 64} (hI : I.toNat ≤ 16) :
    Flapjack.Compiler.Encoders.Asm.wordCmpHOL .less I (BitVec.ofNat 64 16) = decide (I.toNat < 16) := by
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Flapjack.Compiler.Encoders.Asm.holAsmSignedLess, BitVec.toNat_ofNat]
  have h1 : I.toNat < 2^(64-1) := by norm_num; omega
  have h2 : 16 % 2^64 < 2^(64-1) := by norm_num
  have h3 : 16 % 2^64 = 16 := by norm_num
  rw [if_pos h1, if_pos h2, h3]

theorem condTrue_less {s : State σ} {I : BitVec 64}
    (hi : s.locals.lookup (nm "i") = some (.val (.word I))) (hI : I.toNat ≤ 16)
    (h : CondTrue s (.cmp .less (lv (nm "i")) (cw 16))) : I.toNat < 16 := by
  obtain ⟨w, hw, hne⟩ := h
  have e := ev_cmp (o := .less) (ev_lw hi) (ev_cw s 16)
  change ev s _ = _ at hw
  rw [e] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  rw [less16 hI] at hne
  by_contra hlt
  simp [hlt] at hne

theorem notCond_less {s : State σ} {I : BitVec 64}
    (hi : s.locals.lookup (nm "i") = some (.val (.word I))) (hI : I.toNat ≤ 16)
    (h : ev s (.cmp .less (lv (nm "i")) (cw 16)) = some (.val (.word 0))) : I = 16 := by
  have e := ev_cmp (o := .less) (ev_lw hi) (ev_cw s 16)
  rw [e] at h
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h
  rw [less16 hI] at h
  have h16 : I.toNat = 16 := by
    by_contra hne
    have : I.toNat < 16 := by omega
    simp [this] at h
  exact BitVec.eq_of_toNat_eq (by simpa using h16)

/-- `CbE N Γ`: `N` is a branch object. -/
def CbE (N : BitVec 64) (Γ : Gam) : Prop := ∃ o ∈ Γ, o.base = N ∧ o.ty = Types.tNBRANCH

/-- The counting loop only reads: it preserves `CbE` and ends with `i = 16`. -/
theorem cbLoop_G {sg : Sig} {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0) guestCtx)
    {N : BitVec 64} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0)
        (LKV (kvCB N 0 0 0)) (fun Γ _ _ => CbE N Γ))
      cbLoop
      (GP (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0)
        (CbLx N) (fun Γ _ _ => CbE N Γ) Rv) := by
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0 with hadef
  have hbody : ∀ C X I : BitVec 64, I.toNat < 16 → X.toNat < 16 →
      HoareG σ guestCtx (GI a (LKV (kvCB N C X I)) (fun Γ _ _ => CbE N Γ))
        (.seq (.ite (.cmp .notEqual (.load .one (childAddrI (nm "node") (nm "i"))) (cw 0))
          (.seq (.assign .local (nm "count") (.op .add [lv (nm "count"), cw 1]))
            (.assign .local (nm "idx") (lv (nm "i")))) .skip)
          (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))
        (GP a (CbL N) (fun Γ _ _ => CbE N Γ) Rv) := by
    intro C X I hI hX
    have hnode : (nm "node", N) ∈ kvCB N C X I := by simp [kvCB]
    refine gp_seq (L := fun m => ∃ C' X' : BitVec 64, LKV (kvCB N C' X' I) m ∧ X'.toNat < 16)
      (E := fun Γ _ _ => CbE N Γ) ?_ ?_
    · refine hoareG_ite ?_ ?_
      · refine hoareG_pre (P := GI a (LKV (kvCB N C X I)) (fun Γ _ _ => CbE N Γ)) ?_
          (fun s _ h => h.1)
        refine gp_seq (L := LKV (kvCB N (C + 1) X I)) (E := fun Γ _ _ => CbE N Γ) ?_ ?_
        · refine gp_assign ha.hH (fun s hs hL v hv => ?_)
          have e : v = .val (.word (C + 1)) :=
            Option.some.inj (hv.symm.trans (ev_add2 (ev_lw (hL (nm "count", C) (by simp [kvCB])))
              (ev_cw s 1)))
          subst e
          exact lkvCB_count hL
        · refine gp_post (L := LKV (kvCB N (C + 1) I I)) ?_
            (fun m h => ⟨C + 1, I, h, hI⟩) (fun Γ q M h => h)
          refine gp_assign ha.hH (fun s hs hL v hv => ?_)
          have e : v = .val (.word I) :=
            Option.some.inj (hv.symm.trans (ev_lw (hL (nm "i", I) (by simp [kvCB]))))
          subst e
          exact lkvCB_idx hL
      · exact hoareG_pre (gp_skip (L := fun m => ∃ C' X' : BitVec 64, LKV (kvCB N C' X' I) m ∧ X'.toNat < 16)
          (E := fun Γ _ _ => CbE N Γ) (fun s h => ⟨⟨C, X, h.1, hX⟩, h.2⟩)) (fun s _ h => h.1)
    · refine gp_assign ha.hH (fun s hs ⟨C', X', hL, hX'⟩ v hv => ?_)
      have e : v = .val (.word (I + 1)) :=
        Option.some.inj (hv.symm.trans (ev_add2 (ev_lw (hL (nm "i", I) (by simp [kvCB])))
          (ev_cw s 1)))
      subst e
      refine ⟨C', X', I + 1, lkvCB_i hL, ?_, hX'⟩
      have h1 : (1 : BitVec 64).toNat = 1 := rfl
      rw [BitVec.toNat_add, h1, Nat.mod_eq_of_lt (by omega)]
      omega
  refine hoareG_pre (P := GI a (CbL N) (fun Γ _ _ => CbE N Γ)) ?_
    (fun s _ ⟨hL, rest⟩ => ⟨⟨0, 0, 0, hL, by simp, by simp⟩, rest⟩)
  refine gp_while ha.hH (c := .cmp .less (lv (nm "i")) (cw 16)) ?_ ?_
  · intro s hs hp hg
    obtain ⟨⟨⟨C, X, I, hL, hI, hX⟩, rest⟩, hc⟩ := hp
    have hi := hL (nm "i", I) (by simp [kvCB])
    exact hbody C X I (condTrue_less hi hI hc) hX s hs ⟨hL, rest⟩ hg
  · intro s hs ⟨⟨C, X, I, hL, hI, hX⟩, rest⟩ hc
    have hi := hL (nm "i", I) (by simp [kvCB])
    have := notCond_less hi hI hc
    subst this
    exact ⟨⟨C, X, hL, hX⟩, rest⟩

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.code_col
#print axioms InitECandidate.Solver.MemSafe.Ins.cbLoop_G
