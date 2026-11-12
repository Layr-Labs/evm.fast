import InitECandidate.Solver.MemSafe.Ini.NewInst

/-!
# `state_init`: the `htab_new` calls
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
open InitECandidate.Solver.MemSafe.WaveHelpers InitECandidate.Solver.MemSafe.Shards
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

theorem argsOK_eq2' {C : Cfg} {Γ : Gam} {p : Ptrs} {x y : Nat} :
    ArgsOK C Γ p [.eq x, .eq y] [.val (.word (BitVec.ofNat 64 x)), .val (.word (BitVec.ofNat 64 y))] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | i <;> simp at hpt hv <;> subst hpt <;> subst hv <;> simp [ArgOK, wordOf]

theorem argCells_eq2' {vs : List (ValueHOL 64)} {x y : Nat} {c : BitVec 64} :
    ¬ ArgCells [.eq x, .eq y] vs c := by
  rintro ⟨i, w, -, h⟩
  rcases h with ⟨n, hn, -⟩ | ⟨j, c', d, z, hj, -⟩
  · rcases i with _ | _ | i <;> simp at hn
  · rcases i with _ | _ | i <;> simp at hj

/-- The part of an `htab_new` step that does not depend on how the result is bound. -/
theorem new_core {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = guestHooksR (σ := σ)) (hgr : a.sg.grows = true) {th KL CP : Nat}
    {Γ : Gam} {q : Ptrs} {kn : Know} {kvf : List (MlS × BitVec 64 × FK)} {s st : State σ}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {v : ValueHOL 64}
    (hh : Heap a Γ q (gz s)) (hS : SIc a kn kvf Γ q s)
    (hR : Lift (SumRel a.Cb a.H ⟨[.eq KL, .eq CP], [.fits (.ptr th)], [], true⟩
      (fun _ s Γ => ReqOK ([] : List Cap) s Γ) (fun _ s Γ x => CapPW ([] : List Cap) s Γ x)
      (fun _ _ _ _ _ _ => True)) [.val (.word (BitVec.ofNat 64 KL)), .val (.word (BitVec.ofNat 64 CP))]
      (callEntryStateHOLFinite s callee) (.returned v) st)
    (hvw : ∃ T, v = .val (.word T)) :
    ∃ (Γ' : Gam) (q' : Ptrs) (T : BitVec 64), v = .val (.word T) ∧ Ext Γ Γ' ∧ Heap a Γ' q' (gz st) ∧
      SIc a kn kvf Γ' q' { st with locals := s.locals } ∧ Fits Γ' (.ptr th) T := by
  obtain ⟨T, rfl⟩ := hvw
  obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hmem, hret, -⟩ := gcall ha hh hR argsOK_eq2'
    (fun x => argCells_eq2') (fun c hc => by cases hc) (by simp) (fun h => hgr)
  have hord := heap_ord hh
  have hord' := heap_ord hh'
  have hglobs : ∀ g' ∈ hid, st.globals.lookup g' = s.globals.lookup g' := hR.2
  refine ⟨Γ', q', T, rfl, hext, hh', siC_call hS hord hord' hmo hnf hext hglobs hmem, ?_⟩
  exact hret 0 (.fits (.ptr th)) T (by simp) (by simp [flattenHOL])

theorem siC_locals {a : Act σ} {kn : Know} {kvf kvf' : List (MlS × BitVec 64 × FK)} {Γ : Gam} {q : Ptrs}
    {s s' : State σ} (hS : SIc a kn kvf Γ q s) (hL : LVf Γ kvf' s'.locals)
    (hg : s'.globals = s.globals) (hm : s'.memory = s.memory) : SIc a kn kvf' Γ q s' := by
  obtain ⟨-, hW, hB, hwv, hbv, hSs, hJs⟩ := hS
  refine ⟨hL, fun W h => ?_, fun B h => ?_, fun k v h => ?_, fun k v h => ?_, fun S h => ?_,
    fun J h => ?_⟩
  · rw [hg]; exact hW W h
  · rw [hg]; exact hB B h
  · obtain ⟨W, h1, h2, h3, h4⟩ := hwv k v h
    exact ⟨W, h1, h2, by rw [hm]; exact h3, h4⟩
  · obtain ⟨B, h1, h2, h3, h4⟩ := hbv k v h
    exact ⟨B, h1, h2, by rw [hm]; exact h3, h4⟩
  · rw [hg]; exact hSs S h
  · rw [hg]; exact hJs J h

theorem lvf_cons_set {Γ : Gam} {base : List (MlS × BitVec 64 × FK)} {m : LocalsH} {x : MlS} {T : BitVec 64}
    {fk : FK} (hb : LVf Γ base m) (hx : ∀ q ∈ base, q.1 ≠ x) (hf : Fits Γ fk T) :
    LVf Γ ((x, T, fk) :: base) (m.update (x, .val (.word T))) := by
  intro q hq
  rcases List.mem_cons.mp hq with rfl | hq
  · exact ⟨lookup_update_self _ _ _, hf⟩
  · obtain ⟨h1, h2⟩ := hb q hq
    exact ⟨by rw [lookup_update_ne _ _ (Ne.symm (hx q hq))]; exact h1, h2⟩

/-- **`t = htab_new(KL, CP);`** (the local `t` exists). -/
theorem step_new_assign {a : Act σ} (ha : ActOK a guestCtx) (hX : guestCtx.code.lookup = guestCode)
    (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC) (haH : a.H = guestHooksR (σ := σ))
    (hgr : a.sg.grows = true) {th KL CP : Nat} (hq : (KL, CP) ∈ newInst) (hth : th ∈ hdrTys)
    (hrh : (guestC.ty th).region = .heap) (hthk : htKL th = KL) {T0 : BitVec 64} {k0 : FK}
    {base : List (MlS × BitVec 64 × FK)} (hbase : ∀ q ∈ base, q.1 ≠ nm "t") (kn : Know)
    {F : State σ → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (SI a kn ((nm "t", T0, k0) :: base))
      (.call (some (some (.local, nm "t"), none)) (nm "htab_new") [cw KL, cw CP])
      (NQr (fun t => ∃ T, SI a kn ((nm "t", T, .ptr th) :: base) t) F) := by
  have hsum := csumm_new_th (σ := σ) hq hth hrh hthk
  have hsum' : SumSpecA σ guestCtx a.Cb a.H (nm "htab_new") ⟨[.eq KL, .eq CP], [.fits (.ptr th)], [], true⟩
      (fun _ s Γ => ReqOK ([] : List Cap) s Γ) (fun _ s Γ x => CapPW ([] : List Cap) s Γ x)
      (fun _ _ _ _ _ _ => True) := by
    rw [hCb, haH]; exact hsum
  have hf := ghostLift hX htab_new_in_dw (sumSpecA_funSpec hsum')
  refine nqr_callA hf ?_
  intro s hs ⟨Γ, q, hext, hh, hS⟩ vs hvs callee v st hR hst hval
  have hvs' : vs = [.val (.word (BitVec.ofNat 64 KL)), .val (.word (BitVec.ofNat 64 CP))] := by
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    rw [ev_cw] at h1 h2
    cases h1; cases h2
    rfl
  subst hvs'
  have ht0 : s.locals.lookup (nm "t") = some (.val (.word T0)) := (hS.1 (nm "t", T0, k0) List.mem_cons_self).1
  have hvw := Dn.word_of_valid ht0 hval
  obtain ⟨Γ', q', T, rfl, hext', hh', hSc, hfit⟩ := new_core ha haC hCb haH hgr (th := th) (KL := KL) (CP := CP)
    hh hS hR hvw
  refine ⟨T, Γ', q', ext_trans hext hext', ?_, ?_⟩
  · exact heap_congr (s := gz st) ha.hH rfl rfl rfl rfl hh'
  · refine siC_locals hSc ?_ rfl rfl
    have hbase' : LVf Γ' base s.locals := fun q hq' => hSc.1 q (List.mem_cons_of_mem _ hq')
    exact lvf_cons_set hbase' hbase hfit

/-- **`var t = htab_new(KL, CP); k`**: the continuation runs with the new local. -/
theorem step_new_dec {a : Act σ} (ha : ActOK a guestCtx) (hX : guestCtx.code.lookup = guestCode)
    (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC) (haH : a.H = guestHooksR (σ := σ))
    (hgr : a.sg.grows = true) {th KL CP : Nat} (hq : (KL, CP) ∈ newInst) (hth : th ∈ hdrTys)
    (hrh : (guestC.ty th).region = .heap) (hthk : htKL th = KL)
    {kvf : List (MlS × BitVec 64 × FK)} (hkvf : ∀ q ∈ kvf, q.1 ≠ nm "t") (kn : Know)
    {F : State σ → ValueHOL 64 → Prop} (hF' : CongrF F) {k : ProgHOL 64} {J2 : State σ → Prop}
    (hk : ∀ T : BitVec 64, HoareG σ guestCtx (SI a kn ((nm "t", T, .ptr th) :: kvf)) k (NQr J2 F)) :
    HoareG σ guestCtx (SI a kn kvf) (.decCall (nm "t") .one (nm "htab_new") [cw KL, cw CP] k)
      (NQr (fun _ => True) F) := by
  have hsum := csumm_new_th (σ := σ) hq hth hrh hthk
  have hsum' : SumSpecA σ guestCtx a.Cb a.H (nm "htab_new") ⟨[.eq KL, .eq CP], [.fits (.ptr th)], [], true⟩
      (fun _ s Γ => ReqOK ([] : List Cap) s Γ) (fun _ s Γ x => CapPW ([] : List Cap) s Γ x)
      (fun _ _ _ _ _ _ => True) := by
    rw [hCb, haH]; exact hsum
  have hf := ghostLift hX htab_new_in_dw (sumSpecA_funSpec hsum')
  refine nqr_decCall hF' hf (J1 := fun v t' => ∃ T, v = .val (.word T) ∧
    SI a kn ((nm "t", T, .ptr th) :: kvf) t') (J2 := J2) ?_ ?_ (fun _ _ _ _ => trivial)
  · intro s hs ⟨Γ, q, hext, hh, hS⟩ vs hvs callee v st hR hst hsh
    have hvs' : vs = [.val (.word (BitVec.ofNat 64 KL)), .val (.word (BitVec.ofNat 64 CP))] := by
      obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
      obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
      rw [evs_nil] at hr2
      cases hr2
      rw [ev_cw] at h1 h2
      cases h1; cases h2
      rfl
    subst hvs'
    have hvw := val_of_shapeEq_one' hsh
    obtain ⟨Γ', q', T, rfl, hext', hh', hSc, hfit⟩ := new_core ha haC hCb haH hgr (th := th) (KL := KL)
      (CP := CP) hh hS hR hvw
    refine ⟨T, rfl, Γ', q', ext_trans hext hext', ?_, ?_⟩
    · exact heap_congr (s := gz st) ha.hH rfl rfl rfl rfl hh'
    · refine siC_locals hSc ?_ rfl rfl
      intro q hq'
      rcases List.mem_cons.mp hq' with rfl | hq'
      · exact ⟨lk_set_self _ _ _, hfit⟩
      · obtain ⟨h1, h2⟩ := hSc.1 q hq'
        exact ⟨by rw [lk_set_ne _ _ (Ne.symm (hkvf q hq'))]; exact h1, h2⟩
  · intro v s hs ⟨T, hv, hP⟩ hg
    subst hv
    exact hk T s hs hP hg

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.step_new_assign
#print axioms InitECandidate.Solver.MemSafe.Ini.step_new_dec
