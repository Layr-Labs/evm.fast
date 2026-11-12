import InitECandidate.Solver.MemSafe.Ops6.LoopDefs
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# The topics pop loop of `op_log` (sonnet-log)

`lg_loop`: from `GKB` with the block `[topics, topics + 32 * ntopics + 8)` tracked, the loop
`while i < ntopics { var t = stack_pop(); u256_to_be32(t, topics + i * 32); i = i + 1; }`
ends in `GK d` with `MEM_LEN` (EV slot 4) and every local except `i` unchanged.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

theorem lg_dst_nat {q iw : BitVec 64} {k : Nat} (hk : iw.toNat < k) (hb : q.toNat + k * 32 < 2 ^ 64) :
    (q + iw * BitVec.ofNat 64 32).toNat = q.toNat + iw.toNat * 32 := by
  rw [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat]
  have h32 : 32 % 2 ^ 64 = 32 := by norm_num
  rw [h32, Nat.mod_eq_of_lt (a := iw.toNat * 32) (by nlinarith),
    Nat.mod_eq_of_lt (by nlinarith)]

theorem lg_incr_nat {iw : BitVec 64} {k : Nat} (hk : iw.toNat < k) (hb : k < 2 ^ 63) :
    (iw + BitVec.ofNat 64 1).toNat = iw.toNat + 1 := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat]
  have h1 : 1 % 2 ^ 64 = 1 := by norm_num
  rw [h1, Nat.mod_eq_of_lt (by omega)]

