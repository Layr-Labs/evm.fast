import InitECandidate.Solver.MemSafe.Frames.Cells

/-!
# `charge_gas` and `pc_add`: exact-footprint summaries (no `Chain` needed)

For the structure and opcode proofs (ms-struct, the band), which reason about the running EV
record directly:

* `EvRun tEV Γ s e`: `e` is the `Γ` object (type `tEV`) that the global `ev` points at.
* **`charge_evSpec`**: `SumSpec … "charge_gas" sg1n (Pre: ev is an EV object)
  (PW: `GAS_LEFT`, `REGULAR_GAS_USED` of that object) (Q: `Γ' = Γ`, allocator pointers and
  globals unchanged, and the exact memory: out of gas ⇒ unchanged, else `chargeMem`)`.
* **`pcAdd_evSpec`**: `pc_add(n)` writes only the scalar slot `EV_PC` (`PW = False`);
  `Γ' = Γ`, allocator and globals unchanged, memory `upd m ev (PC + n)`.

Both keep `Chain` and `Φ` where it matters: `charge_sumSpec` (exact `Φ` effect), and
`chain_of_sumCore` for `pc_add` (a plain summary keeping `frame_mem_ptr`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- One unconstrained argument, no growth of `Γ` (usable inside heap / scratch windows). -/
def sg1n : Sig := { params := [.any], grows := false }

/-- The running frame's EV object. -/
def EvRun (tEV : Nat) (Γ : Gam) (s : State σ) (e : Obj) : Prop :=
  e ∈ Γ ∧ e.ty = tEV ∧ gword s nmEv = some e.base

/-- Slots `ks` of the running EV object (ms-struct's `PWev`, over `gword`). -/
def PWrun (tEV : Nat) (ks : List Nat) (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam)
    (a : BitVec 64) : Prop :=
  ∃ e, EvRun tEV Γ s e ∧ ∃ k ∈ ks, a = e.cell k

/-- A summary core for a change confined to safe cells within `PW`, same typing and allocator. -/
theorem sumCore_local {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {sg : Sig}
    (hret : sg.ret = []) {Γ : Gam} {s t : State σ} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} {p : Ptrs} (hG : G C H Γ s) (hps : ptrsOf s = some p)
    {R PW : BitVec 64 → Prop} (hR : SafeCells C H Γ s R)
    (hRW : ∀ a, R a → ProtCell C Γ a → PW a) (hmod : ModifiesOnly R s.memory t.memory)
    (hg : t.globals = s.globals) (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be) :
    SumCore C H sg (fun a => ProtCell C Γ a ∧ PW a) Γ s vs r t Γ p p := by
  refine ⟨hps, by rw [ptrsOf_congr hg]; exact hps, mono_refl p, ext_refl Γ, newFresh_refl Γ p,
    G_safe hH hG hR hmod hg hd hbe, fun a ha => hmod a fun hr => ha ?_,
    fun g _ _ => by rw [hg], fun _ => newFresh_refl Γ p, fun v _ i rt w hrt => ?_⟩
  · obtain ⟨o, ho, k, hk, -, -, he, -⟩ := hR a hr
    by_cases hp : (C.ty o.ty).slot k = .prot
    · have hpc : ProtCell C Γ a := ⟨o, ho, k, hk, hp, he⟩
      exact Or.inr (Or.inr (Or.inr ⟨hpc, hRW a hr hpc⟩))
    · exact Or.inl ⟨o, ho, k, hk, hp, he⟩
  · rw [hret] at hrt; simp at hrt

/-! ## `charge_gas` -/

/-- **`charge_gas` with its exact footprint.** -/
theorem charge_evSpec {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hC : X.code.lookup = guestCode)
    (hF : FrameCfg C H tEV tCK) :
    SumSpec σ X C H (nm "charge_gas") sg1n (fun _ s Γ => ∃ e, EvRun tEV Γ s e)
      (PWrun tEV [8, 23])
      (fun vs s Γ r t Γ' => Γ' = Γ ∧ ptrsOf t = ptrsOf s ∧ t.globals = s.globals ∧
        ∃ e a, gword s nmEv = some e ∧ vs = [.val (.word a)] ∧
          ((r = .exception nmEvmErr (.val (.word 4)) ∧ fld s.memory e 64 < a ∧
              t.memory = s.memory) ∨
            (r = .returned (.val (.word 0)) ∧ a ≤ fld s.memory e 64 ∧
              t.memory = chargeMem s.memory e a))) := by
  refine FunSpec.mono (FunSpec.and (charge_spec hC) (funSpec_dom _)) ?_
  intro vs s r t ⟨hE, hd, hbe⟩ hg Γ hG _ ⟨oe, hoe, hoet, hoeb⟩
  obtain ⟨e, a, rfl, he, hglob, hcase⟩ := hE hg
  have ⟨p, hps, _, hL, _⟩ := hG
  rw [hoeb, Option.some.injEq] at he
  subst he
  let R : BitVec 64 → Prop := fun x => x = oe.cell 8 ∨ x = oe.cell 23
  have hsafe : SafeCells C H Γ s R := by
    rintro x (rfl | rfl)
    · exact safe_ev hF hL hoe hoet (j := 8) (by simp [evDriverSlots]) rfl
    · exact safe_ev hF hL hoe hoet (j := 23) (by simp [evDriverSlots]) rfl
  have hRW : ∀ x, R x → ProtCell C Γ x → PWrun tEV [8, 23] [.val (.word a)] s Γ x := by
    rintro x hx -
    refine ⟨oe, ⟨hoe, hoet, hoeb⟩, ?_⟩
    rcases hx with rfl | rfl
    · exact ⟨8, by simp, rfl⟩
    · exact ⟨23, by simp, rfl⟩
  rcases hcase with ⟨hr, hlt, hm⟩ | ⟨hr, hle, hm⟩
  · refine ⟨Γ, p, p, sumCore_local hF.hooks rfl hG hps hsafe hRW
      (by rw [hm]; exact modifiesOnly_refl _ _) hglob hd hbe,
      rfl, ptrsOf_congr hglob, hglob, oe.base, a, hoeb, rfl, Or.inl ⟨hr, hlt, hm⟩⟩
  · have hmod : ModifiesOnly R s.memory t.memory := by
      rw [hm]; unfold chargeMem
      exact modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_refl _ _) (Or.inl rfl) _)
        (Or.inr rfl) _
    exact ⟨Γ, p, p, sumCore_local hF.hooks rfl hG hps hsafe hRW hmod hglob hd hbe,
      rfl, ptrsOf_congr hglob, hglob, oe.base, a, hoeb, rfl, Or.inr ⟨hr, hle, hm⟩⟩

