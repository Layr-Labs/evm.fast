import InitECandidate.Solver.MemSafe.Struct.Sum

/-!
# The EVM stack: `stack_pop`

`sum_stack_pop`: the summary of `stack_pop` (`guest/src/evm.pnk`). It writes only `EV_SP` of
the running frame (`PWev T [2]`); `Γ`, the globals and the allocator state are unchanged. On a
return the stack was nonempty and `SP` drops by one; the only exception is `EvmErr 2` on an
empty stack, with the state unchanged (`PopQ`).
-/

namespace InitECandidate.Solver.MemSafe.Struct
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {σ : Type} {X : Ctx 64}

/-- No parameters, no result constraint. -/
def sgNone : Sig := ⟨[], [], [], false⟩

/-- What `stack_pop` does. -/
def PopQ (T : STy) (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64)
    (t : State σ) (Γ' : Gam) : Prop :=
  Γ' = Γ ∧ t.globals = s.globals ∧ ∀ e, EvObj T Γ s e →
    ((∃ v, r = .returned v) → fSP s.memory e ≠ 0 ∧
      t.memory = upd s.memory (e.cell 2) (fSP s.memory e - 1)) ∧
    ((∃ x v, r = .exception x v) → fSP s.memory e = 0 ∧ t.memory = s.memory)

/-- The run of `stack_pop`'s body. -/
def PopPost (s0 : State σ) (e : Obj) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  t.globals = s0.globals ∧
    ((r = some (.exception (nm "EvmErr") (.val (.word (BitVec.ofNat 64 2)))) ∧
        fSP s0.memory e = 0 ∧ t.memory = s0.memory) ∨
      (∃ v, r = some (.returned v) ∧ fSP s0.memory e ≠ 0 ∧
        t.memory = upd s0.memory (e.cell 2) (fSP s0.memory e - 1)))

theorem popRun {s0 : State σ} {e : Obj} (he : s0.globals.lookup gEv = some (.val (.word e.base))) :
    HoareG σ X (fun u => u = s0) popBody (fun r t => PopPost s0 e r t) := by
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst hs
  obtain ⟨rfl, -⟩ := ev_evL he hv
  -- `sp` holds `SP`
  have hSP : rd s.memory (e.base + BitVec.ofNat 64 16) = fSP s.memory e := rfl
  rw [hSP]
  generalize hS : fSP s.memory e = SP
  refine hoareG_seq (R := fun r t => (r = some (.exception (nm "EvmErr")
      (.val (.word (BitVec.ofNat 64 2)))) ∧ t.memory = s.memory ∧ t.globals = s.globals ∧
      SP = 0) ∨ (r = none ∧ t = setVarHOLFinite (nm "sp") (.val (.word SP)) s ∧ SP ≠ 0))
    ?_ ?_ ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_raise fun u _ ⟨hu, w, hw, hw0⟩ v hv => ?_
      subst hu
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lv_set] at hx; cases hx
      rw [ev_cw] at hy; cases hy
      rw [ev_cw] at hv; cases hv
      exact Or.inl ⟨rfl, rfl, rfl, cmp_eq_true hxy⟩
    · refine hoareG_skip fun u _ ⟨hu, hc⟩ => ?_
      subst hu
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_lv_set] at hx; cases hx
      rw [ev_cw] at hy; cases hy
      exact Or.inr ⟨rfl, rfl, cmp_eq_false hxy⟩
  · rintro r t - hr - (⟨rfl, hm, hg, h0⟩ | ⟨rfl, -⟩)
    · exact ⟨hg, Or.inl ⟨rfl, hS ▸ h0, hm⟩⟩
    · exact absurd rfl hr
  · refine hoareG_pre (P := fun t => t = setVarHOLFinite (nm "sp") (.val (.word SP)) s ∧ SP ≠ 0)
      ?_ (fun t _ h => by
        rcases h with ⟨h, -⟩ | ⟨-, h1, h2⟩
        · cases h
        · exact ⟨h1, h2⟩)
    refine hoareG_seq (R := fun r t => r = none ∧ t = setVarHOLFinite (nm "sp")
        (.val (.word (SP - 1))) (setVarHOLFinite (nm "sp") (.val (.word SP)) s) ∧ SP ≠ 0)
      ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoareG_assign fun u _ ⟨hu, h0⟩ v hv _ => ?_
      subst hu
      rw [ev_sub2 (ev_lv_set _ _ _) (ev_cw _ 1)] at hv
      cases hv
      exact ⟨rfl, rfl, h0⟩
    · refine hoareG_seq (R := fun r t => r = none ∧ t.globals = s.globals ∧
          t.memory = upd s.memory (e.cell 2) (SP - 1) ∧ SP ≠ 0)
        ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      · refine hoareG_store fun u _ ⟨_, hu, h0⟩ w v mem hw hv hmem => ?_
        subst hu
        rw [ev_evA (s := setVarHOLFinite _ _ (setVarHOLFinite _ _ s)) he] at hw; cases hw
        rw [ev_lv_set] at hv; cases hv
        exact ⟨rfl, rfl, store_word hmem, h0⟩
      · refine hoareG_return fun u _ ⟨_, hg, hm, h0⟩ v _ => ?_
        exact ⟨hg, Or.inr ⟨v, rfl, hS ▸ h0, by rw [hS]; exact hm⟩⟩

