import InitECandidate.Solver.MemSafe.Frames.FinSteps

/-!
# `finish_child`: the parent-side calls

The individual calls of the branches after the switch, from `BS` to `BS`:
`rollback_child_access`, `incorporate_child_on_error`, `credit_state_gas_refund`, `set_retdata`,
`stack_push`, `incorporate_child_on_success`, and the failed-child branch `finErr`.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

section steps
variable {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} {Ic : Gam → Mem → Nat → BitVec 64 → BitVec 64 → Prop} {W : FinGw} (Hy : FinHyps σ X C H tEV tCK P R Ic W)
  {sw : State σ} {e c e' c' : BitVec 64} {rest : List Frame} {L : Locs}

include Hy

theorem fin_hF : FrameCfg C H tEV tCK := Hy.drv.fc

theorem argsA {Γ : Gam} {p : Ptrs} {n : Nat} {gw : List MlS} {vs : List (ValueHOL 64)}
    (hl : vs.length = n) : ArgsOK C Γ p (sgA n gw).params vs ∧
      ∀ a, ArgCells (sgA n gw).params vs a → ¬ ProtCell C Γ a :=
  ⟨argsOK_any (sgA_any n gw) (by simp [sgA, hl]), fun a ha => absurd ha (argCells_any (sgA_any n gw))⟩