/-! ## `pc_add` -/

def pcAddBody : ProgHOL 64 :=
  .seq (stG "ev" 0 (.op .add [gLoad "ev" 0, lv (nm "n")])) (.return (cw 0))

theorem entry_pcAdd : fnEntry Guest.Software.guestFn_pc_add =
    (nm "pc_add", [(nm "n", .one)], pcAddBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_pcAdd : guestCode (nm "pc_add") = some ([(nm "n", .one)], pcAddBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 468) (by decide)) ⟨_, rfl⟩
    entry_pcAdd

theorem pcAdd_spec (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "pc_add") (fun vs s r t => Good (some r) →
      ∃ e n, vs = [.val (.word n)] ∧ gword s nmEv = some e ∧ r = .returned (.val (.word 0)) ∧
        t.globals = s.globals ∧
        t.memory = upd s.memory (e + BitVec.ofNat 64 0) (fld s.memory e 0 + n)) := by
  refine funSpec_of_hoareG fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hsh, hA⟩ := lookupCode_one code_pcAdd hl
  obtain ⟨n, rfl⟩ := val_of_shapeEq_one hsh
  have hn : s0.locals.lookup (nm "n") = some (.val (.word n)) := by rw [hloc]; exact hA
  refine hoareG_seq (R := fun r u => r = none ∧ ∃ e, gword s0 nmEv = some e ∧
      u = { s0 with memory := upd s0.memory (e + BitVec.ofNat 64 0) (fld s0.memory e 0 + n) })
    ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_stG fun u _ hu G v hG hv => ?_
    subst hu
    obtain ⟨y, z, hy, hz, hv'⟩ := ev_op_add_inv hv
    obtain ⟨hy', -⟩ := ev_gLoad_eq hG hy
    rw [lv_of rfl hn] at hz
    cases hz
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hy'
    subst hy'
    exact ⟨_, hv', fun _ => ⟨rfl, G, hG, rfl⟩⟩
  refine hoareG_return fun u _ ⟨_, e, he, hu⟩ v hv => ?_
  subst hu
  rw [ev_cw] at hv; cases hv
  intro rr hrr
  cases hrr
  exact ⟨e, n, rfl, he, rfl, rfl, rfl⟩

