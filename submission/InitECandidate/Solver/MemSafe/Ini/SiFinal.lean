import InitECandidate.Solver.MemSafe.Ini.SiExit

/-!
# `state_init`: the summary (returns only)

**`funSpec_state_init`**: from `G`, two frozen node DBs (`NdbR`), `state_init(db, root, cd)` that returns ends with `SumCore` (signature `siSigW`, writing only
`journal`, `journal_n`, `journal_cap`, `sk_buf` among the protected globals; no extra protected cells) and `SiPost`: `ws`, `bs`, `sk_buf`, `journal`
point at `tWSR`, `tBS`, `tB64`, `tJOURNAL` objects of `Γ'`, `journal_n = 0`, `ts = 0`. Exceptions (a bad witness) are not specified.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Trie
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.Wit InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type}

theorem code_si : guestCode (nm "state_init") =
    some ([(nm "nodedb", .one), (nm "state_root", .one), (nm "codedb", .one)], siBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 354) (by decide)) ⟨_, rfl⟩ entry_si

theorem ws_bs_not_pg : nm "ws" ∉ Types.guestC.PG ∧ nm "bs" ∉ Types.guestC.PG := by decide

/-- The precondition: two frozen node DBs. -/
def StatePre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ db rt cd : BitVec 64, vs = [.val (.word db), .val (.word rt), .val (.word cd)] ∧
    Hooks.NdbR Γ s.memory db ∧ Hooks.NdbR Γ s.memory cd

theorem heap_gz_entry {a : Act σ} {Γ : Gam} {p : Ptrs} {s : State σ} (hh : Heap a Γ p s)
    (haC : a.C = Types.guestC) (haH : a.H = guestHooksR (σ := σ))
    (hsgw : ∀ g ∈ a.C.PG, g ∉ a.sg.gw → g ∉ hid) : Heap a Γ p (gz s) := by
  obtain ⟨hG, hps, hmo, hext, hnf, hmod, hpg, hng⟩ := hh
  refine ⟨?_, (ptrsOf_gz s).trans hps, hmo, hext, hnf, hmod, fun g hg hng' => ?_, hng⟩
  · rw [haC, haH] at hG ⊢
    exact g_gz hG
  · show (zeroH s.globals).lookup g = _
    rw [zeroH_notin (hsgw g hg hng')]
    exact hpg g hg hng'

theorem funSpec_state_init :
    FunSpec σ guestCtx (nm "state_init") (fun vs s r t => ∀ v, r = .returned v → ∀ Γ,
      G Types.guestC (guestHooksR (σ := σ)) Γ s →
      (∃ p, ptrsOf s = some p ∧ ArgsOK Types.guestC Γ p siSigW.params vs) → StatePre vs s Γ →
      ∃ (Γ' : Gam) (p p' : Ptrs), SumCore Types.guestC (guestHooksR (σ := σ)) siSigW
        (fun x => ProtCell Types.guestC Γ x ∧ False) Γ s vs r t Γ' p p' ∧ SiPost Γ' t) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  intro vs body callee rs hl s hs hloc r hr v hv Γ hG ⟨p, hps, hargs⟩ ⟨db, rt, cd, hvs, hND, hNDc⟩
  subst hvs
  subst hv
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, hlen, hbind⟩ := lookupCode_gen code_si hl'
  obtain ⟨ha, hh⟩ := act_entry (X := guestCtx) hF.hH hF.hC hF.hal hF.hAC hF.hNS
    (sg := siSigW) (cs := []) (WaveHelpers.capsOK_nil Types.guestC siSigW) hG hps hargs (fun c hc => by cases hc)
  set a : Act σ := actOf Types.guestC (guestHooksR (σ := σ)) siSigW [] [.val (.word db), .val (.word rt), .val (.word cd)] s Γ p
    with hadef
  obtain ⟨p', hp', hord, hL, -⟩ := id hG
  have hpp : p' = p := Option.some.inj (hp'.symm.trans hps)
  subst hpp
  have hsgw : ∀ g ∈ a.C.PG, g ∉ a.sg.gw → g ∉ hid := by
    intro g hg hng hhid
    rcases hid_mem.mp hhid with rfl | rfl | rfl | rfl
    · exact absurd hg ws_bs_not_pg.1
    · exact absurd hg ws_bs_not_pg.2
    · apply hng; simp [a, actOf, siSigW]
    · apply hng; simp [a, actOf, siSigW]
  have c : Cx a db :=
    { ha := ha, hX := hF.hX, haC := rfl, hCb := rfl, haH := rfl, hgr := rfl, hcaps := rfl
      hargs := fun x => WaveHelpers.argCells_any (by simp [a, actOf, siSigW])
      hL0 := hL, hND := hND, gwn := by simp [a, actOf, siSigW], gwc := by simp [a, actOf, siSigW]
      hsg := rfl }
  have hhg : Heap a Γ p' (gz s) := heap_gz_entry hh rfl rfl hsgw
  have hLV : LVf Γ (kvf0 db rt cd) s.locals := by
    intro q hq
    simp only [kvf0, List.mem_cons, List.not_mem_nil, or_false] at hq
    rw [hloc]
    rcases hq with rfl | rfl | rfl
    · exact ⟨(hbind 0 (by decide) (by simp)).1, trivial⟩
    · exact ⟨(hbind 1 (by decide) (by simp)).1, trivial⟩
    · exact ⟨(hbind 2 (by decide) (by simp)).1, trivial⟩
  have hJ : JK a (kvf0 db rt cd) (fun kn => kn.W = none ∧ kn.B = none ∧ kn.S = none ∧ kn.J = none) s :=
    ⟨{}, ⟨Γ, p', ext_refl _, hhg, hLV, fun W h => by simp at h, fun B h => by simp at h,
      fun k v h => by simp at h, fun k v h => by simp at h, fun S h => by simp at h,
      fun J h => by simp at h⟩,
      ⟨fun _ _ h => by simp at h, fun _ _ h => by simp at h, fun _ _ h => by simp at h,
        fun _ _ h => by simp at h, fun _ _ h => by simp at h, fun _ _ h => by simp at h⟩,
      rfl, rfl, rfl, rfl⟩
  have hgood : Good (evaluateHOLFiniteState s siBody).1 := by rw [hr]; simp [Good]
  have hq := body_si c rt cd s hs hJ hgood
  rw [hr] at hq
  obtain ⟨hv0, kn, S, Jb, Γ1, q1, hD, hK, hext, hh1, hS, hjn, hts, hcap⟩ := hq.2 _ rfl v rfl
  have hmod := hh1.2.2.2.2.2.1
  have hpg := hh1.2.2.2.2.2.2.1
  obtain ⟨Γ', q, hext', hnf, hpt, hmono, hG', hpost⟩ := g_exit c hNDc
    ⟨rfl, kn, S, Jb, Γ1, q1, hD, hK, hext, hh1, hS, hjn, hts, hcap⟩
  refine ⟨Γ', p', q, ⟨hps, hpt, hmono, hext', hnf, hG', ?_, ?_, fun h => by simp [siSigW] at h, ?_⟩, hpost⟩
  · refine hmod.mono (fun x hx => ?_)
    rcases hx with h | h | h | ⟨h, c', hc', -⟩
    · exact Or.inl h
    · exact Or.inr (Or.inl h)
    · exact Or.inr (Or.inr (Or.inl h))
    · cases hc'
  · intro g hg hng
    have := hpg g hg hng
    have hn := hsgw g hg hng
    exact (zeroH_notin hn).symm.trans this
  · intro v' hv' i rt' w hrt
    simp [siSigW] at hrt

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.funSpec_state_init
