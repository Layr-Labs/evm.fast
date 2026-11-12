import InitECandidate.Solver.MemSafe.Ops6.Final
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# From `extend_memory` on, and the topics block (sonnet-log)

* `lg_ext`: `extend_memory(x.1); require_not_static(); <record tail>` from `GK d`;
* `lg_topics`: `var topics = alloc(ntopics * 32 + 8); var i = 0; while ..; <lg_ext>` from `GK d`.
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

abbrev lgE1 : ProgHOL 64 :=
  .seq (callD (nm "extend_memory") [Struct.rf 1 "x"])
  (.seq (callD (nm "require_not_static") []) lgTailF)

abbrev lgL : ProgHOL 64 :=
  .decCall (nm "topics") .one (nm "alloc") [.op .add [.panop .mul [lv (nm "ntopics"), cw 32], cw 8]]
  (.dec (nm "i") .one (cw 0) (.seq (.while lgCond lgBody) lgE1))

def lgE2 : GEnv := ⟨[], [nm "require_not_static"], [Hooks.gJn]⟩
def lgRnsSg : Sig := ⟨[], [], [], false⟩

theorem lg_rns_mem : (nm "require_not_static", lgRnsSg, ([] : List Cap)) ∈ ShardsJL.tab26 := by
  decide +kernel
theorem lg_rns_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "require_not_static") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)
theorem lg_rns_ok : PlainOKB lgE2 (nm "require_not_static") lgRnsSg [] 0 := by decide +kernel