section loop
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs
local notation "KB" => GKB (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

theorem lg_loop (hfs : fs = (e, c) :: rest) {u0 : State σ} {nt q L0 : BitVec 64} {d : Nat}
    (hnt : u0.locals.lookup (nm "ntopics") = some (.val (.word nt)))
    (hq : u0.locals.lookup (nm "topics") = some (.val (.word q)))
    (hi : u0.locals.lookup (nm "i") = some (.val (.word 0)))
    (hnt1024 : nt.toNat ≤ 1024) (hbnd : q.toNat + (nt.toNat * 32 + 8) ≤ heapEnd)
    (hu : KB q.toNat (nt.toNat * 32 + 8) d u0) (hL : fld u0.memory e 32 = L0) :
    HoareG σ guestCtx (fun t => t = u0) (.while lgCond lgBody) (LgQ Γ0 s0 p0 fs e u0 L0 d) := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hKB := kOK_gkb (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs) (b := q.toNat) (n := nt.toNat * 32 + 8)
  have hKJ := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have hhe : heapEnd < 2 ^ 64 := by decide
  have hbody : HoareG σ guestCtx
      (fun s => LgI Γ0 s0 p0 fs e u0 nt L0 q.toNat (nt.toNat * 32 + 8) d s ∧ CondTrue s lgCond)
      lgBody (LgBQ (LgI Γ0 s0 p0 fs e u0 nt L0 q.toNat (nt.toNat * 32 + 8) d)
        (LgQ Γ0 s0 p0 fs e u0 L0 d)) := by
    refine hoareG_pt fun s ⟨hI, hcond⟩ => ?_
    obtain ⟨iw, hi', hile, hloc, hK, hmem⟩ := hI
    have hntL : s.locals.lookup (nm "ntopics") = some (.val (.word nt)) := by
      rw [hloc _ (by decide)]; exact hnt
    have hqL : s.locals.lookup (nm "topics") = some (.val (.word q)) := by
      rw [hloc _ (by decide)]; exact hq
    have hlt : iw.toNat < nt.toNat := by
      obtain ⟨w, hw0, hne⟩ := hcond
      have hw : ev s lgCond = some (.val (.word w)) := hw0
      rw [ev_cmp (by rw [ev_lv]; exact hi') (by rw [ev_lv]; exact hntL)] at hw
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
      cases hcmp : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .less iw nt
      · rw [hcmp] at hw
        simp only [Bool.false_eq_true, if_false] at hw
        exact absurd hw.symm hne
      · exact (cmp_less_nat (by omega) (by omega)).mp hcmp
    refine hoareG_gkDecBQ lg_pop_mem lg_pop_fp hfs lg_pop_ok (fun g h => h) rfl hK
      (fun vs hvs Γ1 p1 hrun hch hE hb' =>
        argsOK_any (by simp [lgPopSg]) (by rw [evs_len hvs]; rfl)) ?_ ?_
    · intro st hst hsl v hsh
      have hmem1 : fld st.memory e 32 = L0 := by
        have := hsl 4 (by decide) (by rw [evKs_capEv]; decide)
        exact this.trans hmem
      set s1 : State σ := setVarHOLFinite (nm "t") v { st with locals := s.locals } with hs1
      have hKs1 : KB q.toNat (nt.toNat * 32 + 8) d s1 := hKB.congr _ st _ hst rfl rfl rfl rfl
      have hs1_ne : ∀ y, y ≠ nm "t" → s1.locals.lookup y = s.locals.lookup y :=
        fun y hy => lk_set_ne _ _ (Ne.symm hy)
      have hiL : ev s1 (lv (nm "i")) = some (.val (.word iw)) := by
        rw [ev_lv, hs1_ne _ (by decide)]; exact hi'
      have hqL1 : ev s1 (lv (nm "topics")) = some (.val (.word q)) := by
        rw [ev_lv, hs1_ne _ (by decide)]; exact hqL
      have hD : ev s1 lgDst = some (.val (.word (q + iw * BitVec.ofNat 64 32))) :=
        ev_add2 hqL1 (ev_mul2 hiL (ev_cw _ 32))
      refine hoareG_seq (R := fun ro t => (ro = none → t.locals = s1.locals ∧
            KB q.toNat (nt.toNat * 32 + 8) d t ∧ fld t.memory e 32 = L0) ∧
          ∀ r, ro = some r → Abn r ∧ (¬ Abortive r → KJ 0 t))
        (hoareG_gkCallBQ lg_tb_mem lg_tb_fp hfs lg_tb_ok (fun g h => h) rfl (u0 := s1) hKs1
          ?_ ?_ ?_) ?_ ?_
      · intro vs hvs Γ1 p1 hrun hch hE hb'
        obtain ⟨v1, vs1, rfl, hv1, h1⟩ := evs_cons_inv hvs
        obtain ⟨v2, vs2, rfl, hv2, h2⟩ := evs_cons_inv h1
        rw [evs_zero h2]
        rw [hD, Option.some.injEq] at hv2
        subst hv2
        refine ⟨rfl, fun i pt v hpt hv => ?_⟩
        rcases i with _ | _ | i
        · simp only [lgTbSg, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
          subst hpt; trivial
        · simp only [lgTbSg, List.getElem?_cons_succ, List.getElem?_cons_zero,
            Option.some.injEq] at hpt hv
          subst hpt; subst hv
          refine ⟨_, rfl, ?_⟩
          have hdn := lg_dst_nat (q := q) (iw := iw) (k := nt.toNat) hlt (by omega)
          refine lg_bufOK_sub hb' ?_ ?_ <;> rw [hdn] <;> omega
        · simp [lgTbSg] at hpt
      · intro t hl hk hsl2
        refine ⟨fun _ => ⟨hl, hk, ?_⟩, fun r h => (by cases h)⟩
        have := hsl2 4 (by decide) (by simp [evKs])
        exact this.trans hmem1
      · intro r t hr hK
        exact ⟨fun h => (by cases h), fun r' h => (by cases h; exact ⟨hr, hK⟩)⟩
      · intro r t _ hr _ h
        cases r with
        | none => exact absurd rfl hr
        | some r' =>
          obtain ⟨hab, hK'⟩ := h.2 r' rfl
          exact lgBQ_abn hab (fun hna => kok_loc hKJ (hK' hna) _)
      · refine hoareG_pt fun t ht => ?_
        obtain ⟨hl, hkt, hmt⟩ := ht.1 rfl
        refine hoareG_assign fun s2 _ hs2 v' hv' hvalid => ?_
        subst hs2
        have hit : ev s2 (lv (nm "i")) = some (.val (.word iw)) := by
          rw [ev_lv, hl]; exact hiL
        have hv'' : v' = .val (.word (iw + BitVec.ofNat 64 1)) := by
          rw [ev_add2 hit (ev_cw _ 1)] at hv'
          exact (Option.some.inj hv').symm
        subst hv''
        refine ⟨fun _ => ⟨iw + BitVec.ofNat 64 1, ?_, ?_, ?_, ?_, ?_⟩, fun h => (by cases h),
          fun h => (by cases h), fun r' h => (by cases h)⟩
        · show (_ : Locs).lookup (nm "i") = _
          rw [lookup_resVarEq_restore, if_neg (by decide)]
          exact lk_set_self _ _ _
        · rw [lg_incr_nat hlt (by omega)]; omega
        · intro y hy
          show (_ : Locs).lookup y = _
          rw [lookup_resVarEq_restore]
          by_cases hyt : y = nm "t"
          · rw [if_pos hyt, hyt]; exact hloc _ (by decide)
          · rw [if_neg hyt, lk_set_ne _ _ (Ne.symm hy), hl, hs1_ne _ hyt]; exact hloc y hy
        · exact hKB.congr _ _ _ hkt rfl rfl rfl rfl
        · exact hmt
    · intro r t hr hK
      exact lgBQ_abn hr (fun hna => hK hna)
  refine hoareG_pre (P := LgI Γ0 s0 p0 fs e u0 nt L0 q.toNat (nt.toNat * 32 + 8) d)
    (hoareG_while ?_ hbody ?_) (fun t _ h => ?_)
  · intro s ⟨iw, h1, h2, h3, h4, h5⟩
    exact ⟨iw, h1, h2, h3, hKB.congr _ _ _ h4 rfl rfl rfl rfl, h5⟩
  · intro s _ ⟨iw, h1, h2, h3, h4, h5⟩ _
    exact ⟨fun _ => ⟨h3, gkb_gk h4, h5⟩, fun r' h => (by cases h)⟩
  · subst h
    exact ⟨0, hi, Nat.zero_le _, fun y _ => rfl, hu, hL⟩

end loop

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.lg_loop
