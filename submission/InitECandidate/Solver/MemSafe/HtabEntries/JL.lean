import InitECandidate.Solver.MemSafe.HtabEntries.JSetG

/-!
# The journal entries for the journal-and-list family `guestHooksJL`

Instances of the generic proofs (`JHooksG`, `StateRestoreG`, `JTailG`, `JSetG`) at
`jHooks_guestJL`: same signatures, capabilities and tables as the `guestHooksJ` entries.

* **`csumm_state_restoreL`**: `CSumm … guestHooksJL "state_restore" srSig srCaps`;
* **`csumm_jsetL th`**, **`csumm_jdelL th`** (`th ∈ hdrTys`, `th ≠ tHTs20`);
* `jsetTabL_sound`, `jdelTabL_sound` (the tables `jsetTab`, `jdelTab`);
* `G_jn_incL`, `G_jn_decL`; the steps `trk_jstoreG`, `trkJ_incG`, `trkJ_jnG` take `jHooks_guestJL`.
-/

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem csumm_state_restoreL (hF : FoldOK σ X guestC guestHooksJL) :
    CSumm σ X guestC guestHooksJL (nm "state_restore") srSig srCaps :=
  csumm_state_restoreG jHooks_guestJL hF

theorem csumm_jsetL (hF : FoldOK σ X guestC guestHooksJL) {th : Nat} (hth : th ∈ hdrTys)
    (hts : th ≠ tHTs20) : CSumm σ X guestC guestHooksJL (nm "jset") (jsetSig th) (jCaps th) :=
  csumm_jsetG jHooks_guestJL hF hth hts

theorem csumm_jdelL (hF : FoldOK σ X guestC guestHooksJL) {th : Nat} (hth : th ∈ hdrTys)
    (hts : th ≠ tHTs20) : CSumm σ X guestC guestHooksJL (nm "jdel") (jdelSig th) (jCaps th) :=
  csumm_jdelG jHooks_guestJL hF hth hts

theorem jsetTabL_sound (hF : FoldOK σ X guestC guestHooksJL) :
    CTabSound σ X guestC guestHooksJL jsetTab :=
  jsetTab_soundG jHooks_guestJL hF

theorem jdelTabL_sound (hF : FoldOK σ X guestC guestHooksJL) :
    CTabSound σ X guestC guestHooksJL jdelTab :=
  jdelTab_soundG jHooks_guestJL hF

theorem G_jn_decL {Γ : Gam} {u : State σ} (hG : G guestC guestHooksJL Γ u) {J : BitVec 64}
    (hJ : u.globals.lookup gJn = some (.val (.word J))) (h1 : 1 ≤ J.toNat) :
    G guestC guestHooksJL Γ
      (Flapjack.PanSemStateFiniteExact.setKvarHOLFinite .global gJn (.val (.word (J - BitVec.ofNat 64 1))) u) :=
  G_jn_decG jHooks_guestJL hG hJ h1

theorem G_jn_incL {Γ : Gam} {u : State σ} (hG : G guestC guestHooksJL Γ u) {J : BitVec 64}
    (hJ : u.globals.lookup gJn = some (.val (.word J))) {e : Obj} (he : e ∈ Γ)
    (hej : gword u gJ = some e.base) (hlt : ∀ c : BitVec 64, gword u gJc = some c → J.toNat < c.toNat)
    (hent : JEnt Γ u.memory e.base J.toNat) :
    G guestC guestHooksJL Γ
      (Flapjack.PanSemStateFiniteExact.setKvarHOLFinite .global gJn (.val (.word (J + BitVec.ofNat 64 1))) u) :=
  G_jn_incG jHooks_guestJL hG hJ he hej hlt hent

end InitECandidate.Solver.MemSafe.HtabEntries
