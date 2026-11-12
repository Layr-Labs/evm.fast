import InitECandidate.Solver.Spec.Mpt.InsertCost

/-!
# **The tick bound of `_mpt_insert_node`**, from every state

`mpt_insert_node_cost`: with callee bounds `Bnl, Bmf, Bni, Bil, Bcpl, Bse, Bne` of
`node_new_leaf`, `mpt_fail`, `node_invalidate`, `_insert_into_leaf`, `common_prefix_length`,
`_split_extension`, `node_new_ext`, and `node_invalidate`, `common_prefix_length` escape-free,

  `CalleeCost σ X "_mpt_insert_node" ((insMb + 1) * (insB Bnl Bmf Bni Bil Bcpl Bse Bne + 1))`,

`insMb = 2 + (2 ^ 65 - 1) (2 ^ 65 + 4) + 2 ^ 65 + 3 < 2 ^ 131`,
`insB = Bnl + Bmf + Bni + Bil + Bcpl + Bse + Bne + 8`.
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def insB (Bnl Bmf Bni Bil Bcpl Bse Bne : Nat) : Nat := Bnl + Bmf + Bni + Bil + Bcpl + Bse + Bne + 8

theorem insLoopBody_cost {Bnl Bmf Bni Bil Bcpl Bse Bne : Nat}
    (hnl : CalleeCost σ X (nm "node_new_leaf") Bnl) (hmf : CalleeCost σ X (nm "mpt_fail") Bmf)
    (hni : CalleeCost σ X (nm "node_invalidate") Bni)
    (hil : CalleeCost σ X (nm "_insert_into_leaf") Bil)
    (hcpl : CalleeCost σ X (nm "common_prefix_length") Bcpl)
    (hse : CalleeCost σ X (nm "_split_extension") Bse) (hne : CalleeCost σ X (nm "node_new_ext") Bne) :
    Cost σ X insLoopBody (insB Bnl Bmf Bni Bil Bcpl Bse Bne) := by
  have nh : ∀ {r : Option (VarKind × MlS)}, ∀ r' hid hv (hp : ProgHOL 64),
      (some (r, none) : Option (Option (VarKind × MlS) × Option (MlS × MlS × ProgHOL 64))) =
        some (r', some (hid, hv, hp)) → Cost σ X hp 0 := by
    intro _ _ _ _ _ h; cases h
  have c5 : ∀ {a b c d e : ProgHOL 64}, Cost σ X a 0 → Cost σ X b 0 → Cost σ X c 0 →
      Cost σ X d 0 → Cost σ X e 0 → Cost σ X (.seq a (.seq b (.seq c (.seq d e)))) 0 :=
    fun ha hb hc hd he => cost_seq ha (cost_seq hb (cost_seq hc (cost_seq hd he)))
  have cExtDesc : Cost σ X insExtDesc 0 := by
    unfold insExtDesc
    exact c5 (cost_assign _ _ _) (cost_assign _ _ _) (cost_assign _ _ _) (cost_assign _ _ _)
      (cost_assign _ _ _)
  have cBrEnd : Cost σ X insBrEnd 0 := by
    unfold insBrEnd
    exact cost_seq (cost_store _ _) (cost_seq (cost_store _ _) (cost_assign _ _ _))
  have cBrDesc : Cost σ X insBrDesc 0 := by
    unfold insBrDesc
    exact cost_dec (c5 (cost_assign _ _ _) (cost_assign _ _ _) (cost_assign _ _ _)
      (cost_assign _ _ _) (cost_assign _ _ _))
  have cTail : Cost σ X insTail 0 := by
    unfold insTail
    exact cost_seq (cost_ite (cost_assign _ _ _) (cost_store _ _))
      (cost_seq (cost_assign _ _ _) (cost_seq (cost_assign _ _ _) (cost_assign _ _ _)))
  have hc : Cost σ X insLoopBody (0 + (max (1 + Bnl + 0) (max (1 + Bmf + 0) 0 +
      (1 + Bni + 0 + max (1 + Bil + 0) (max (1 + Bcpl + max 0 (1 + Bse + max (1 + Bne + 0) 0))
        (max 0 0)))) + 0)) := by
    unfold insLoopBody insInner insMain insNode insKinds insExt insSplit insBranch insLeaf
      insNewLeaf failHashed callD
    exact cost_dec (cost_dec (cost_dec (cost_dec (cost_seq (cost_assign _ _ _)
      (cost_seq (cost_ite (cost_call (Bh := 0) hnl nh)
        (cost_dec (cost_seq (cost_ite (cost_call (Bh := 0) hmf nh) cost_skip)
          (cost_seq (cost_call (Bh := 0) hni nh)
            (cost_ite (cost_call (Bh := 0) hil nh)
              (cost_ite
                (cost_dec (cost_dec (cost_decCall hcpl (cost_ite cExtDesc
                  (cost_decCall hse (cost_ite (cost_call (Bh := 0) hne nh) (cost_assign _ _ _)))))))
                (cost_ite cBrEnd cBrDesc)))))))
        cTail)))))
  exact hc.mono (by unfold insB; omega)

/-- **`_mpt_insert_node`**, from every state. -/
theorem mpt_insert_node_cost (hC : X.code.lookup = guestCode) {Bnl Bmf Bni Bil Bcpl Bse Bne : Nat}
    (hnl : CalleeCost σ X (nm "node_new_leaf") Bnl) (hmf : CalleeCost σ X (nm "mpt_fail") Bmf)
    (hni : CalleeCost σ X (nm "node_invalidate") Bni)
    (hil : CalleeCost σ X (nm "_insert_into_leaf") Bil)
    (hcpl : CalleeCost σ X (nm "common_prefix_length") Bcpl)
    (hse : CalleeCost σ X (nm "_split_extension") Bse) (hne : CalleeCost σ X (nm "node_new_ext") Bne)
    (heInv : CalleeEscFree σ X (nm "node_invalidate"))
    (heCpl : CalleeEscFree σ X (nm "common_prefix_length")) :
    CalleeCost σ X (nm "_mpt_insert_node")
      ((insMb + 1) * (insB Bnl Bmf Bni Bil Bcpl Bse Bne + 1)) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨ps, hcode⟩ := lookupCode_some' hl
  rw [code_mpt_insert_node] at hcode
  simp only [Option.some.injEq, Prod.mk.injEq] at hcode
  obtain ⟨-, rfl, -⟩ := hcode
  have H := hdecI_of_hoare (σ := σ) (X := X) (c := goCond) (body := insLoopBody) InsI insMu
    (fun s => ¬ InsDoomed X s) (fun _ h => h) (fun _ => rfl) (fun _ h hd => h hd) (ins_dec hC)
  have hloop : CostP σ X InsI (.while goCond insLoopBody)
      ((insMb + 1) * (insB Bnl Bmf Bni Bil Bcpl Bse Bne + 1)) :=
    costP_while_doomed InsI insMu insMb (InsDoomed X)
      (insLoopBody_cost hnl hmf hni hil hcpl hse hne) (fun _ h => h)
      (fun s _ _ _ _ => insMu_le s) (fun s hs hI hc _ hnd hexit => H s hs hI hc hnd hexit)
      (ins_doom hC heInv heCpl)
  refine cost_of_costP ?_
  unfold insBody
  refine costP_dec (P' := fun _ => True) ?_ (fun _ _ _ _ _ _ => trivial)
  refine costP_dec (P' := fun t => t.locals.lookup (nm "slot") = some (.val (.word 0))) ?_
    (fun s _ _ v hv _ => by rw [ev_cw] at hv; cases hv; exact lk_set_self _ _ _)
  refine costP_dec (P' := InsI) ?_ (fun s _ hs v _ _ => Or.inr fun S N h1 _ h3 _ => ?_)
  · have := costP_seq_cost hloop (cost_return (σ := σ) (X := X) (lv (nm "result")))
    simpa using this
  · rw [lk_set_ne _ _ (by decide), hs] at h1
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h1
    exact absurd h1.symm h3

end InitECandidate.Solver.Spec.Mpt
