import InitECandidate.Solver.MemSafe.Ptx.PtT9

/-!
# F3g: piece 3 of the tail, `ptS141` to `ptS143`: `var logs = out[16]; if logs == 0 { logs = lst_new(8, 1) }`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

theorem lstnew_fin : ptAllNames.contains (nm "lst_new") = true := by decide_cbv

theorem lstTLSTh_ok : tLSTh ∈ lstTys := by decide
theorem lstE_tLSTh : lstE tLSTh = 8 := by decide

/-- The header of a fresh list is a heap `prot` cell object. -/
theorem lstH_prot (k : Nat) : (guestC.ty tLSTh).slot k = .prot := Hooks.lst_prot _ lstTLSTh_ok k

section ln
variable {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj}

/-- **`lst_new(8, 1)` assigned to a local**: the header cells `l`, `l + 8` (`N = 0`) join the kept cells; they are no cell of
an object of the old typing, in particular none of the written block cells. -/
theorem hn_lstNew1 {K : TlCtx σ} (hP : PtPreB K.E) {En : Env} (x : MlS) :
    HN (PAg (TL K.A ref Z O) En) (.call (some (some (.local, x), none)) (nm "lst_new") [cw 8, cw 1])
      (fun t => ∃ (l : BitVec 64) (ref' : BitVec 64 → BitVec 64) (Z' : BitVec 64 → Prop),
        (∀ a, Z a → Z' a ∧ ref' a = ref a) ∧ (∀ a, Z' a → Z a ∨ a = l ∨ a = l + 8) ∧ Z' l ∧ Z' (l + 8) ∧
        ref' (l + 8) = 0 ∧ (∀ c, K.Wt c → c ≠ l ∧ c ≠ l + 8) ∧
        PAg (TL K.A ref' Z' O) (En.set x (.val (.word l))) t) := by
  have hf := sumSpec_lstNewV (σ := σ) (t := tLSTh) (c := 1) lstTLSTh_ok (by decide) (by decide)
    (by rw [lstE_tLSTh]; decide)
  refine hoare_callA ((sumSpecA_relX hf).and (funSpec_pt_gw_all guestCtx_code lstnew_fin)) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst hvalid
  obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
  have hvs' : vs = [.val (.word (BitVec.ofNat 64 (lstE tLSTh))), .val (.word (BitVec.ofNat 64 1))] := by
    have : evs s [cw 8, cw 1] = some [.val (.word (BitVec.ofNat 64 (lstE tLSTh))), .val (.word (BitVec.ofNat 64 1))] := by
      rw [lstE_tLSTh]; exact evs_cons (ev_cw _ 8) (evs_cons (ev_cw _ 1) evs_nil)
    rw [this] at hvs; exact (Option.some.inj hvs).symm
  subst hvs'
  obtain ⟨Γ', p', hc, hrun, hq⟩ := tl_call_core (Pre := fun _ _ _ => True) (PWx := fun _ _ _ _ => False)
    hR hgl (by simp [lnSigL]) (by simp [JrOut, lnSigL]) (fun _ _ _ _ h => h.elim) hr argsOK_eq2 (argCells_nb _ (by simp [lnSigL])) trivial
  obtain ⟨l, q, hlv, hΓ, hm0, hm8, hm16⟩ := hq _ rfl
  subst hlv
  have hmemΓ : Γ' = Γ ++ [⟨q, tLSTAh, lstE tLSTh * (BitVec.ofNat 64 1).toNat⟩] ++ [⟨l, tLSTh, 24⟩] := hΓ
  have hhd : (⟨l, tLSTh, 24⟩ : Obj) ∈ Γ' := by rw [hmemΓ]; simp
  have hlay := tl_layout hrun
  have hordp := tl_ord hrun
  have hk0 : (⟨l, tLSTh, 24⟩ : Obj).HasSlot 0 := by simp [Obj.HasSlot]
  have hk1 : (⟨l, tLSTh, 24⟩ : Obj).HasSlot 1 := by simp [Obj.HasSlot]
  have hc0 : (⟨l, tLSTh, 24⟩ : Obj).cell 0 = l := by unfold Obj.cell; simp
  have hc1 : (⟨l, tLSTh, 24⟩ : Obj).cell 1 = l + 8 := by unfold Obj.cell; rfl
  have hreg : (guestC.ty tLSTh).region = Region.heap := by decide
  have hst : guestSt tLSTh = false := by decide
  -- the old cells are not the new ones
  have hold : ∀ a, Z a → a ≠ l ∧ a ≠ l + 8 := by
    intro a ha
    obtain ⟨o, ho, -, -, k, hk, hp, rfl⟩ := hr.hZ a ha
    have hoΓ' : o ∈ Γ' := by rw [hmemΓ]; simp [ho]
    have hno : o ≠ ⟨l, tLSTh, 24⟩ := by
      intro he
      have hnd := layout_nodup hlay
      rw [hmemΓ, List.append_assoc, List.nodup_append] at hnd
      exact hnd.2.2 o ho ⟨l, tLSTh, 24⟩ (by simp) he
    refine ⟨fun he => hno ?_, fun he => hno ?_⟩
    · rw [← hc0] at he
      exact (cell_inj hordp hlay hoΓ' hhd hk hk0 he).1
    · rw [← hc1] at he
      exact (cell_inj hordp hlay hoΓ' hhd hk hk1 he).1
  have h1 := tl_extend hrun (c := l) (x := q) ⟨⟨l, tLSTh, 24⟩, hhd, hreg, hst, 0, hk0, lstH_prot 0, hc0.symm⟩
    (by simpa using hm0)
  have h2 := tl_extend h1 (c := l + 8) (x := 0) ⟨⟨l, tLSTh, 24⟩, hhd, hreg, hst, 1, hk1, lstH_prot 1, hc1.symm⟩
    (by
      show rd st.memory (l + 8) = 0
      simpa using hm8)
  have hne : l ≠ l + 8 := by
    intro he
    have := congrArg BitVec.toNat he
    have h8 : (8 : BitVec 64).toNat = 8 := rfl
    rw [BitVec.toNat_add, h8] at this
    have hlive := (hlay.1 _ hhd).2.2.2.2
    rw [hreg] at hlive
    obtain ⟨hl1, hl2⟩ := hlive
    have hb := hordp.2.1
    have : heapEnd < 2 ^ 64 := by unfold heapEnd; norm_num
    simp only [Obj.lo] at hl2
    omega
  have hfin : PAg (TL K.A (fun a => if a = l + 8 then (0 : BitVec 64) else if a = l then q else ref a)
      (fun a => (Z a ∨ a = l) ∨ a = l + 8) O) (En.set x (.val (.word l)))
      (setKvarHOLFinite .local x (.val (.word l)) { st with locals := s.locals }) :=
    ⟨⟨Γ', p', tl_set h2 x _⟩, lke_set (lke_restore hlk) x _⟩
  have hwt : ∀ c, K.Wt c → c ≠ l ∧ c ≠ l + 8 := by
    intro c hc
    obtain ⟨M, hM, hMt, k, hk, hp, hcM⟩ := wset_cellB hP hr.ext (K.wt_wset hc)
    have hMΓ' : M ∈ Γ' := by rw [hmemΓ]; simp [hM]
    have hno : M ≠ ⟨l, tLSTh, 24⟩ := by
      intro he
      have hnd := layout_nodup hlay
      rw [hmemΓ, List.append_assoc, List.nodup_append] at hnd
      exact hnd.2.2 M hM ⟨l, tLSTh, 24⟩ (by simp) he
    refine ⟨fun he => hno ?_, fun he => hno ?_⟩
    · rw [hcM, ← hc0] at he
      exact (cell_inj hordp hlay hMΓ' hhd hk hk0 he).1
    · rw [hcM, ← hc1] at he
      exact (cell_inj hordp hlay hMΓ' hhd hk hk1 he).1
  refine ⟨rfl, l, (fun a => if a = l + 8 then (0 : BitVec 64) else if a = l then q else ref a),
    (fun a => (Z a ∨ a = l) ∨ a = l + 8), ?_, ?_, Or.inl (Or.inr rfl), Or.inr rfl, ?_, hwt, hfin⟩
  · intro a ha
    refine ⟨Or.inl (Or.inl ha), ?_⟩
    obtain ⟨n1, n2⟩ := hold a ha
    simp only [if_neg n2, if_neg n1]
  · intro a ha
    rcases ha with (ha | ha) | ha
    · exact Or.inl ha
    · exact Or.inr (Or.inl ha)
    · exact Or.inr (Or.inr ha)
  · simp

end ln

end InitECandidate.Solver.MemSafe.Ptx
