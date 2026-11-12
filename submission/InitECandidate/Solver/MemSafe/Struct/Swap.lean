import InitECandidate.Solver.MemSafe.Struct.PushW

/-!
# `stack_swap_positions(i, j)`

`sum_stack_swap_positions`: with `i, j < SP` (the callers `op_swap`, `op_swapn`,
`op_exchange` check this), the swap writes only the two stack slots — scalar cells of the
stack object — so no protected cell, `Γ` and the globals are unchanged.
-/

namespace InitECandidate.Solver.MemSafe.Struct
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64} {C : Cfg} {H : Hooks σ} {T : STy}

def sgSwap : Sig := ⟨[.any, .any], [], [], false⟩

/-- Both positions are below `SP` of the running frame. -/
def SwapPre (T : STy) (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ i j : BitVec 64, vs = [.val (.word i), .val (.word j)] ∧ ∀ e, EvObj T Γ s e →
    i.toNat < (fSP s.memory e).toNat ∧ j.toNat < (fSP s.memory e).toNat

def SwapQ (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (_ : PanSemResultExact 64)
    (t : State σ) (Γ' : Gam) : Prop :=
  Γ' = Γ ∧ t.globals = s.globals

theorem toNat_slot {SP I : BitVec 64} (h : I.toNat < SP.toNat) :
    (SP - BitVec.ofNat 64 1 - I).toNat = SP.toNat - 1 - I.toNat := by
  have h1 : (SP - BitVec.ofNat 64 1).toNat = SP.toNat - 1 :=
    toNat_sub_one (fun e => by rw [e] at h; simp at h)
  rw [BitVec.toNat_sub, h1]
  have := SP.isLt
  omega

/-- **`stack_swap_positions`**. -/
theorem sum_stack_swap_positions (hC : X.code.lookup = guestCode) (hH : HooksLawful C H)
    (hE : EvCfg C T) (hK : EvHook C H T) :
    SumSpec σ X C H (nm "stack_swap_positions") sgSwap (SwapPre T) (fun _ _ _ _ => False)
      SwapQ := by
  refine sumSpec_of_hoare fun vs body callee rs hl s0 hs0 hloc Γ0 hG0 _ hpre => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, -, -, hA, hB⟩ := lookupCode_two code_stack_swap_positions
    (by decide) hl
  obtain ⟨I, J, hIJ, hlt⟩ := hpre
  simp only [List.cons.injEq, and_true] at hIJ
  obtain ⟨rfl, rfl⟩ := hIJ
  obtain ⟨e, he⟩ := evObj_of_G hE hG0
  obtain ⟨hI, hJ⟩ := hlt e he
  have hG0' := hG0
  obtain ⟨p0, hp0, hord0, hL0, -, -, -, hW0⟩ := hG0'
  have hsm0 := hK.get Γ0 s0 e he.1 he.2.1 (hW0 e he.1)
  obtain ⟨⟨a1, a2, a3, o, ho, hob, hot, hosz⟩, -⟩ := hsm0
  have hiL : s0.locals.lookup (nm "i") = some (.val (.word I)) := by rw [hloc]; exact hA
  have hjL : s0.locals.lookup (nm "j") = some (.val (.word J)) := by rw [hloc]; exact hB
  set F := Fin C H sgSwap (fun a => ProtCell C Γ0 a ∧ False) Γ0 s0 [.val (.word I), .val (.word J)]
    SwapQ with hF
  have hFl : ∀ r (t : State σ) l, F r t → F r { t with locals := l } := fun r t l h => fin_locals h l
  -- the final step
  have hfin : ∀ (t : State σ), InCtx t X → t.globals = s0.globals → t.be = s0.be →
      ModifiesOnly (InSM T Γ0) s0.memory t.memory → F (some (.returned (.val (.word 0)))) t := by
    intro t ht hg hb hmod
    have hGt : G C H Γ0 t := G_sm hH hE hK hG0 he.1 he.2.1 hg (ht.2.1.trans hs0.2.1.symm) hb
      (hmod.mono fun a h => Or.inr h) (evSM_congr (fields_of_inSM hE hord0 hL0 he.1 he.2.1 hmod)
        (hK.get Γ0 s0 e he.1 he.2.1 (hW0 e he.1)))
    intro r' hr' t' h1 h2 h3 h4
    simp only [Option.some.injEq] at hr'
    subst hr'
    refine ⟨Γ0, p0, p0, sumCore_same hp0 (h2.trans hg) (G_congr hH h1 h2 h3 h4 hGt) ?_
      (fun _ _ => retOK_nil _), rfl, h2.trans hg⟩
    intro a ha
    rw [h1]
    exact hmod a fun h => ha (Or.inl (sCell_wCell (inSM_wcell hE hord0 hL0 h)))
  -- `var sp = ..; var stk = ..; var pa = ..; var pb = ..; var a = ..; var b = ..`
  refine hoareG_dec' hFl fun u1 _ hu1 v1 hv1 _ => ?_
  subst u1
  obtain ⟨hv1', -⟩ := ev_evL he.2.2 hv1
  subst hv1'
  refine hoareG_dec' hFl fun u2 _ hu2 v2 hv2 _ => ?_
  subst u2
  obtain ⟨hv2', -⟩ := ev_evL (s := setVarHOLFinite _ _ s0) he.2.2 hv2
  subst hv2'
  generalize hSP : rd s0.memory (e.base + BitVec.ofNat 64 16) = SP at *
  have hSP' : fSP s0.memory e = SP := hSP
  have hSTK' : rd (setVarHOLFinite (nm "sp") (.val (.word SP)) s0).memory
      (e.base + BitVec.ofNat 64 8) = o.base := by rw [hob]; rfl
  rw [hSTK']
  rw [hSP'] at hI hJ a1
  -- the two slot addresses
  have hslot : ∀ (x : MlS) (X : BitVec 64), x ≠ nm "sp" → x ≠ nm "stk" →
      ∀ (u : State σ), u.locals.lookup (nm "sp") = some (.val (.word SP)) →
        u.locals.lookup (nm "stk") = some (.val (.word o.base)) →
        u.locals.lookup x = some (.val (.word X)) →
        ev u (swA x) = some (.val (.word (o.base + (SP - BitVec.ofNat 64 1 - X) *
          BitVec.ofNat 64 32))) := by
    intro x X _ _ u hsp hstk hx
    exact ev_add2 (ev_lw' hstk) (ev_mul2 (ev_sub2 (ev_sub2 (ev_lw' hsp) (ev_cw u 1)) (ev_lw' hx))
      (ev_cw u 32))
  have hpaI : (SP - BitVec.ofNat 64 1 - I).toNat < (fCAP s0.memory e).toNat := by
    rw [toNat_slot hI]; omega
  have hpaJ : (SP - BitVec.ofNat 64 1 - J).toNat < (fCAP s0.memory e).toNat := by
    rw [toNat_slot hJ]; omega
  refine hoareG_dec' hFl fun u3 _ hu3 v3 hv3 _ => ?_
  subst u3
  rw [hslot (nm "i") I (by decide) (by decide) _ (by rw [lk_set_ne _ _ (by decide), lk_set_self])
    (lk_set_self _ _ _) (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hiL)]
    at hv3
  cases hv3
  refine hoareG_dec' hFl fun u4 _ hu4 v4 hv4 _ => ?_
  subst u4
  rw [hslot (nm "j") J (by decide) (by decide) _
    (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_self])
    (by rw [lk_set_ne _ _ (by decide), lk_set_self])
    (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)];
        exact hjL)] at hv4
  cases hv4
  refine hoareG_dec' hFl fun u5 _ hu5 va _ hva => ?_
  subst u5
  refine hoareG_dec' hFl fun u6 _ hu6 vb _ hvb => ?_
  subst u6
  generalize hU : setVarHOLFinite (nm "b") vb (setVarHOLFinite (nm "a") va
    (setVarHOLFinite (nm "pb") (.val (.word (o.base + (SP - BitVec.ofNat 64 1 - J) *
      BitVec.ofNat 64 32))) (setVarHOLFinite (nm "pa") (.val (.word (o.base +
        (SP - BitVec.ofNat 64 1 - I) * BitVec.ofNat 64 32))) (setVarHOLFinite (nm "stk")
          (.val (.word o.base)) (setVarHOLFinite (nm "sp") (.val (.word SP)) s0))))) = U
  have hUm : U.memory = s0.memory := by rw [← hU]; rfl
  have hUg : U.globals = s0.globals := by rw [← hU]; rfl
  have hUb : U.be = s0.be := by rw [← hU]; rfl
  have hUpa : U.locals.lookup (nm "pa") = some (.val (.word (o.base +
      (SP - BitVec.ofNat 64 1 - I) * BitVec.ofNat 64 32))) := by
    rw [← hU, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_self]
  have hUpb : U.locals.lookup (nm "pb") = some (.val (.word (o.base +
      (SP - BitVec.ofNat 64 1 - J) * BitVec.ofNat 64 32))) := by
    rw [← hU, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_self]
  have hUa : U.locals.lookup (nm "a") = some va := by
    rw [← hU, lk_set_ne _ _ (by decide), lk_set_self]
  have hUb' : U.locals.lookup (nm "b") = some vb := by rw [← hU, lk_set_self]
  refine hoareG_seq (R := fun r t => r = none ∧ t.globals = s0.globals ∧ t.be = s0.be ∧
      t.locals = U.locals ∧ ModifiesOnly (InSM T Γ0) s0.memory t.memory) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_store fun u _ hu w v mem hw hv hmem => ?_
    subst hu
    rw [ev_lw' hUpa] at hw; cases hw
    rw [ev_lw' hUb'] at hv; cases hv
    rw [hUm] at hmem
    exact ⟨rfl, hUg, hUb, rfl, stk_store hord0 hL0 ho hot hosz hpaI a3 hvb hmem⟩
  refine hoareG_seq (R := fun r t => r = none ∧ t.globals = s0.globals ∧ t.be = s0.be ∧
      ModifiesOnly (InSM T Γ0) s0.memory t.memory) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_store fun u _ ⟨_, hg, hb, hl, hmod⟩ w v mem hw hv hmem => ?_
    rw [ev_lw' (show u.locals.lookup (nm "pb") = _ by rw [hl]; exact hUpb)] at hw; cases hw
    rw [ev_lw' (show u.locals.lookup (nm "a") = _ by rw [hl]; exact hUa)] at hv; cases hv
    exact ⟨rfl, hg, hb, hmod.trans (stk_store hord0 hL0 ho hot hosz hpaJ a3 hva hmem)⟩
  · refine hoareG_return fun u hu ⟨_, hg, hb, hmod⟩ v hv => ?_
    rw [ev_cw] at hv; cases hv
    exact hfin _ (InCtx.of_eq hu rfl rfl rfl) hg hb hmod

end InitECandidate.Solver.MemSafe.Struct