/-- **`stack_pop`**: writes only `EV_SP` of the running frame. -/
theorem sum_stack_pop {C : Cfg} {H : Hooks σ} {T : STy} (hC : X.code.lookup = guestCode)
    (hH : HooksLawful C H) (hE : EvCfg C T) (hK : EvHook C H T) :
    SumSpec σ X C H (nm "stack_pop") sgNone (fun _ _ _ => True) (PWev T [2]) (PopQ T) := by
  intro vs body callee rs hl s hs _ r hr hg Γ hG _ _
  rw [hC] at hl
  obtain ⟨rfl, -, rfl⟩ := lookupCode_zero code_stack_pop hl
  obtain ⟨e, he⟩ := evObj_of_G hE hG
  have hpost := popRun (X := X) he.2.2 s hs rfl (by rw [hr]; exact hg)
  rw [hr] at hpost
  have hd : (evaluateHOLFiniteState s popBody).2.memaddrs = s.memaddrs :=
    (inCtx_eval hs popBody).2.1.trans hs.2.1.symm
  have hbe : (evaluateHOLFiniteState s popBody).2.be = s.be := Spec.Inv.be_preserved s popBody
  generalize (evaluateHOLFiniteState s popBody).2 = t at hpost hd hbe
  obtain ⟨hgl, hcase⟩ := hpost
  have hG0 := hG
  obtain ⟨p, hps, hord, hL, -, -, -, hW⟩ := hG
  have huniq : ∀ e', EvObj T Γ s e' → e' = e := fun e' h' => evObj_unique hL h' he
  -- the modified cell
  have hc2 : SMCell e (e.cell 2) := ⟨2, by decide, rfl⟩
  have hPW : ProtCell C Γ (e.cell 2) ∧ PWev T [2] [] s Γ (e.cell 2) :=
    ⟨smCell_prot hE hL he.1 he.2.1 hc2, e, he, 2, by decide, rfl⟩
  rcases hcase with ⟨hr1, h0, hm⟩ | ⟨v, hr1, h0, hm⟩ <;>
    simp only [Option.some.injEq] at hr1 <;> subst hr1
  · -- `EvmErr 2`: nothing changed
    have hGt : G C H Γ t := G_congr hH hm hgl hd hbe hG0
    refine ⟨Γ, p, p, sumCore_same hps hgl hGt (fun a _ => by rw [hm])
      (fun v hv => by cases hv), rfl, hgl, fun e' he' => ?_⟩
    rw [huniq e' he']
    exact ⟨fun ⟨_, h⟩ => (by cases h), fun _ => ⟨h0, hm⟩⟩
  · have hmod : ModifiesOnly (· = e.cell 2) s.memory t.memory := by
      rw [hm]; exact modOnly_upd _ _ _
    -- the new stack/memory invariant
    have hsm0 := hK.get Γ s e he.1 he.2.1 (hW e he.1)
    have hne : ∀ k ∈ smSlots, k ≠ 2 → rd t.memory (e.cell k) = rd s.memory (e.cell k) := by
      intro k hk hk2
      rw [hm, rd_upd_ne (cell_ne e (sm_mem hk) (by decide) hk2)]
    have hsp : fSP t.memory e = fSP s.memory e - 1 := by
      unfold fSP; rw [hm, rd_upd_self]; rfl
    obtain ⟨⟨a1, a2, a3, a4⟩, hmem⟩ := hsm0
    have hsm : EvSM T Γ t.memory e := by
      have e1 := hne 1 (by decide) (by decide)
      have e3 := hne 3 (by decide) (by decide)
      have e4 := hne 4 (by decide) (by decide)
      have e5 := hne 5 (by decide) (by decide)
      have e29 := hne 29 (by decide) (by decide)
      unfold EvSM StkOK MemOK fSTK fSP fMEM fLEN fMCAP fCAP at *
      rw [e1, e3, e4, e5, e29, hsp]
      refine ⟨⟨?_, a2, a3, a4⟩, hmem⟩
      rw [toNat_sub_one h0]; omega
    have hGt : G C H Γ t := G_sm hH hE hK hG0 he.1 he.2.1 hgl hd hbe
      (hmod.mono fun a h => Or.inl (h ▸ hc2)) hsm
    refine ⟨Γ, p, p, sumCore_same hps hgl hGt ?_ (fun _ _ => retOK_nil _), rfl, hgl,
      fun e' he' => ?_⟩
    · exact hmod.mono fun a h => Or.inr (h ▸ hPW)
    · rw [huniq e' he']
      exact ⟨fun _ => ⟨h0, hm⟩, fun ⟨_, _, h⟩ => (by cases h)⟩

end InitECandidate.Solver.MemSafe.Struct
