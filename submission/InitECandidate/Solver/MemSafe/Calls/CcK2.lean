import InitECandidate.Solver.MemSafe.Calls.CcK3
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_callcode`: the block from the first `warm_address` (frames14)

**`oc_k2`**: `if warm == 0 { warm_address(to) }`, `dl = calculate_delegation_cost(to)`
(`DlgHyp` + `dlg_val`: `dl.1` is a tracked block), `code_address = dl.1`,
`if dl.0 != 0 { charge_gas(dl.2); warm_address(code_address) }`, then `oc_k3`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Calls
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

section proof
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs

/-- The argument `code_address0 = ev + 240` of a `.buf 20` callee. -/
theorem ca0_argsOK (hfs : fs = (e, c) :: rest) {u : State σ} {xs : List (MlS × ValueHOL 64)}
    (hL : LocsAre u.locals xs)
    (l9 : xs.lookup (nm "code_address0") = some (.val (.word (e + BitVec.ofNat 64 240))))
    {vs : List (ValueHOL 64)} (hvs : evs u [lv (nm "code_address0")] = some vs) {Γ1 : Gam} {p1 : Ptrs}
    (hrun : RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 Γ1 u p0 p1)
    (hch : ChainL guestC tEV tCK Γ1 u fs) : ArgsOK guestC Γ1 p1 [.buf 20] vs := by
  rw [evs_cons (la_ev hL l9) evs_nil] at hvs
  cases hvs
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    exact ⟨_, rfl, addr_bufOK hfs hrun hch⟩
  · simp at hpt

/-- **`ccK2`**. -/
theorem cc_k2 (hP : PreHyps σ) (hCH : CallHyps σ) (hfs : fs = (e, c) :: rest)
    (hPh : Phi s0 < 2 ^ 64) (ha0 : act s0 = 1) {Bs : List (BitVec 64)} {d : Nat} {u0 : State σ} (hu : KC Bs d u0)
    {xs : List (MlS × ValueHOL 64)} (hL : LocsAre u0.locals xs)
    {g0 g1 g2 g3 v0 v1 v2 v3 X0 X1 a0 a1 a2 a3 b0 b1 b2 b3 o0 o1 o2 o3 z0 z1 z2 z3 TO
      cur : BitVec 64}
    (lg : xs.lookup (nm "gasv") = some (wv [g0, g1, g2, g3]))
    (lv7 : xs.lookup (nm "value") = some (wv [v0, v1, v2, v3]))
    (lx : xs.lookup (nm "x") = some (wv [X0, X1]))
    (l1 : xs.lookup (nm "in_start") = some (wv [a0, a1, a2, a3]))
    (l2 : xs.lookup (nm "in_size") = some (wv [b0, b1, b2, b3]))
    (l3 : xs.lookup (nm "out_start") = some (wv [o0, o1, o2, o3]))
    (l4 : xs.lookup (nm "out_size") = some (wv [z0, z1, z2, z3]))
    (lto : xs.lookup (nm "to") = some (.val (.word TO))) (hTO : TO ∈ Bs)
    (l9 : xs.lookup (nm "code_address0") = some (.val (.word (e + BitVec.ofNat 64 240))))
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat)
    (hcur : fld u0.memory e 32 = cur) (hX32 : X1.toNat % 32 = 0)
    (hXb : cur.toNat + X1.toNat < 2 ^ 37)
    (hout : Struct.isZeroF z0 z1 z2 z3 = 0 → (Struct.satWordF o0 o1 o2 o3).toNat +
      (Struct.satWordF z0 z1 z2 z3).toNat ≤ cur.toNat + X1.toNat)
    (hin : Struct.isZeroF b0 b1 b2 b3 = 0 → (Struct.satWordF a0 a1 a2 a3).toNat +
      (Struct.satWordF b0 b1 b2 b3).toNat ≤ cur.toNat + X1.toNat)
    (hd : (mcgSt v0 v1 v2 v3).toNat + 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) ccK2 (QCall Γ0 s0) := by
  unfold ccK2
  let F1 : State σ → Prop := fun t => KC Bs d t ∧ t.locals = u0.locals ∧ Slots e t.memory u0.memory
  have hS0 : Slots e u0.memory u0.memory := fun k _ => rfl
  refine hoareG_seq (R := JP Γ0 s0 F1) (hoareG_ite ?_ ?_)
    (fun r t _ hr _ h => h.elim (fun h' => absurd h'.1 hr) (fun h' => h'.2)) ?_
  · refine hoareG_pre (hoareG_unseq (hq_tabC hfs (postOKC_jp (p0 := p0) (fs := fs) ha0 F1)
      (fun g h => h) wa_memC wa_fpC callE_wa hu
      (fun vs hvs Γ1 p1 hrun hch _ _ => ca0_argsOK hfs hL l9 hvs hrun hch)
      fun st hk hkE hk112 => hoareG_skip fun t _ ht => Or.inl ⟨rfl, ?_⟩)) fun t _ h => h.1
    rw [ht]
    exact ⟨kcall_loc hk _, rfl, slots_tab hkE hk112 hS0⟩
  · exact hoareG_skip fun t _ ⟨ht, _⟩ => Or.inl ⟨rfl, by rw [ht]; exact ⟨hu, rfl, hS0⟩⟩
  intro t1 ht1 hJ hg
  rcases hJ with ⟨-, hk1, hl1, hS1⟩ | ⟨h', -⟩
  swap
  · exact absurd rfl h'
  have hL1 : LocsAre t1.locals xs := by rw [hl1]; exact hL
  -- `dl = calculate_delegation_cost(to)`
  refine (hq_dlgB hCH.dlg hfs ha0 hk1 (la_ev hL1 l9)
    fun a b cc st hk2 hab hkE2 hk112 => ?_) t1 ht1 rfl hg
  have hS2 : Slots e st.memory u0.memory := by
    intro k hk
    rw [← hS1 k hk]
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hk
    rcases hk with rfl | rfl | rfl | rfl
    · exact hkE2 2 (by simp [evProtSlots])
    · exact hkE2 29 (by simp [evProtSlots])
    · exact hkE2 4 (by simp [evProtSlots])
    · exact hk112
  have hL2 := la_set (s := { st with locals := t1.locals }) hL1 (nm "dl") (wv [a, b, cc])
  -- `code_address = dl.1`
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  rw [Struct.ev_wv_word (hL2 (nm "dl") (wv [a, b, cc]) rfl) (i := 1) (by simp)] at hv
  cases hv
  refine hoareG_conseq (Q := QCall Γ0 s0) ?_ (fun _ _ h => h) (fun r t _ _ hq => qcall_loc hq _)
  set u3 := setVarHOLFinite (nm "code_address") (.val (.word b))
    (setVarHOLFinite (nm "dl") (wv [a, b, cc]) { st with locals := t1.locals }) with hu3def
  have hk3 : KC (b :: Bs) d u3 := kcall_congr hk2 rfl rfl rfl rfl
  have hL3 : LocsAre u3.locals ((nm "code_address", .val (.word b)) :: (nm "dl", wv [a, b, cc]) :: xs) :=
    la_set hL2 _ _
  let F2 : State σ → Prop := fun t => KC (b :: Bs) d t ∧ t.locals = u3.locals ∧ Slots e t.memory u0.memory
  refine hoareG_seq (R := JP Γ0 s0 F2) ?_
    (fun r t _ hr _ h => h.elim (fun h' => absurd h'.1 hr) (fun h' => h'.2)) ?_
  · unfold ocDlgIte
    refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨ht, _⟩ => Or.inl ⟨rfl, by rw [ht]; exact ⟨hk3, rfl, hS2⟩⟩)
    refine hoareG_pre (P := fun t => t = u3) ?_ fun t _ h => h.1
    refine hq_charge hfs hPh (postOKC_jp (p0 := p0) (fs := fs) ha0 F2) (a := cc) hk3
      (Struct.ev_wv_word (hL3 (nm "dl") (wv [a, b, cc]) rfl) (i := 2) (by simp))
      fun st4 hk4 _ _ hm4 _ => ?_
    have hS4 : Slots e st4.memory u0.memory := by rw [hm4]; exact slots_charge hS2
    refine hoareG_unseq (hq_tabC hfs (postOKC_jp (p0 := p0) (fs := fs) ha0 F2)
      (fun g h => h) wa_memC wa_fpC callE_wa (kcall_mono (kcall_loc hk4 u3.locals) (Nat.le_add_right d _))
      (fun vs hvs Γ1 p1 hrun hch hE hB => ?_)
      fun st5 hk5 hkE5 hk5_112 => hoareG_skip fun t _ ht => Or.inl ⟨rfl, ?_⟩)
    · rw [evs_cons (la_ev (s := { st4 with locals := u3.locals }) (x := nm "code_address")
        (v := .val (.word b)) hL3 rfl) evs_nil] at hvs
      cases hvs
      refine ⟨rfl, fun i pt v hpt hv => ?_⟩
      rcases i with _ | i
      · simp only [waSg, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
        subst hpt; subst hv
        exact ⟨_, rfl, hB b (List.mem_cons_self ..)⟩
      · simp [waSg] at hpt
    · rw [ht]
      exact ⟨kcall_loc hk5 _, rfl, slots_tab hkE5 hk5_112 hS4⟩
  intro t4 ht4 hJ hg
  rcases hJ with ⟨-, hk4, hl4, hS4⟩ | ⟨h', -⟩
  swap
  · exact absurd rfl h'
  have hL4 : LocsAre t4.locals ((nm "code_address", .val (.word b)) :: (nm "dl", wv [a, b, cc]) :: xs) := by
    rw [hl4]; exact hL3
  have e16 := hS4 16 (by simp)
  have e232 := hS4 232 (by simp)
  have e32 := hS4 32 (by simp)
  exact cc_k3 hP hCH hfs hPh ha0 hk4 (List.mem_cons_self ..) hL4
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) lg))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) lv7))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) lx))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) l1))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) l2))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) l3))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) l4))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) lto)) (List.mem_cons_of_mem _ hTO)
    rfl (lk_cons_ne (by decide) rfl)
    (by rw [e16, e232]; exact hsp) (by rw [e32, hcur]) hX32 hXb hout hin hd
    t4 ht4 rfl hg

end proof

end InitECandidate.Solver.MemSafe.Calls

#print axioms InitECandidate.Solver.MemSafe.Calls.cc_k2