/-- `rollback_child_access(child)`. -/
theorem bs_rollback {Gs : State σ → Prop} {spk : Bool}
    (hLc : L.lookup (nm "child") = some (.val (.word e)))
    (hGs : ∀ s st : State σ, Gs s → fld st.memory e' 64 = fld s.memory e' 64 →
      fld st.memory e' 192 = fld s.memory e' 192 → Gs { st with locals := s.locals }) :
    HoareG σ X (BS C H tEV tCK P R sw e c e' c' rest L Gs spk)
      (callD (nm "rollback_child_access") [lv (nm "child")])
      (fun ro u => (ro = none ∧ BS C H tEV tCK P R sw e c e' c' rest L Gs spk u) ∨
        (ro ≠ none ∧ PAb C H ro u)) := by
  refine bs_call (fin_hF Hy) Hy.xcfg Hy.evX Hy.rb (by simp) (by simp) (by simp [sgRb]) Hy.pgJ
    (by simp [sgRb])
    (fun s vs Γu _ hbs hB hvs p _ => ?_) (fun _ _ _ _ _ _ _ => trivial)
    (fun _ _ _ _ _ _ hq => hq) hGs
  obtain ⟨hfl, -⟩ := hbs
  obtain ⟨v1, r1, rfl, h1, h2⟩ := evs_cons_inv hvs
  rw [evs_nil] at h2; cases h2
  rw [ev_lv, hfl _ (by simp [finNames]), hLc] at h1; cases h1
  refine ⟨⟨rfl, fun i pt v hpt hv => ?_⟩, fun a ⟨i, w, _, h⟩ => ?_⟩
  · rcases i with _ | i
    · simp only [sgRb, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
      subst hpt hv
      exact ⟨e, rfl, (hB.objs (e, c) (by simp)).1⟩
    · simp [sgRb] at hpt
  · rcases h with ⟨n, hn, -⟩ | ⟨j, c0, d, x, hn, -⟩ <;>
      rcases i with _ | i <;> simp [sgRb] at hn

/-- `stack_push(v)` on the parent, whose stack pointer is below its capacity. -/
theorem bs_push {Gs : State σ → Prop} {a : ExpHOL 64}
    (hsp0 : (fld sw.memory e' 16).toNat < (fld sw.memory e' 232).toNat)
    (hGs : ∀ s st : State σ, Gs s → fld st.memory e' 64 = fld s.memory e' 64 →
      fld st.memory e' 192 = fld s.memory e' 192 → Gs { st with locals := s.locals }) :
    HoareG σ X (BS C H tEV tCK P R sw e c e' c' rest L Gs true) (callD (nm "stack_push") [a])
      (fun ro u => (ro = none ∧ BS C H tEV tCK P R sw e c e' c' rest L Gs false u) ∨
        (ro ≠ none ∧ PAb C H ro u)) := by
  have hF := fin_hF Hy
  have hks : ∀ k ∈ [1, 2, 29], 8 * k + 8 ≤ 280 := by decide
  have hlt : ∀ s Γu, FinB C H tEV tCK P R sw e c e' c' rest Γu s →
      fld s.memory e' 16 = fld sw.memory e' 16 →
      (fld s.memory e' 16).toNat < (fld s.memory e' 232).toNat := by
    intro s Γu hB hsp
    rw [hsp, show (232 : Nat) = 8 * 29 from rfl, hB.evp 29 (by simp [parKeep])]
    exact hsp0
  refine bs_callG hF Hy.xcfg Hy.evX Hy.sp hks (by decide) Hy.gwspE Hy.pgJ Hy.jsp (fun s vs Γu _ _ _ hvs p _ => argsA Hy (evs_one_len hvs))
    (fun s vs Γu callee _ hB _ _ => ⟨_, (hB.objs (e', c') (by simp)).1.choose_spec.1,
      (hB.objs (e', c') (by simp)).1.choose_spec.2.2,
      by rw [(hB.objs (e', c') (by simp)).1.choose_spec.2.1]; exact hB.ev⟩) ?_ ?_
  · intro s vs Γu callee r st Γ' ⟨_, Γ0, hB0, _, hsp, _⟩ hB _ hq
    obtain ⟨hfp, hq2⟩ := hq
    obtain ⟨⟨v, rfl⟩, -, -⟩ := hq2 e' hB.ev (hlt s Γu hB (hsp rfl))
    exact ⟨hfp, (fun w h => by cases h)⟩
  · intro s vs Γu callee r st Γ' _ hB hrd hsp hgs hvs hq hk
    obtain ⟨-, hq2⟩ := hq
    obtain ⟨-, h8, h232⟩ := hq2 e' hB.ev (hlt s Γu hB (hsp rfl))
    have keepj : ∀ j ∈ evProtSlots, j ∉ [1, 2, 29] →
        fld st.memory e' (8 * j) = fld s.memory e' (8 * j) :=
      fun j hj hjk => fin_slot_keep hF hB hk hks (Or.inl rfl) hj fun _ => hjk
    refine ⟨fun j hj => ?_, fun hext => retOK_ext hext (keepj 18 (by simp [evProtSlots]) (by simp))
      (keepj 27 (by simp [evProtSlots]) (by simp)) hrd, (fun h => by cases h),
      hGs s st hgs (keepj 8 (by simp [evProtSlots]) (by simp))
        (keepj 24 (by simp [evProtSlots]) (by simp))⟩
    simp only [parKeep, List.mem_cons, List.mem_nil_iff, or_false] at hj
    rcases hj with rfl | rfl | rfl | rfl | rfl | rfl
    · exact h8
    · exact keepj 3 (by simp [evProtSlots]) (by simp)
    · exact keepj 4 (by simp [evProtSlots]) (by simp)
    · exact keepj 5 (by simp [evProtSlots]) (by simp)
    · exact keepj 13 (by simp [evProtSlots]) (by simp)
    · exact h232

/-- `set_retdata(p, n)` on the parent. -/
theorem bs_setret {Gs : State σ → Prop} {spk : Bool} {a b : ExpHOL 64}
    (hGs : ∀ s st : State σ, Gs s → fld st.memory e' 64 = fld s.memory e' 64 →
      fld st.memory e' 192 = fld s.memory e' 192 → Gs { st with locals := s.locals }) :
    HoareG σ X (BS C H tEV tCK P R sw e c e' c' rest L Gs spk) (callD (nm "set_retdata") [a, b])
      (fun ro u => (ro = none ∧ BS C H tEV tCK P R sw e c e' c' rest L Gs spk u) ∨
        (ro ≠ none ∧ PAb C H ro u)) := by
  have hF := fin_hF Hy
  have hks : ∀ k ∈ [18, 19, 27], 8 * k + 8 ≤ 280 := by decide
  refine bs_callG hF Hy.xcfg Hy.evX Hy.sd hks (by decide) Hy.gwsdE Hy.pgJ Hy.jsd (fun s vs Γu _ _ _ hvs p _ => argsA Hy (evs_two hvs))
    (fun s vs Γu callee _ hB hrd _ => ?_) (fun _ _ _ _ _ _ _ _ _ _ hq => hq.1) ?_
  · obtain ⟨o, ho, hob, hot⟩ := (hB.objs (e', c') (by simp)).1
    exact ⟨o, ⟨ho, hot, by rw [hob]; exact hB.ev⟩, by rw [hob]; exact hrd⟩
  · intro s vs Γu callee r st Γ' _ hB hrd hsp hgs hvs hq hk
    have keepj : ∀ j ∈ evProtSlots, j ∉ [18, 19, 27] →
        fld st.memory e' (8 * j) = fld s.memory e' (8 * j) :=
      fun j hj hjk => fin_slot_keep hF hB hk hks (Or.inl rfl) hj fun _ => hjk
    refine ⟨fin_par_keep hF hB hk hks (by decide), fun _ => hq.2 e' hB.ev,
      fun h => (keepj 2 (by simp [evProtSlots]) (by simp)).trans (hsp h),
      hGs s st hgs (keepj 8 (by simp [evProtSlots]) (by simp))
        (keepj 24 (by simp [evProtSlots]) (by simp))⟩

/-- `incorporate_child_on_success(child)`. -/
theorem bs_icos (hLc : L.lookup (nm "child") = some (.val (.word e))) :
    HoareG σ X (BS C H tEV tCK P R sw e c e' c' rest L (Gas0 sw e') true)
      (callD (nm "incorporate_child_on_success") [lv (nm "child")])
      (fun ro u => (ro = none ∧ BS C H tEV tCK P R sw e c e' c' rest L (GasB sw e e') true u) ∨
        (ro ≠ none ∧ PAb C H ro u)) := by
  have hF := fin_hF Hy
  have hks : ∀ k ∈ [8, 9, 12, 23, 24], 8 * k + 8 ≤ 280 := by decide
  have hvs1 : ∀ s vs, BS C H tEV tCK P R sw e c e' c' rest L (Gas0 sw e') true s →
      evs s [lv (nm "child")] = some vs → vs = [.val (.word e)] := by
    intro s vs ⟨hfl, _⟩ hvs
    obtain ⟨v1, r1, rfl, h1, h2⟩ := evs_cons_inv hvs
    rw [evs_nil] at h2; cases h2
    rw [ev_lv, hfl _ (by simp [finNames]), hLc] at h1; cases h1; rfl
  refine bs_callGL hF Hy.logStep Hy.lstArr Hy.evX Hy.ic (fun vs s Γ r t Γ' hq p' hp' => logQ_sub hq.2 hp') hks
    (by decide) Hy.gwicE Hy.pgJ Hy.jic (fun s vs Γu _ _ _ hvs p _ => argsA Hy (evs_one_len hvs))
    (fun s vs Γu callee hbs hB _ hvs => ?_) (fun _ _ _ _ _ _ _ _ _ _ hq => hq.1.1) ?_
  · rw [hvs1 s vs hbs hvs]
    obtain ⟨o, ho, hob, hot⟩ := (hB.objs (e', c') (by simp)).1
    have hnd := hB.nodupE
    simp only [List.map_cons, List.nodup_cons, List.mem_cons, not_or] at hnd
    obtain ⟨p, hp, -⟩ := hB.G
    have hIc := Hy.icX Γu s.memory p (e, c) (e', c') (hB.x.1 p hp (e', c') (by simp))
      (hB.x.1 p hp (e, c) (by simp)) (hB.x.2 (e, c) (e', c') ⟨[], rest, rfl⟩)
    have hob' : o.base = e' := hob
    refine ⟨o, e, ⟨ho, hot, by rw [hob]; exact hB.ev⟩, rfl, (hB.objs (e, c) (by simp)).1,
      by rw [hob]; exact hnd.1.1, fun p' hp' => ?_⟩
    have hpp : p' = p := Option.some.inj (hp'.symm.trans ((ptrsOf_congr rfl).trans hp))
    rw [hpp, hob']
    exact hIc
  · intro s vs Γu callee r st Γ' hbs hB hrd hsp hgs hvs hq hk
    rw [hvs1 s vs hbs hvs] at hk hq
    have keepj : ∀ j ∈ evProtSlots, j ∉ [8, 9, 12, 23, 24] →
        fld st.memory e' (8 * j) = fld s.memory e' (8 * j) :=
      fun j hj hjk => fin_slot_keep hF hB hk hks (Or.inl rfl) hj fun _ => hjk
    refine ⟨fin_par_keep hF hB hk hks (by decide),
      fun hext => retOK_ext hext (keepj 18 (by simp [evProtSlots]) (by simp))
        (keepj 27 (by simp [evProtSlots]) (by simp)) hrd,
      fun h => (keepj 2 (by simp [evProtSlots]) (by simp)).trans (hsp h), ?_⟩
    have hb := hq.1.2 e' e hB.ev rfl
    obtain ⟨g64, g192⟩ := hgs
    have c64 := hB.evr (e, c) (by simp) 8 (by simp [evProtSlots])
    have c192 := hB.evr (e, c) (by simp) 24 (by simp [evProtSlots])
    show (fld st.memory e' 64).toNat + (fld st.memory e' 192).toNat ≤ _
    simp only [show (8 * 8 : Nat) = 64 from rfl, show (8 * 24 : Nat) = 192 from rfl] at c64 c192
    have e1 : fld (callEntryStateHOLFinite s callee).memory e' 64 = fld sw.memory e' 64 := g64
    have e2 : fld (callEntryStateHOLFinite s callee).memory e' 192 = fld sw.memory e' 192 := g192
    have e3 : fld (callEntryStateHOLFinite s callee).memory e 64 = fld sw.memory e 64 := c64
    have e4 : fld (callEntryStateHOLFinite s callee).memory e 192 = fld sw.memory e 192 := c192
    rw [e1, e2, e3, e4] at hb
    exact hb

end steps

end InitECandidate.Solver.MemSafe.Frames
