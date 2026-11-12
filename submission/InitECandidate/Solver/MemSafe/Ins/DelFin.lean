import InitECandidate.Solver.MemSafe.Ins.InsBody
import InitECandidate.Solver.MemSafe.Ins.NcVal

set_option autoImplicit false

/-!
# `_delete_ext_finish` at `guestHooksR`

```
fun 1 _delete_ext_finish(1 node, 1 seg, 1 sl, 1 nc) {
  if nc == 0 { return 0; }
  var ck = lds 1 (nc + NODE_KIND);
  if ck == NODE_BRANCH { st node + NODE_CHILD, nc; return node; }
  if ck == NODE_HASHED { mpt_fail(MPT_E_HASHED); }
  var 1 cat = nibbles_concat(seg, sl, lds 1 (nc + NODE_NIB), lds 1 (nc + NODE_NIB_LEN));
  var cl = sl + (lds 1 (nc + NODE_NIB_LEN));
  if ck == NODE_EXT { return node_new_ext(cat, cl, lds 1 (nc + NODE_CHILD)); }
  return node_new_leaf(cat, cl, lds 1 (nc + NODE_VAL), lds 1 (nc + NODE_VAL_LEN));
}
```
The fresh buffer `cat` is the nibble array of the new ext / leaf: after the config stage it must be
adopted as a `` object (the new node's slice is then `NIn`). Today `nibbles_concat` only needs
`al + bl < 2^64`, which comes from the `NIn` lengths.
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

/-- `lds 1 (x + k)`. -/
def ldK (x : String) (k : Nat) : ExpHOL 64 := .load .one (.op .add [lv (nm x), cw k])

def dxCat : ProgHOL 64 :=
  .decCall (nm "cat") .one (nm "nibbles_concat")
    [lv (nm "seg"), lv (nm "sl"), ldK "nc" 32, ldK "nc" 40]
    (.dec (nm "cl") .one (.op .add [lv (nm "sl"), ldK "nc" 40])
      (.seq (.ite (.cmp .equal (lv (nm "ck")) (cw 2))
          (.call none (nm "node_new_ext") [lv (nm "cat"), lv (nm "cl"), ldK "nc" 48]) .skip)
        (.call none (nm "node_new_leaf")
          [lv (nm "cat"), lv (nm "cl"), ldK "nc" 48, ldK "nc" 56])))

def dxBody : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "nc")) (cw 0)) (.return (cw 0)) .skip)
    (.dec (nm "ck") .one (ldK "nc" 0)
      (.seq (.ite (.cmp .equal (lv (nm "ck")) (cw 3))
          (.seq (.store (.op .add [lv (nm "node"), cw 48]) (lv (nm "nc")))
            (.return (lv (nm "node")))) .skip)
        (.seq (.ite (.cmp .equal (lv (nm "ck")) (cw 0))
            (.call (some (none, none)) (nm "mpt_fail") [cw 2]) .skip)
          dxCat)))

def params_dx : List (MlS × ShapeHOL) :=
  [(nm "node", .one), (nm "seg", .one), (nm "sl", .one), (nm "nc", .one)]

theorem entry_dx : fnEntry Guest.Software.guestFn__delete_ext_finish =
    (nm "_delete_ext_finish", params_dx, dxBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_dx :
    guestCode (nm "_delete_ext_finish") = some (params_dx, dxBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 277) (by decide)) ⟨_, rfl⟩
    entry_dx

theorem rt_ext {Γ Γ' : Gam} (he : Ext Γ Γ') {w : BitVec 64} (h : Rt Γ w) : Rt Γ' w := by
  rcases h with rfl | ⟨o, ho, hb, ht⟩
  · exact Or.inl rfl
  · obtain ⟨o', ho', hb', ht', -⟩ := he o ho
    exact Or.inr ⟨o', ho', hb'.trans hb, ht' ▸ ht⟩

theorem rt_of_obj {Γ : Gam} {w : BitVec 64} {t : Nat} (ht : t ∈ Node.nodeTys)
    (h : ∃ o ∈ Γ, o.base = w ∧ o.ty = t) : Rt Γ w := by
  obtain ⟨o, ho, hb, hty⟩ := h
  exact Or.inr ⟨o, ho, hb, hty ▸ ht⟩

/-- The return obligation for a node-or-null result. -/
theorem rv_rt {Γ' : Gam} {p p' : Ptrs} {vs : List (ValueHOL 64)} {w : BitVec 64} (h : Rt Γ' w) :
    RetOK Γ' p p' vs [.fits Types.nodeU] (.val (.word w)) ∧
      ∃ w', (.val (.word w) : ValueHOL 64) = .val (.word w') ∧ Rt Γ' w' :=
  ⟨retOK_fits1 (fits_of_rt h), w, rfl, h⟩

/-- **The child store** `st node + 48, v` into an `NEXT` object (slot 6, `nodeU`). -/
theorem extChildSt_G {sg : Sig} {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0) guestCtx)
    {kv : List (MlS × BitVec 64)} {nd v : MlS} {N V : BitVec 64}
    (hn : (nd, N) ∈ kv) (hv : (v, V) ∈ kv)
    {EΓ : Gam → Prop}
    (hEn : ∀ Γ, EΓ Γ → (∃ o ∈ Γ, o.base = N ∧ o.ty = Types.tNEXT) ∧ Fits Γ Types.nodeU V)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0)
        (LKV kv) (fun Γ _ _ => EΓ Γ))
      (.store (.op .add [lv nd, cw 48]) (lv v))
      (GP (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0)
        (LKV kv) (fun Γ _ _ => EΓ Γ) Rv) := by
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0 with hadef
  refine gp_stWX ha (L := LKV kv) (E := fun Γ _ _ => EΓ Γ) (E' := fun Γ _ _ => EΓ Γ)
    (fun s v' hL hv' => ⟨V, by rw [ev_lw (hL _ hv)] at hv'; exact (Option.some.inj hv').symm⟩) ?_
    (fun s Γ q A V' _ _ hE _ _ => hE)
  intro s Γ q A V' hL hh hE hAe he
  have hVW : V' = V := by
    rw [ev_lw (hL _ hv)] at he; simpa using he.symm
  have hA : A = N + BitVec.ofNat 64 (8 * 6) := by
    rw [ev_add_cw (hL _ hn) 48] at hAe
    simpa using (Option.some.inj hAe).symm
  obtain ⟨⟨o, ho, hob, hot⟩, hfit⟩ := hEn Γ hE
  obtain ⟨p1, hp1, hord, hLy, -⟩ := hh.1
  have hsz : (Types.guestC.ty o.ty).minSz ≤ o.size := (hLy.1 o ho).2.2.2.1
  have hsl : o.HasSlot 6 := by
    rw [hot, Types.ty_NEXT] at hsz
    simp only [Types.nextTy] at hsz
    unfold Obj.HasSlot; omega
  have hsl6 : (Types.guestC.ty o.ty).slot 6 = Types.nodeU := by
    rw [hot, Types.ty_NEXT]; simp [Types.nextTy, TyD.slot]
  refine ⟨o, ho, 6, hsl, ?_, ?_, ?_⟩
  · show (a.Cb.ty o.ty).slot 6 ≠ .prot
    show (Types.guestC.ty o.ty).slot 6 ≠ .prot
    rw [hsl6]; simp [Types.nodeU]
  · rw [hA]; unfold Obj.cell; rw [hob]
  · show Fits Γ ((Types.guestC.ty o.ty).slot 6) V'
    rw [hsl6, hVW]; exact hfit

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.code_dx
#print axioms InitECandidate.Solver.MemSafe.Ins.extChildSt_G