section mid
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs
local notation "KB" => GKB (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

theorem lg_ext (hfs : fs = (e, c) :: rest) {d : Nat} {u : State σ} (hu : KJ d u)
    {nt q nn X1 X2 A0 A1 A2 A3 : BitVec 64}
    (hnt : u.locals.lookup (nm "ntopics") = some (.val (.word nt)))
    (hq : u.locals.lookup (nm "topics") = some (.val (.word q)))
    (hn : u.locals.lookup (nm "n") = some (.val (.word nn))) (hnn : nn.toNat < 2 ^ 61)
    (hst : u.locals.lookup (nm "start") = some (wv [A0, A1, A2, A3]))
    (hx : u.locals.lookup (nm "x") = some (wv [X1, X2]))
    (hX32 : X2.toNat % 32 = 0) (hXb : (fld u.memory e 32).toNat + X2.toNat ≤ 2 ^ 40)
    (hd : 1 ≤ d) (hnt1024 : nt.toNat ≤ 1024) :
    HoareG σ guestCtx (fun t => t = u) lgE1 (GQ (KJ) true) := by
  refine hoareG_gkEm hfs (P := fun t => t = u) (d := d) (X := X2) (fun u' hu' => ?_) ?_
  · subst hu'
    exact ⟨hu, Struct.ev_wv_word hx (i := 1) (by simp), hX32, hXb⟩
  · refine hoareG_pt fun t ⟨u', hu', hl, hKt, hlen, hkeep⟩ => ?_
    subst hu'
    refine hoareG_gkCallAK (gw := [Hooks.gJn]) (args := []) lg_rns_mem lg_rns_fp hfs lg_rns_ok
      (fun g h => h) hKt
      (fun vs hvs Γ1 p1 hrun hch hE =>
        argsOK_any (by simp [lgRnsSg]) (by rw [evs_len hvs]; rfl))
      fun t' hl' hK' hsl => ?_
    refine hoareG_pt fun t'' h'' => ?_
    subst h''
    exact lg_final hfs hK' (nt := nt) (q := q) (nn := nn) (A0 := A0) (A1 := A1) (A2 := A2)
      (A3 := A3) (by rw [hl', hl]; exact hnt) (by rw [hl', hl]; exact hq)
      (by rw [hl', hl]; exact hn) hnn (by rw [hl', hl]; exact hst) hd hnt1024


theorem lg_topics (hfs : fs = (e, c) :: rest) {d : Nat} {u : State σ} (hu : KJ d u)
    {nt nn X1 X2 A0 A1 A2 A3 : BitVec 64}
    (hnt : u.locals.lookup (nm "ntopics") = some (.val (.word nt)))
    (hn : u.locals.lookup (nm "n") = some (.val (.word nn))) (hnn : nn.toNat < 2 ^ 61)
    (hst : u.locals.lookup (nm "start") = some (wv [A0, A1, A2, A3]))
    (hx : u.locals.lookup (nm "x") = some (wv [X1, X2]))
    (hX32 : X2.toNat % 32 = 0) (hXb : (fld u.memory e 32).toNat + X2.toNat ≤ 2 ^ 40)
    (hd : 1 ≤ d) (hnt1024 : nt.toNat ≤ 1024) :
    HoareG σ guestCtx (fun t => t = u) lgL (GQ (KJ) true) := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨m, Γ1, pm, hW⟩ := win_start hu
  have hN : ev u (.op .add [.panop .mul [lv (nm "ntopics"), cw 32], cw 8]) =
      some (.val (.word (nt * BitVec.ofNat 64 32 + BitVec.ofNat 64 8))) :=
    ev_add2 (ev_mul2 (by rw [ev_lv]; exact hnt) (ev_cw _ 32)) (ev_cw _ 8)
  have hNn : (nt * BitVec.ofNat 64 32 + BitVec.ofNat 64 8).toNat = nt.toNat * 32 + 8 := by
    rw [BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat, BitVec.toNat_ofNat]
    have h32 : 32 % 2 ^ 64 = 32 := by norm_num
    have h8 : 8 % 2 ^ 64 = 8 := by norm_num
    rw [h32, h8, Nat.mod_eq_of_lt (a := nt.toNat * 32) (by omega), Nat.mod_eq_of_lt (by omega)]
  refine hoareG_winAllocT hfs hW hN fun st q' pc' hm hmo hW' hq8 hbnd hT => ?_
  rw [hNn] at hbnd hT
  have hKB := gkb_of_win hF hfs hW' (tmpBuf_bufOK hT)
  refine hoareG_dec fun s _ hs v hv hsh => ?_
  subst hs
  have hv0 : v = .val (.word 0) := by
    rw [ev_cw] at hv; exact (Option.some.inj hv).symm
  subst hv0
  refine hoareG_conseq (P := fun t => t = _) ?_ (fun _ _ h => h)
    (fun r t _ _ hq => gq_loc kOK_KJ hq _)
  have hKB' := kOK_gkb (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs) (b := q'.toNat) (n := nt.toNat * 32 + 8)
  refine hoareG_seq (R := LgQ Γ0 s0 p0 fs e _ (fld u.memory e 32) d)
    (lg_loop hfs (nt := nt) (q := q') (L0 := fld u.memory e 32) (d := d)
      (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hnt)
      (by rw [lk_set_ne _ _ (by decide), lk_set_self])
      (by rw [lk_set_self])
      hnt1024 hbnd
      (hKB'.congr _ _ _ hKB rfl rfl rfl rfl)
      (by show fld st.memory e 32 = _; rw [hm])) ?_ ?_
  · intro r t _ hr _ h
    cases r with
    | none => exact absurd rfl hr
    | some r' => exact ⟨fun h0 => (by cases h0), h.2⟩
  · refine hoareG_pt fun t ht => ?_
    obtain ⟨hloc, hK, hmem⟩ := ht.1 rfl
    have hlk : ∀ y, y ≠ nm "i" → y ≠ nm "topics" →
        t.locals.lookup y = u.locals.lookup y := fun y h1 h2 => by
      rw [hloc y h1, lk_set_ne _ _ (Ne.symm h1), lk_set_ne _ _ (Ne.symm h2)]
    refine lg_ext hfs hK (nt := nt) (q := q') (nn := nn) (X1 := X1) (X2 := X2) (A0 := A0)
      (A1 := A1) (A2 := A2) (A3 := A3) ?_ ?_ ?_ hnn ?_ ?_ hX32 ?_ hd hnt1024
    · rw [hlk _ (by decide) (by decide)]; exact hnt
    · rw [hloc _ (by decide), lk_set_ne _ _ (by decide), lk_set_self]
    · rw [hlk _ (by decide) (by decide)]; exact hn
    · rw [hlk _ (by decide) (by decide)]; exact hst
    · rw [hlk _ (by decide) (by decide)]; exact hx
    · rw [hmem]; exact hXb

end mid

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.lg_ext
#print axioms InitECandidate.Solver.MemSafe.Frames.lg_topics
