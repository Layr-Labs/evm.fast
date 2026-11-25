import InitECandidate.Solver.MemSafe.D0.AuthorizationCount
import InitECandidate.Solver.AuthorizationWork.AuthorizationBothReprice
import InitECandidate.Solver.Improvements.AcceptedExactWhileCost
import InitECandidate.Solver.Improvements.ThirdSourceAnalyzer
import InitECandidate.Solver.MemSafe.Frames.FinCost

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace AuthorizationBothLoop
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.D0

local notation "HJ" => (Hooks.guestHooksR)
local notation "gwJ" => [Hooks.gJn]

def authorizationIterPrice : Nat := 3776793992349366006528893981282719641684626

def authorizationLoopPrice : Nat := 2 ^ 21 * (authorizationIterPrice + 1)

private theorem authorizationIter_cost {σ : Type} : Cost σ guestCtx sdIter authorizationIterPrice :=
  AuthorizationBothReprice.iter_cost

section
variable {σ : Type} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

/-- The signed guard does not wrap, and a continuing body keeps the tracked
    heap array and increases the index by exactly one. -/
theorem authorizationLoop_cost (hRA : RaH σ) (hSC : SetCodeH σ) (hfs : fs = (e,c) :: rest)
    {W S A N : BitVec 64} {xs : List (MlS × ValueHOL 64)}
    (hxW : xs.lookup (nm "written") = some (.val (.word W)))
    (hxS : xs.lookup (nm "set_for") = some (.val (.word S)))
    (hxA : xs.lookup (nm "auths") = some (.val (.word A)))
    (hxN : xs.lookup (nm "n") = some (.val (.word N))) (hfr : IterFresh xs) :
    Inv.CostP σ guestCtx
      (fun t => KPd HJ gwJ Γ0 s0 p0 fs e mg t (LBp W S A N) ∧
        ∃ i : BitVec 64, i.toNat ≤ N.toNat ∧ LA t.locals ((nm "i", .val (.word i)) :: xs))
      (.while (.cmp .less (lv (nm "i")) (lv (nm "n"))) sdIter) authorizationLoopPrice := by
  let K (t : State σ) := KPd HJ gwJ Γ0 s0 p0 fs e mg t (LBp W S A N)
  let L (t : State σ) (i : BitVec 64) := LA t.locals ((nm "i", .val (.word i)) :: xs)
  let I (t : State σ) := K t ∧ ∃ i : BitVec 64, i.toNat ≤ N.toNat ∧ L t i
  let guard : ExpHOL 64 := .cmp .less (lv (nm "i")) (lv (nm "n"))
  let μ (t : State σ) := match t.locals.lookup (nm "i") with
    | some (.val (.word i)) => N.toNat - i.toNat
    | _ => 0
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  have hcount (u : State σ) (hK : K u) : N.toNat ≤ 2 ^ 21 := by
    obtain ⟨_, Γ, q, hrun, _, _, _, _, _, _, hArr⟩ := hK
    have hG := hrun.2.2.2.2.2.1
    obtain ⟨_, _, _, hLayout, _⟩ := hG
    exact authorization_count_of_array hLayout hArr
  have hi (u : State σ) (i : BitVec 64) (hl : L u i) :
      u.locals.lookup (nm "i") = some (.val (.word i)) :=
    la_lookup hl (by simp [List.lookup])
  have hμ (u : State σ) (i : BitVec 64) (hl : L u i) :
      μ u = N.toNat - i.toNat := by
    simp only [μ, hi u i hl]
  have hguard (u : State σ) (i : BitVec 64) (hK : K u) (hle : i.toNat ≤ N.toNat)
      (hl : L u i) (hc : CondTrue u guard) : i.toNat < N.toNat := by
    obtain ⟨w, hw, hne⟩ := hc
    change ev u (.cmp .less (lv (nm "i")) (lv (nm "n"))) = _ at hw
    obtain ⟨a,b,ha,hb,hcmp⟩ := cmp_true hw hne
    have hn : u.locals.lookup (nm "n") = some (.val (.word N)) :=
      la_lookup hl (by rw [lk_cons_ne (by decide)]; exact hxN)
    rw [ev_lv_eq (hi u i hl)] at ha
    rw [ev_lv_eq hn] at hb
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at ha hb
    subst ha hb
    have hN := hcount u hK
    exact slt_lt hle (by omega) hcmp
  have hnext (u : State σ) (i : BitVec 64) (hK : K u) (hlt : i.toNat < N.toNat) :
      (i + BitVec.ofNat 64 1).toNat = i.toNat + 1 := by
    have hN := hcount u hK
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by decide : 1 < 2 ^ 64)]
    exact Nat.mod_eq_of_lt (by omega)
  have hstep (u : State σ) (i : BitVec 64) (hK : K u) (hl : L u i) (hlt : i.toNat < N.toNat) :
      HoareG σ guestCtx (fun t => t = u) sdIter
        (PLQ K (fun l => LA l ((nm "i", .val (.word (i + BitVec.ofNat 64 1))) :: xs))) := by
    refine hoareG_rebaseQ lbp_mono hK ?_
    intro Γ q hrun hB hp hG hself
    exact sd_iter hRA hSC hfs hself hG hxW hxS hxA hfr hl hB.1 hB.2.1 hB.2.2 hlt
  have hnormal (u : State σ) (i : BitVec 64) (hK : K u) (hl : L u i) (hlt : i.toNat < N.toNat)
      (hctx : InCtx u guestCtx) (ht : Tracked (evaluateHOLFiniteState u sdIter).1)
      (hexit : (evaluateHOLFiniteState u sdIter).1 = none ∨
        (evaluateHOLFiniteState u sdIter).1 = some .continue) :
      K (evaluateHOLFiniteState u sdIter).2 ∧ L (evaluateHOLFiniteState u sdIter).2 (i + BitVec.ofNat 64 1) := by
    have hpost := hstep u i hK hl hlt u hctx rfl (good_of_tracked ht)
    rcases hpost with ⟨_,hk,hl'⟩ | ⟨r,hr,habn,_⟩
    · exact ⟨hk,hl'⟩
    · rw [hr] at hexit
      rcases hexit with h | h
      · cases h
      · obtain rfl := Option.some.inj h
        simp [Abn] at habn
  exact AcceptedExactWhileCost.costP_while_exact (I := I) (c := guard) μ (2 ^ 21)
    (fun u ⟨hk,i,hle,hl⟩ => ⟨kpd_same hH hk rfl rfl rfl rfl,i,hle,hl⟩)
    (fun _ => rfl) (Inv.costP_of_cost authorizationIter_cost)
    (by
      intro u hctx ⟨⟨hk,i,hle,hl⟩,hc⟩ ht hexit
      have hlt := hguard u i hk hle hl hc
      obtain ⟨hk',hl'⟩ := hnormal u i hk hl hlt hctx ht hexit
      exact ⟨hk',i + BitVec.ofNat 64 1, by rw [hnext u i hk hlt]; omega, hl'⟩)
    (by
      intro u _ ⟨hk,i,_,hl⟩ _
      rw [hμ u i hl]
      exact (Nat.sub_le _ _).trans (hcount u hk))
    (by
      intro u _ ⟨hk,i,hle,hl⟩ hc
      have hlt := hguard u i hk hle hl hc
      rw [hμ u i hl]
      omega)
    (by
      intro k u hctx ⟨⟨hk,i,hle,hl⟩,hc,hr⟩ ht hexit
      have hlt := hguard u i hk hle hl hc
      obtain ⟨_,hl'⟩ := hnormal u i hk hl hlt hctx ht hexit
      rw [hμ u i hl] at hr
      rw [hμ _ _ hl', hnext u i hk hlt]
      omega)

end

#print axioms authorizationLoop_cost

end AuthorizationBothLoop