/-- **`pc_add` with its exact footprint** (needs `EV_PC` scalar and the EV type untagged). -/
theorem pcAdd_evSpec {C : Cfg} {H : Hooks σ} {tEV : Nat} (hC : X.code.lookup = guestCode)
    (hH : HooksLawful C H) (hpc : (C.ty tEV).slot 0 = .scalar) (htg : C.tags.lookup tEV = none)
    (hsz : 8 ≤ (C.ty tEV).minSz) :
    SumSpec σ X C H (nm "pc_add") sg1n (fun _ s Γ => ∃ e, EvRun tEV Γ s e)
      (fun _ _ _ _ => False)
      (fun vs s Γ r t Γ' => Γ' = Γ ∧ ptrsOf t = ptrsOf s ∧ t.globals = s.globals ∧
        ∃ e n, gword s nmEv = some e ∧ vs = [.val (.word n)] ∧ r = .returned (.val (.word 0)) ∧
          t.memory = upd s.memory (e + BitVec.ofNat 64 0) (fld s.memory e 0 + n)) := by
  refine FunSpec.mono (FunSpec.and (pcAdd_spec hC) (funSpec_dom _)) ?_
  intro vs s r t ⟨hE, hd, hbe⟩ hg Γ hG _ ⟨oe, hoe, hoet, hoeb⟩
  obtain ⟨e, n, rfl, he, hr, hglob, hm⟩ := hE hg
  have ⟨p, hps, hord, hL, _, _, _, hW⟩ := hG
  rw [hoeb, Option.some.injEq] at he
  subst he
  have hoesz : 8 ≤ oe.size := le_trans hsz (by have := (hL.1 oe hoe).2.2.2.1; rw [hoet] at this; exact this)
  have hc0 : oe.base + BitVec.ofNat 64 0 = oe.cell 0 := by simp [Obj.cell]
  have hmod : ModifiesOnly (fun x => x = oe.cell 0) s.memory t.memory := by
    rw [hm, hc0]; exact modifiesOnly_upd (R := fun x => x = oe.cell 0) (modifiesOnly_refl _ _) rfl _
  have hG' : G C H Γ t := by
    refine G_modify hH hG (ptrsOf_congr hglob) (fun g _ _ => gword_congr hglob g)
      (fun g _ => by rw [hglob]) hd hbe hmod ?_ ?_ ?_
    · intro o ho k hk hx
      obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho hoe hk (by unfold Obj.HasSlot; omega) hx
      rw [hoet, hpc]; trivial
    · intro o ho htag hx
      obtain ⟨h0, hc⟩ := slot0 hL ho
      obtain ⟨rfl, -⟩ := cell_inj hord hL ho hoe h0 (by unfold Obj.HasSlot; omega) (hc.trans hx)
      rw [hoet, htg] at htag
      exact absurd htag (by simp)
    · intro o ho ⟨x, hx, hf⟩
      obtain ⟨o', ho', k', hk', hp', hx'⟩ := hH.1 Γ s o x ho (hW o ho) hf
      subst hx
      obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho' hoe hk' (by unfold Obj.HasSlot; omega) hx'.symm
      rw [hoet, hpc] at hp'
      cases hp'
  refine ⟨Γ, p, p, ⟨hps, by rw [ptrsOf_congr hglob]; exact hps, mono_refl p, ext_refl Γ,
    newFresh_refl Γ p, hG', fun x hx => hmod x fun h => hx (Or.inl ⟨oe, hoe, 0,
      by unfold Obj.HasSlot; omega, by rw [hoet, hpc]; simp, h⟩),
    fun g _ _ => by rw [hglob], fun _ => newFresh_refl Γ p, fun v _ i rt w hrt => ?_⟩,
    rfl, ptrsOf_congr hglob, hglob, oe.base, n, hoeb, rfl, hr, hm⟩
  simp [sg1n] at hrt

end InitECandidate.Solver.MemSafe.Frames
