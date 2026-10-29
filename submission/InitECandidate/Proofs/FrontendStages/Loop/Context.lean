import Flapjack.Pancake.CrepToLoop.ContextExact
import Lean
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def signatures : List (Flapjack.Basis.Pure.MlString.MlString × List Nat × Unit) :=
[(Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 97#8, 105#8, 110#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 97#8, 105#8, 110#8, 39#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 114#8, 97#8, 112#8, 95#8, 119#8, 105#8, 116#8, 104#8], [0],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 101#8, 109#8, 95#8, 105#8, 110#8, 105#8, 116#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 108#8, 108#8, 111#8, 99#8], [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 101#8, 97#8, 112#8, 95#8, 109#8, 97#8, 114#8, 107#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 101#8, 97#8, 112#8, 95#8, 114#8, 101#8, 108#8, 101#8, 97#8, 115#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 114#8, 97#8, 109#8, 101#8, 95#8, 109#8, 101#8, 109#8, 95#8, 97#8, 108#8, 108#8, 111#8, 99#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 114#8, 97#8, 109#8, 101#8, 95#8, 109#8, 101#8, 109#8, 95#8, 109#8, 97#8, 114#8, 107#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 114#8, 97#8, 109#8, 101#8, 95#8, 109#8, 101#8, 109#8, 95#8, 114#8, 101#8, 108#8, 101#8, 97#8, 115#8,
        101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 99#8, 114#8, 97#8, 116#8, 99#8, 104#8, 95#8, 97#8, 108#8, 108#8, 111#8, 99#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 99#8, 114#8, 97#8, 116#8, 99#8, 104#8, 95#8, 109#8, 97#8, 114#8, 107#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 99#8, 114#8, 97#8, 116#8, 99#8, 104#8, 95#8, 114#8, 101#8, 108#8, 101#8, 97#8, 115#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 101#8, 109#8, 99#8, 112#8, 121#8], [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 101#8, 109#8, 122#8, 101#8, 114#8, 111#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 101#8, 109#8, 101#8, 113#8], [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [105#8, 115#8, 95#8, 122#8, 101#8, 114#8, 111#8, 95#8, 98#8, 121#8, 116#8, 101#8, 115#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [108#8, 100#8, 95#8, 108#8, 101#8, 51#8, 50#8], [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [108#8, 100#8, 95#8, 108#8, 101#8, 54#8, 52#8], [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [108#8, 100#8, 95#8, 98#8, 101#8, 51#8, 50#8], [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 115#8, 119#8, 97#8, 112#8, 54#8, 52#8], [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [108#8, 100#8, 95#8, 98#8, 101#8, 54#8, 52#8], [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 116#8, 95#8, 108#8, 101#8, 51#8, 50#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 116#8, 95#8, 108#8, 101#8, 54#8, 52#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 116#8, 95#8, 98#8, 101#8, 51#8, 50#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 116#8, 95#8, 98#8, 101#8, 54#8, 52#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [105#8, 110#8, 112#8, 117#8, 116#8, 95#8, 98#8, 108#8, 111#8, 98#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 117#8, 116#8, 112#8, 117#8, 116#8, 95#8, 119#8, 114#8, 105#8, 116#8, 101#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 105#8, 110#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 97#8, 120#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 100#8, 105#8, 118#8, 109#8, 111#8, 100#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 100#8, 105#8, 118#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 109#8, 111#8, 100#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [99#8, 101#8, 105#8, 108#8, 95#8, 108#8, 111#8, 103#8, 50#8], [0],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [117#8, 50#8, 53#8, 54#8, 95#8, 119#8, 115#8, 95#8, 105#8, 110#8, 105#8, 116#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [117#8, 50#8, 53#8, 54#8, 95#8, 102#8, 114#8, 111#8, 109#8, 95#8, 119#8, 111#8, 114#8, 100#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 108#8, 111#8, 119#8], [0, 1, 2, 3],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [117#8, 50#8, 53#8, 54#8, 95#8, 102#8, 105#8, 116#8, 115#8, 95#8, 119#8, 111#8, 114#8, 100#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [117#8, 50#8, 53#8, 54#8, 95#8, 105#8, 115#8, 95#8, 122#8, 101#8, 114#8, 111#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 108#8, 105#8, 109#8, 98#8],
    [0, 1, 2, 3, 4], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 98#8, 105#8, 116#8], [0, 1, 2, 3, 4],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 101#8, 113#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 108#8, 116#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 103#8, 116#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 115#8, 108#8, 116#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 115#8, 103#8, 116#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 99#8, 109#8, 112#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 110#8, 111#8, 116#8], [0, 1, 2, 3],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 97#8, 110#8, 100#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 111#8, 114#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 120#8, 111#8, 114#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [117#8, 50#8, 53#8, 54#8, 95#8, 97#8, 100#8, 100#8, 95#8, 99#8, 97#8, 114#8, 114#8, 121#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 97#8, 100#8, 100#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 115#8, 117#8, 98#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 110#8, 101#8, 103#8], [0, 1, 2, 3],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 117#8, 108#8, 54#8, 52#8, 120#8, 54#8, 52#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 109#8, 117#8, 108#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [117#8, 50#8, 53#8, 54#8, 95#8, 109#8, 117#8, 108#8, 95#8, 102#8, 117#8, 108#8, 108#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [110#8, 108#8, 122#8, 51#8, 50#8], [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [100#8, 105#8, 118#8, 54#8, 52#8, 98#8, 121#8, 51#8, 50#8], [0, 1, 2],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [117#8, 50#8, 53#8, 54#8, 95#8, 116#8, 111#8, 95#8, 100#8, 105#8, 103#8, 105#8, 116#8, 115#8],
    [0, 1, 2, 3, 4], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [100#8, 105#8, 103#8, 105#8, 116#8, 115#8, 95#8, 116#8, 111#8, 95#8, 117#8, 50#8, 53#8, 54#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [100#8, 105#8, 103#8, 105#8, 116#8, 115#8, 95#8, 108#8, 101#8, 110#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [100#8, 105#8, 118#8, 109#8, 110#8, 117#8], [0, 1, 2, 3, 4, 5],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [100#8, 105#8, 103#8, 105#8, 116#8, 115#8, 95#8, 100#8, 105#8, 118#8, 109#8, 111#8, 100#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [117#8, 50#8, 53#8, 54#8, 95#8, 100#8, 105#8, 118#8, 109#8, 111#8, 100#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 100#8, 105#8, 118#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 109#8, 111#8, 100#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 97#8, 98#8, 115#8], [0, 1, 2, 3],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 115#8, 100#8, 105#8, 118#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 115#8, 109#8, 111#8, 100#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [117#8, 50#8, 53#8, 54#8, 95#8, 97#8, 100#8, 100#8, 109#8, 111#8, 100#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [117#8, 50#8, 53#8, 54#8, 95#8, 109#8, 117#8, 108#8, 109#8, 111#8, 100#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 105#8, 116#8, 95#8, 108#8, 101#8, 110#8, 103#8, 116#8, 104#8, 54#8, 52#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [117#8, 50#8, 53#8, 54#8, 95#8, 98#8, 105#8, 116#8, 95#8, 108#8, 101#8, 110#8, 103#8, 116#8, 104#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [117#8, 50#8, 53#8, 54#8, 95#8, 98#8, 121#8, 116#8, 101#8, 95#8, 108#8, 101#8, 110#8, 103#8, 116#8, 104#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 101#8, 120#8, 112#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 115#8, 104#8, 108#8], [0, 1, 2, 3, 4],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 115#8, 104#8, 114#8], [0, 1, 2, 3, 4],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 115#8, 97#8, 114#8], [0, 1, 2, 3, 4],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [117#8, 50#8, 53#8, 54#8, 95#8, 115#8, 105#8, 103#8, 110#8, 101#8, 120#8, 116#8, 101#8, 110#8, 100#8],
    [0, 1, 2, 3, 4], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 98#8, 121#8, 116#8, 101#8],
    [0, 1, 2, 3, 4], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [117#8, 50#8, 53#8, 54#8, 95#8, 102#8, 114#8, 111#8, 109#8, 95#8, 98#8, 101#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [117#8, 50#8, 53#8, 54#8, 95#8, 116#8, 111#8, 95#8, 98#8, 101#8, 51#8, 50#8],
    [0, 1, 2, 3, 4], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [117#8, 50#8, 53#8, 54#8, 95#8, 116#8, 111#8, 95#8, 98#8, 101#8, 95#8, 109#8, 105#8, 110#8],
    [0, 1, 2, 3, 4], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 104#8, 97#8, 50#8, 53#8, 54#8, 95#8, 105#8, 110#8, 105#8, 116#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 104#8, 97#8, 50#8, 53#8, 54#8, 95#8, 115#8, 116#8, 97#8, 116#8, 101#8, 95#8, 105#8, 110#8, 105#8, 116#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 104#8, 97#8, 50#8, 53#8, 54#8, 95#8, 98#8, 108#8, 111#8, 99#8, 107#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 104#8, 97#8, 50#8, 53#8, 54#8, 95#8, 102#8, 105#8, 110#8, 105#8, 115#8, 104#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 104#8, 97#8, 50#8, 53#8, 54#8], [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 104#8, 97#8, 50#8, 53#8, 54#8, 95#8, 112#8, 97#8, 105#8, 114#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [107#8, 101#8, 99#8, 99#8, 97#8, 107#8, 95#8, 105#8, 110#8, 105#8, 116#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [107#8, 101#8, 99#8, 99#8, 97#8, 107#8, 95#8, 102#8, 49#8, 54#8, 48#8, 48#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [107#8, 101#8, 99#8, 99#8, 97#8, 107#8, 95#8, 97#8, 98#8, 115#8, 111#8, 114#8, 98#8, 95#8, 98#8, 108#8, 111#8,
        99#8, 107#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [107#8, 101#8, 99#8, 99#8, 97#8, 107#8, 50#8, 53#8, 54#8], [0, 1, 2],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [114#8, 108#8, 112#8, 95#8, 102#8, 97#8, 105#8, 108#8], [0],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 108#8, 112#8, 95#8, 114#8, 101#8, 97#8, 100#8, 95#8, 108#8, 101#8, 110#8, 103#8, 116#8, 104#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [114#8, 108#8, 112#8, 95#8, 105#8, 116#8, 101#8, 109#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 108#8, 112#8, 95#8, 100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 102#8, 117#8, 108#8, 108#8, 121#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 108#8, 112#8, 95#8, 105#8, 116#8, 101#8, 109#8, 95#8, 104#8, 101#8, 97#8, 100#8, 101#8, 114#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [95#8, 114#8, 108#8, 112#8, 95#8, 118#8, 97#8, 108#8, 105#8, 100#8, 97#8, 116#8, 101#8, 95#8, 105#8, 116#8, 101#8,
        109#8, 115#8, 95#8, 98#8, 111#8, 100#8, 121#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 108#8, 112#8, 95#8, 118#8, 97#8, 108#8, 105#8, 100#8, 97#8, 116#8, 101#8, 95#8, 105#8, 116#8, 101#8,
        109#8, 115#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 108#8, 112#8, 95#8, 105#8, 116#8, 101#8, 109#8, 95#8, 116#8, 111#8, 116#8, 97#8, 108#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 108#8, 112#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 99#8, 111#8, 117#8, 110#8, 116#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 108#8, 112#8, 95#8, 105#8, 116#8, 101#8, 109#8, 95#8, 116#8, 111#8, 116#8, 97#8, 108#8, 95#8, 117#8,
        110#8, 99#8, 104#8, 101#8, 99#8, 107#8, 101#8, 100#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 108#8, 112#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 116#8, 111#8, 95#8, 115#8, 108#8, 105#8, 99#8,
        101#8, 115#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 108#8, 112#8, 95#8, 98#8, 121#8, 116#8, 101#8, 115#8, 95#8, 116#8, 111#8, 95#8, 119#8, 111#8, 114#8,
        100#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 108#8, 112#8, 95#8, 99#8, 104#8, 101#8, 99#8, 107#8, 95#8, 117#8, 105#8, 110#8, 116#8, 95#8, 98#8, 121#8,
        116#8, 101#8, 115#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [114#8, 108#8, 112#8, 95#8, 98#8, 101#8, 95#8, 108#8, 101#8, 110#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [114#8, 108#8, 112#8, 95#8, 112#8, 117#8, 116#8, 95#8, 98#8, 101#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 108#8, 112#8, 95#8, 119#8, 114#8, 105#8, 116#8, 101#8, 95#8, 104#8, 101#8, 97#8, 100#8, 101#8, 114#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 108#8, 112#8, 95#8, 104#8, 101#8, 97#8, 100#8, 101#8, 114#8, 95#8, 108#8, 101#8, 110#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 108#8, 112#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 95#8, 98#8, 121#8, 116#8, 101#8, 115#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 108#8, 112#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 95#8, 119#8, 111#8, 114#8, 100#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 108#8, 112#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8,
        104#8, 101#8, 97#8, 100#8, 101#8, 114#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 108#8, 112#8, 95#8, 98#8, 121#8, 116#8, 101#8, 115#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8,
        100#8, 95#8, 108#8, 101#8, 110#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 108#8, 112#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 104#8, 101#8, 97#8, 100#8, 101#8, 114#8, 95#8,
        108#8, 101#8, 110#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 108#8, 112#8, 95#8, 119#8, 111#8, 114#8, 100#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 100#8,
        95#8, 108#8, 101#8, 110#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 97#8, 98#8, 95#8, 110#8, 101#8, 119#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 116#8, 97#8, 98#8, 95#8, 110#8, 101#8, 119#8, 95#8, 115#8, 99#8, 114#8, 97#8, 116#8, 99#8, 104#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 116#8, 97#8, 98#8, 95#8, 102#8, 105#8, 114#8, 115#8, 116#8, 95#8, 100#8, 105#8, 102#8, 102#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 116#8, 97#8, 98#8, 95#8, 102#8, 105#8, 110#8, 100#8, 95#8, 108#8, 101#8, 97#8, 102#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 97#8, 98#8, 95#8, 103#8, 101#8, 116#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 97#8, 98#8, 95#8, 104#8, 97#8, 115#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 116#8, 97#8, 98#8, 95#8, 110#8, 101#8, 119#8, 95#8, 110#8, 111#8, 100#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 116#8, 97#8, 98#8, 95#8, 110#8, 101#8, 119#8, 95#8, 108#8, 101#8, 97#8, 102#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 116#8, 97#8, 98#8, 95#8, 110#8, 101#8, 119#8, 95#8, 105#8, 110#8, 116#8, 101#8, 114#8, 110#8, 97#8,
        108#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 97#8, 98#8, 95#8, 103#8, 114#8, 111#8, 119#8], [0],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 97#8, 98#8, 95#8, 115#8, 101#8, 116#8], [0, 1, 2],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 97#8, 98#8, 95#8, 100#8, 101#8, 108#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 116#8, 97#8, 98#8, 95#8, 116#8, 114#8, 117#8, 110#8, 99#8, 97#8, 116#8, 101#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 97#8, 98#8, 95#8, 99#8, 111#8, 117#8, 110#8, 116#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 97#8, 98#8, 95#8, 99#8, 97#8, 112#8], [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 97#8, 98#8, 95#8, 105#8, 116#8, 101#8, 109#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 97#8, 98#8, 95#8, 107#8, 101#8, 121#8, 115#8], [0],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 97#8, 98#8, 95#8, 99#8, 111#8, 112#8, 121#8], [0],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 116#8, 97#8, 98#8, 95#8, 99#8, 111#8, 112#8, 121#8, 95#8, 115#8, 99#8, 114#8, 97#8, 116#8, 99#8, 104#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 101#8, 99#8, 112#8, 50#8, 53#8, 54#8, 107#8, 49#8, 95#8, 105#8, 110#8, 105#8, 116#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 95#8, 97#8, 100#8, 100#8], [0, 1, 2, 3, 4, 5, 6, 7],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 95#8, 115#8, 117#8, 98#8], [0, 1, 2, 3, 4, 5, 6, 7],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 95#8, 110#8, 101#8, 103#8], [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 95#8, 114#8, 101#8, 100#8, 117#8, 99#8, 101#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2, 3, 4, 5, 6, 7],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 95#8, 115#8, 113#8, 114#8], [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 95#8, 112#8, 111#8, 119#8], [0, 1, 2, 3, 4, 5, 6, 7],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 112#8, 95#8, 105#8, 110#8, 118#8, 95#8, 102#8, 101#8, 114#8, 109#8, 97#8, 116#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 111#8, 100#8, 105#8, 110#8, 118#8, 95#8, 98#8, 105#8, 110#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 111#8, 100#8, 95#8, 104#8, 97#8, 108#8, 102#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 111#8, 100#8, 95#8, 115#8, 117#8, 98#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 95#8, 105#8, 110#8, 118#8], [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 95#8, 115#8, 113#8, 114#8, 116#8], [0, 1, 2, 3],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 110#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2, 3, 4, 5, 6, 7],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 110#8, 95#8, 97#8, 100#8, 100#8], [0, 1, 2, 3, 4, 5, 6, 7],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 110#8, 95#8, 112#8, 111#8, 119#8], [0, 1, 2, 3, 4, 5, 6, 7],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 110#8, 95#8, 105#8, 110#8, 118#8, 95#8, 102#8, 101#8, 114#8, 109#8, 97#8, 116#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 110#8, 95#8, 105#8, 110#8, 118#8], [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 99#8, 95#8, 115#8, 101#8, 116#8, 95#8, 105#8, 110#8, 102#8, 105#8, 110#8, 105#8, 116#8, 121#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 99#8, 95#8, 115#8, 101#8, 116#8, 95#8, 97#8, 102#8, 102#8, 105#8, 110#8, 101#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 99#8, 95#8, 105#8, 115#8, 95#8, 105#8, 110#8, 102#8, 105#8, 110#8, 105#8, 116#8, 121#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [101#8, 99#8, 95#8, 100#8, 111#8, 117#8, 98#8, 108#8, 101#8], [0],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 99#8, 95#8, 97#8, 100#8, 100#8, 95#8, 97#8, 102#8, 102#8, 105#8, 110#8, 101#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [101#8, 99#8, 95#8, 97#8, 100#8, 100#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [101#8, 99#8, 95#8, 109#8, 117#8, 108#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [101#8, 99#8, 95#8, 109#8, 117#8, 108#8, 50#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 99#8, 95#8, 116#8, 111#8, 95#8, 97#8, 102#8, 102#8, 105#8, 110#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 99#8, 95#8, 111#8, 110#8, 95#8, 99#8, 117#8, 114#8, 118#8, 101#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 101#8, 99#8, 112#8, 50#8, 53#8, 54#8, 107#8, 49#8, 95#8, 100#8, 101#8, 99#8, 111#8, 109#8, 112#8, 114#8,
        101#8, 115#8, 115#8, 95#8, 114#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 101#8, 99#8, 112#8, 50#8, 53#8, 54#8, 107#8, 49#8, 95#8, 114#8, 101#8, 99#8, 111#8, 118#8, 101#8, 114#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 101#8, 99#8, 112#8, 50#8, 53#8, 54#8, 107#8, 49#8, 95#8, 97#8, 100#8, 100#8, 114#8, 101#8, 115#8, 115#8,
        95#8, 111#8, 102#8, 95#8, 112#8, 111#8, 105#8, 110#8, 116#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 101#8, 99#8, 112#8, 50#8, 53#8, 54#8, 107#8, 49#8, 95#8, 101#8, 99#8, 114#8, 101#8, 99#8, 111#8, 118#8,
        101#8, 114#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 115#8, 122#8, 95#8, 105#8, 110#8, 105#8, 116#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 101#8, 114#8, 107#8, 108#8, 101#8, 105#8, 122#8, 101#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [109#8, 105#8, 120#8, 95#8, 105#8, 110#8, 95#8, 108#8, 101#8, 110#8, 103#8, 116#8, 104#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [109#8, 101#8, 114#8, 107#8, 108#8, 101#8, 105#8, 122#8, 101#8, 95#8, 112#8, 114#8, 111#8, 103#8, 114#8, 101#8,
        115#8, 115#8, 105#8, 118#8, 101#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 116#8, 114#8, 95#8, 112#8, 108#8, 105#8, 115#8, 116#8, 95#8, 99#8, 104#8, 117#8, 110#8, 107#8, 115#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 114#8, 95#8, 112#8, 98#8, 121#8, 116#8, 101#8, 115#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 116#8, 114#8, 95#8, 112#8, 99#8, 111#8, 110#8, 116#8, 97#8, 105#8, 110#8, 101#8, 114#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [112#8, 97#8, 99#8, 107#8, 95#8, 98#8, 121#8, 116#8, 101#8, 115#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 116#8, 114#8, 95#8, 98#8, 121#8, 116#8, 101#8, 115#8, 95#8, 118#8, 101#8, 99#8, 116#8, 111#8, 114#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 116#8, 114#8, 95#8, 98#8, 121#8, 116#8, 101#8, 115#8, 95#8, 108#8, 105#8, 115#8, 116#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 114#8, 95#8, 117#8, 54#8, 52#8, 95#8, 97#8, 116#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 115#8, 122#8, 95#8, 102#8, 97#8, 105#8, 108#8], [0],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 111#8, 115#8, 116#8, 95#8, 105#8, 110#8, 112#8, 117#8, 116#8, 95#8, 98#8, 121#8, 116#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 111#8, 115#8, 116#8, 95#8, 105#8, 110#8, 112#8, 117#8, 116#8, 95#8, 108#8, 101#8, 51#8, 50#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 101#8, 99#8, 104#8, 101#8, 99#8, 107#8, 95#8, 104#8, 111#8, 115#8, 116#8, 95#8, 115#8, 115#8,
        122#8, 95#8, 104#8, 101#8, 97#8, 100#8, 101#8, 114#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 104#8, 111#8, 115#8, 116#8, 95#8, 105#8, 110#8, 112#8, 117#8,
        116#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 115#8, 122#8, 95#8, 99#8, 104#8, 101#8, 99#8, 107#8, 95#8, 111#8, 102#8, 102#8, 115#8, 101#8, 116#8,
        115#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 115#8, 122#8, 95#8, 115#8, 112#8, 108#8, 105#8, 116#8, 95#8, 118#8, 97#8, 114#8, 95#8, 108#8, 105#8,
        115#8, 116#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 115#8, 122#8, 95#8, 102#8, 105#8, 120#8, 101#8, 100#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 99#8,
        111#8, 117#8, 110#8, 116#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 112#8, 97#8, 121#8, 108#8, 111#8, 97#8, 100#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 114#8, 101#8, 113#8, 117#8, 101#8, 115#8, 116#8, 115#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 98#8, 121#8, 116#8, 101#8, 115#8, 95#8, 108#8, 105#8, 115#8,
        116#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 115#8, 116#8, 97#8, 116#8, 101#8, 108#8, 101#8, 115#8, 115#8,
        95#8, 105#8, 110#8, 112#8, 117#8, 116#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 116#8, 114#8, 95#8, 119#8, 105#8, 116#8, 104#8, 100#8, 114#8, 97#8, 119#8, 97#8, 108#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 116#8, 114#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 114#8, 111#8, 111#8, 116#8, 115#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 116#8, 114#8, 95#8, 112#8, 97#8, 121#8, 108#8, 111#8, 97#8, 100#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 116#8, 114#8, 95#8, 100#8, 101#8, 112#8, 111#8, 115#8, 105#8, 116#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 114#8, 95#8, 119#8, 100#8, 114#8, 101#8, 113#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 114#8, 95#8, 99#8, 111#8, 110#8, 115#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 114#8, 95#8, 98#8, 100#8, 101#8, 112#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 114#8, 95#8, 98#8, 101#8, 120#8, 105#8, 116#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 116#8, 114#8, 95#8, 114#8, 101#8, 113#8, 117#8, 101#8, 115#8, 116#8, 95#8, 108#8, 105#8, 115#8, 116#8],
    [0, 1, 2, 3, 4], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 116#8, 114#8, 95#8, 114#8, 101#8, 113#8, 117#8, 101#8, 115#8, 116#8, 115#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 116#8, 114#8, 95#8, 110#8, 101#8, 119#8, 95#8, 112#8, 97#8, 121#8, 108#8, 111#8, 97#8, 100#8, 95#8, 114#8,
        101#8, 113#8, 117#8, 101#8, 115#8, 116#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 101#8, 114#8, 105#8, 97#8, 108#8, 105#8, 122#8, 101#8, 95#8, 114#8, 101#8, 115#8, 117#8, 108#8, 116#8],
    [0, 1, 2, 3, 4], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 100#8, 114#8, 95#8, 117#8, 105#8, 110#8, 116#8, 95#8, 102#8, 105#8, 101#8, 108#8, 100#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 100#8, 114#8, 95#8, 119#8, 111#8, 114#8, 100#8, 95#8, 102#8, 105#8, 101#8, 108#8, 100#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 100#8, 114#8, 95#8, 117#8, 50#8, 53#8, 54#8, 95#8, 102#8, 105#8, 101#8, 108#8, 100#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 100#8, 114#8, 95#8, 98#8, 121#8, 116#8, 101#8, 115#8, 95#8, 102#8, 105#8, 101#8, 108#8, 100#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 100#8, 114#8, 95#8, 114#8, 97#8, 119#8, 95#8, 102#8, 105#8, 101#8, 108#8, 100#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 104#8, 101#8, 97#8, 100#8, 101#8, 114#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 108#8, 112#8, 95#8, 112#8, 117#8, 116#8, 95#8, 117#8, 50#8, 53#8, 54#8],
    [0, 1, 2, 3, 4], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 95#8, 104#8, 101#8, 97#8, 100#8, 101#8, 114#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 101#8, 97#8, 100#8, 101#8, 114#8, 95#8, 104#8, 97#8, 115#8, 104#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [118#8, 97#8, 108#8, 105#8, 100#8, 97#8, 116#8, 101#8, 95#8, 104#8, 101#8, 97#8, 100#8, 101#8, 114#8, 115#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 97#8, 121#8, 108#8, 111#8, 114#8, 95#8, 101#8, 120#8, 112#8, 111#8, 110#8, 101#8, 110#8, 116#8, 105#8,
        97#8, 108#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 97#8, 108#8, 99#8, 117#8, 108#8, 97#8, 116#8, 101#8, 95#8, 98#8, 108#8, 111#8, 98#8, 95#8, 103#8, 97#8,
        115#8, 95#8, 112#8, 114#8, 105#8, 99#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 97#8, 108#8, 99#8, 117#8, 108#8, 97#8, 116#8, 101#8, 95#8, 101#8, 120#8, 99#8, 101#8, 115#8, 115#8, 95#8,
        98#8, 108#8, 111#8, 98#8, 95#8, 103#8, 97#8, 115#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 104#8, 101#8, 99#8, 107#8, 95#8, 103#8, 97#8, 115#8, 95#8, 108#8, 105#8, 109#8, 105#8, 116#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 97#8, 108#8, 99#8, 117#8, 108#8, 97#8, 116#8, 101#8, 95#8, 98#8, 97#8, 115#8, 101#8, 95#8, 102#8, 101#8,
        101#8, 95#8, 112#8, 101#8, 114#8, 95#8, 103#8, 97#8, 115#8],
    [0, 1, 2, 3, 4, 5, 6], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 101#8, 97#8, 100#8, 101#8, 114#8, 95#8, 105#8, 110#8, 105#8, 116#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [118#8, 97#8, 108#8, 105#8, 100#8, 97#8, 116#8, 101#8, 95#8, 104#8, 101#8, 97#8, 100#8, 101#8, 114#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 112#8, 116#8, 95#8, 102#8, 97#8, 105#8, 108#8], [0],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 112#8, 116#8, 95#8, 105#8, 110#8, 105#8, 116#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [107#8, 101#8, 121#8, 95#8, 116#8, 111#8, 95#8, 110#8, 105#8, 98#8, 98#8, 108#8, 101#8, 115#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 111#8, 109#8, 112#8, 97#8, 99#8, 116#8, 95#8, 116#8, 111#8, 95#8, 110#8, 105#8, 98#8, 98#8, 108#8, 101#8,
        115#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [110#8, 105#8, 98#8, 98#8, 108#8, 101#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 116#8, 111#8, 95#8, 99#8, 111#8,
        109#8, 112#8, 97#8, 99#8, 116#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 111#8, 109#8, 109#8, 111#8, 110#8, 95#8, 112#8, 114#8, 101#8, 102#8, 105#8, 120#8, 95#8, 108#8, 101#8,
        110#8, 103#8, 116#8, 104#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [110#8, 105#8, 98#8, 98#8, 108#8, 101#8, 115#8, 95#8, 99#8, 111#8, 110#8, 99#8, 97#8, 116#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [110#8, 111#8, 100#8, 101#8, 100#8, 98#8, 95#8, 98#8, 117#8, 105#8, 108#8, 100#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [110#8, 111#8, 100#8, 101#8, 100#8, 98#8, 95#8, 108#8, 111#8, 111#8, 107#8, 117#8, 112#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [110#8, 111#8, 100#8, 101#8, 95#8, 110#8, 101#8, 119#8, 95#8, 104#8, 97#8, 115#8, 104#8, 101#8, 100#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [110#8, 111#8, 100#8, 101#8, 95#8, 110#8, 101#8, 119#8, 95#8, 108#8, 101#8, 97#8, 102#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [110#8, 111#8, 100#8, 101#8, 95#8, 110#8, 101#8, 119#8, 95#8, 101#8, 120#8, 116#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [110#8, 111#8, 100#8, 101#8, 95#8, 110#8, 101#8, 119#8, 95#8, 98#8, 114#8, 97#8, 110#8, 99#8, 104#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [110#8, 111#8, 100#8, 101#8, 95#8, 105#8, 110#8, 118#8, 97#8, 108#8, 105#8, 100#8, 97#8, 116#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [95#8, 114#8, 101#8, 115#8, 111#8, 108#8, 118#8, 101#8, 95#8, 115#8, 116#8, 101#8, 112#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [95#8, 100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 115#8, 116#8, 101#8, 112#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [95#8, 100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 119#8, 105#8, 116#8, 110#8, 101#8, 115#8, 115#8, 95#8,
        110#8, 111#8, 100#8, 101#8, 95#8, 98#8, 111#8, 100#8, 121#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [95#8, 100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 119#8, 105#8, 116#8, 110#8, 101#8, 115#8, 115#8, 95#8,
        110#8, 111#8, 100#8, 101#8, 95#8, 109#8, 112#8, 116#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [95#8, 100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 119#8, 105#8, 116#8, 110#8, 101#8, 115#8, 115#8, 95#8,
        110#8, 111#8, 100#8, 101#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 119#8, 105#8, 116#8, 110#8, 101#8, 115#8, 115#8, 95#8, 116#8,
        111#8, 95#8, 109#8, 112#8, 116#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 114#8, 105#8, 101#8, 95#8, 119#8, 97#8, 108#8, 107#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 114#8, 105#8, 101#8, 95#8, 108#8, 111#8, 111#8, 107#8, 117#8, 112#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 112#8, 116#8, 95#8, 110#8, 101#8, 119#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [109#8, 112#8, 116#8, 95#8, 102#8, 114#8, 111#8, 109#8, 95#8, 119#8, 105#8, 116#8, 110#8, 101#8, 115#8, 115#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [109#8, 112#8, 116#8, 95#8, 110#8, 105#8, 98#8, 98#8, 108#8, 101#8, 95#8, 107#8, 101#8, 121#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 112#8, 116#8, 95#8, 103#8, 101#8, 116#8], [0, 1, 2],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [95#8, 99#8, 114#8, 101#8, 97#8, 116#8, 101#8, 95#8, 98#8, 114#8, 97#8, 110#8, 99#8, 104#8, 95#8, 102#8, 114#8,
        111#8, 109#8, 95#8, 116#8, 119#8, 111#8, 95#8, 108#8, 101#8, 97#8, 118#8, 101#8, 115#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [95#8, 105#8, 110#8, 115#8, 101#8, 114#8, 116#8, 95#8, 105#8, 110#8, 116#8, 111#8, 95#8, 108#8, 101#8, 97#8,
        102#8],
    [0, 1, 2, 3, 4], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [95#8, 115#8, 112#8, 108#8, 105#8, 116#8, 95#8, 101#8, 120#8, 116#8, 101#8, 110#8, 115#8, 105#8, 111#8, 110#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [95#8, 109#8, 112#8, 116#8, 95#8, 105#8, 110#8, 115#8, 101#8, 114#8, 116#8, 95#8, 110#8, 111#8, 100#8, 101#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [95#8, 99#8, 111#8, 108#8, 108#8, 97#8, 112#8, 115#8, 101#8, 95#8, 98#8, 114#8, 97#8, 110#8, 99#8, 104#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [95#8, 100#8, 101#8, 108#8, 101#8, 116#8, 101#8, 95#8, 101#8, 120#8, 116#8, 95#8, 102#8, 105#8, 110#8, 105#8,
        115#8, 104#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [95#8, 109#8, 112#8, 116#8, 95#8, 100#8, 101#8, 108#8, 101#8, 116#8, 101#8, 95#8, 110#8, 111#8, 100#8, 101#8,
        95#8, 98#8, 111#8, 100#8, 121#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [95#8, 109#8, 112#8, 116#8, 95#8, 100#8, 101#8, 108#8, 101#8, 116#8, 101#8, 95#8, 110#8, 111#8, 100#8, 101#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 112#8, 116#8, 95#8, 115#8, 101#8, 116#8], [0, 1, 2, 3, 4],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [95#8, 110#8, 111#8, 100#8, 101#8, 95#8, 114#8, 108#8, 112#8, 95#8, 98#8, 101#8, 103#8, 105#8, 110#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [95#8, 110#8, 111#8, 100#8, 101#8, 95#8, 114#8, 108#8, 112#8, 95#8, 102#8, 105#8, 110#8, 105#8, 115#8, 104#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [95#8, 110#8, 111#8, 100#8, 101#8, 95#8, 110#8, 101#8, 101#8, 100#8, 115#8, 95#8, 114#8, 108#8, 112#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [95#8, 110#8, 111#8, 100#8, 101#8, 95#8, 114#8, 108#8, 112#8, 95#8, 102#8, 105#8, 108#8, 108#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [110#8, 111#8, 100#8, 101#8, 95#8, 114#8, 108#8, 112#8], [0],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 108#8, 112#8, 95#8, 118#8, 97#8, 108#8, 117#8, 101#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8,
        100#8, 95#8, 108#8, 101#8, 110#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [110#8, 111#8, 100#8, 101#8, 95#8, 114#8, 101#8, 102#8, 95#8, 108#8, 101#8, 110#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [110#8, 111#8, 100#8, 101#8, 95#8, 104#8, 97#8, 115#8, 104#8, 95#8, 99#8, 97#8, 99#8, 104#8, 101#8, 100#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [110#8, 111#8, 100#8, 101#8, 95#8, 119#8, 114#8, 105#8, 116#8, 101#8, 95#8, 114#8, 101#8, 102#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [110#8, 111#8, 100#8, 101#8, 95#8, 104#8, 97#8, 115#8, 104#8], [0],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 112#8, 116#8, 95#8, 114#8, 111#8, 111#8, 116#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 117#8, 105#8, 108#8, 100#8, 95#8, 109#8, 112#8, 116#8, 95#8, 105#8, 110#8, 100#8, 101#8, 120#8, 101#8,
        100#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 102#8, 114#8,
        111#8, 109#8, 95#8, 108#8, 101#8, 97#8, 102#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 120#8, 95#8, 115#8, 99#8, 97#8, 108#8, 97#8, 114#8, 95#8, 105#8, 116#8, 101#8, 109#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 120#8, 95#8, 115#8, 99#8, 97#8, 108#8, 97#8, 114#8, 95#8, 117#8, 50#8, 53#8, 54#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 120#8, 95#8, 115#8, 99#8, 97#8, 108#8, 97#8, 114#8, 95#8, 119#8, 111#8, 114#8, 100#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 120#8, 95#8, 98#8, 121#8, 116#8, 101#8, 115#8, 95#8, 105#8, 116#8, 101#8, 109#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 120#8, 95#8, 102#8, 105#8, 120#8, 101#8, 100#8, 95#8, 98#8, 121#8, 116#8, 101#8, 115#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 120#8, 95#8, 116#8, 111#8, 95#8, 105#8, 116#8, 101#8, 109#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 120#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 105#8, 116#8, 101#8, 109#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 97#8, 99#8, 99#8, 101#8, 115#8, 115#8, 95#8, 108#8, 105#8, 115#8,
        116#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 98#8, 108#8, 111#8, 98#8, 95#8, 104#8, 97#8, 115#8, 104#8, 101#8,
        115#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 97#8, 117#8, 116#8, 104#8, 111#8, 114#8, 105#8, 122#8, 97#8,
        116#8, 105#8, 111#8, 110#8, 115#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 97#8, 99#8, 116#8, 105#8, 111#8,
        110#8, 95#8, 114#8, 108#8, 112#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 97#8, 99#8, 116#8, 105#8, 111#8,
        110#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 120#8, 95#8, 103#8, 97#8, 115#8], [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 120#8, 95#8, 110#8, 111#8, 110#8, 99#8, 101#8], [0],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 120#8, 95#8, 116#8, 111#8], [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 120#8, 95#8, 118#8, 97#8, 108#8, 117#8, 101#8], [0],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 120#8, 95#8, 100#8, 97#8, 116#8, 97#8], [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 120#8, 95#8, 114#8], [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 120#8, 95#8, 115#8], [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 120#8, 95#8, 104#8, 97#8, 115#8, 95#8, 97#8, 99#8, 99#8, 101#8, 115#8, 115#8, 95#8, 108#8, 105#8, 115#8,
        116#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 120#8, 95#8, 98#8, 108#8, 111#8, 98#8, 95#8, 99#8, 111#8, 117#8, 110#8, 116#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 97#8, 108#8, 99#8, 117#8, 108#8, 97#8, 116#8, 101#8, 95#8, 116#8, 111#8, 116#8, 97#8, 108#8, 95#8, 98#8,
        108#8, 111#8, 98#8, 95#8, 103#8, 97#8, 115#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 120#8, 95#8, 112#8, 117#8, 116#8, 95#8, 117#8, 50#8, 53#8, 54#8],
    [0, 1, 2, 3, 4], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 120#8, 95#8, 117#8, 50#8, 53#8, 54#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 100#8, 95#8, 108#8,
        101#8, 110#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 120#8, 95#8, 112#8, 117#8, 116#8, 95#8, 116#8, 111#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [97#8, 99#8, 99#8, 101#8, 115#8, 115#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 112#8, 97#8, 121#8, 108#8, 111#8,
        97#8, 100#8, 95#8, 108#8, 101#8, 110#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 120#8, 95#8, 112#8, 117#8, 116#8, 95#8, 97#8, 99#8, 99#8, 101#8, 115#8, 115#8, 95#8, 108#8, 105#8, 115#8,
        116#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 120#8, 95#8, 112#8, 117#8, 116#8, 95#8, 98#8, 108#8, 111#8, 98#8, 95#8, 104#8, 97#8, 115#8, 104#8, 101#8,
        115#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [97#8, 117#8, 116#8, 104#8, 95#8, 112#8, 97#8, 121#8, 108#8, 111#8, 97#8, 100#8, 95#8, 108#8, 101#8, 110#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [97#8, 117#8, 116#8, 104#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 112#8, 97#8, 121#8, 108#8, 111#8, 97#8, 100#8,
        95#8, 108#8, 101#8, 110#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 120#8, 95#8, 112#8, 117#8, 116#8, 95#8, 97#8, 117#8, 116#8, 104#8, 111#8, 114#8, 105#8, 122#8, 97#8,
        116#8, 105#8, 111#8, 110#8, 115#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 120#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 95#8, 98#8, 111#8, 117#8, 110#8, 100#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 120#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 95#8, 103#8, 101#8, 110#8, 101#8, 114#8, 105#8,
        99#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 97#8, 99#8, 116#8, 105#8, 111#8,
        110#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [103#8, 101#8, 116#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 97#8, 99#8, 116#8, 105#8, 111#8, 110#8, 95#8, 104#8,
        97#8, 115#8, 104#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 120#8, 95#8, 115#8, 105#8, 103#8, 110#8, 105#8, 110#8, 103#8, 95#8, 104#8, 97#8, 115#8, 104#8, 95#8,
        109#8, 111#8, 100#8, 101#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 105#8, 103#8, 110#8, 105#8, 110#8, 103#8, 95#8, 104#8, 97#8, 115#8, 104#8, 95#8, 112#8, 114#8, 101#8,
        49#8, 53#8, 53#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 105#8, 103#8, 110#8, 105#8, 110#8, 103#8, 95#8, 104#8, 97#8, 115#8, 104#8, 95#8, 49#8, 53#8, 53#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 105#8, 103#8, 110#8, 105#8, 110#8, 103#8, 95#8, 104#8, 97#8, 115#8, 104#8, 95#8, 50#8, 57#8, 51#8, 48#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 105#8, 103#8, 110#8, 105#8, 110#8, 103#8, 95#8, 104#8, 97#8, 115#8, 104#8, 95#8, 49#8, 53#8, 53#8, 57#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 105#8, 103#8, 110#8, 105#8, 110#8, 103#8, 95#8, 104#8, 97#8, 115#8, 104#8, 95#8, 52#8, 56#8, 52#8, 52#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 105#8, 103#8, 110#8, 105#8, 110#8, 103#8, 95#8, 104#8, 97#8, 115#8, 104#8, 95#8, 55#8, 55#8, 48#8, 50#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 120#8, 95#8, 99#8, 104#8, 97#8, 105#8, 110#8, 95#8, 105#8, 100#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 105#8, 103#8, 110#8, 97#8, 116#8, 117#8, 114#8, 101#8, 95#8, 114#8, 101#8, 99#8, 111#8, 118#8, 101#8,
        114#8, 121#8, 95#8, 112#8, 97#8, 114#8, 97#8, 109#8, 101#8, 116#8, 101#8, 114#8, 115#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 101#8, 99#8, 111#8, 118#8, 101#8, 114#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 97#8, 99#8, 116#8, 105#8,
        111#8, 110#8, 95#8, 112#8, 117#8, 98#8, 108#8, 105#8, 99#8, 95#8, 107#8, 101#8, 121#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 101#8, 110#8, 100#8, 101#8, 114#8, 95#8, 97#8, 100#8, 100#8, 114#8, 101#8, 115#8, 115#8, 95#8, 102#8,
        114#8, 111#8, 109#8, 95#8, 112#8, 117#8, 98#8, 108#8, 105#8, 99#8, 95#8, 107#8, 101#8, 121#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 101#8, 99#8, 111#8, 118#8, 101#8, 114#8, 95#8, 115#8, 101#8, 110#8, 100#8, 101#8, 114#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 101#8, 99#8, 111#8, 118#8, 101#8, 114#8, 95#8, 115#8, 101#8, 110#8, 100#8, 101#8, 114#8, 95#8, 119#8,
        105#8, 116#8, 104#8, 95#8, 99#8, 104#8, 97#8, 105#8, 110#8, 95#8, 105#8, 100#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 116#8, 111#8, 107#8, 101#8, 110#8, 115#8, 95#8, 105#8, 110#8, 95#8,
        100#8, 97#8, 116#8, 97#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 97#8, 108#8, 99#8, 117#8, 108#8, 97#8, 116#8, 101#8, 95#8, 105#8, 110#8, 116#8, 114#8, 105#8, 110#8, 115#8,
        105#8, 99#8, 95#8, 99#8, 111#8, 115#8, 116#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [118#8, 97#8, 108#8, 105#8, 100#8, 97#8, 116#8, 101#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 97#8, 99#8, 116#8,
        105#8, 111#8, 110#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 116#8, 97#8, 116#8, 101#8, 95#8, 105#8, 110#8, 105#8, 116#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 116#8, 97#8, 116#8, 101#8, 95#8, 102#8, 114#8, 101#8, 115#8, 104#8, 95#8, 116#8, 120#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [106#8, 115#8, 101#8, 116#8], [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [106#8, 100#8, 101#8, 108#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 116#8, 97#8, 116#8, 101#8, 95#8, 115#8, 110#8, 97#8, 112#8, 115#8, 104#8, 111#8, 116#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 116#8, 97#8, 116#8, 101#8, 95#8, 114#8, 101#8, 115#8, 116#8, 111#8, 114#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 107#8, 95#8, 109#8, 97#8, 107#8, 101#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 99#8, 99#8, 116#8, 95#8, 110#8, 101#8, 119#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 99#8, 99#8, 116#8, 95#8, 101#8, 109#8, 112#8, 116#8, 121#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 99#8, 99#8, 116#8, 95#8, 99#8, 111#8, 112#8, 121#8], [0],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 101#8, 99#8, 111#8, 114#8, 100#8, 95#8, 112#8, 114#8, 101#8, 95#8, 115#8, 116#8, 97#8, 116#8, 101#8, 95#8,
        114#8, 101#8, 97#8, 100#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [119#8, 115#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 108#8, 101#8, 97#8, 102#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [119#8, 115#8, 95#8, 103#8, 101#8, 116#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 111#8, 112#8,
        116#8, 105#8, 111#8, 110#8, 97#8, 108#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [119#8, 115#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8, 103#8, 101#8, 95#8, 114#8, 111#8, 111#8, 116#8, 95#8,
        111#8, 102#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [119#8, 115#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8, 103#8, 101#8, 95#8, 116#8, 114#8, 105#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [119#8, 115#8, 95#8, 103#8, 101#8, 116#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8, 103#8, 101#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [119#8, 115#8, 95#8, 103#8, 101#8, 116#8, 95#8, 99#8, 111#8, 100#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [119#8, 115#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 104#8, 97#8, 115#8, 95#8, 115#8, 116#8,
        111#8, 114#8, 97#8, 103#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [103#8, 101#8, 116#8, 95#8, 112#8, 114#8, 101#8, 95#8, 115#8, 116#8, 97#8, 116#8, 101#8, 95#8, 97#8, 99#8, 99#8,
        111#8, 117#8, 110#8, 116#8, 95#8, 111#8, 112#8, 116#8, 105#8, 111#8, 110#8, 97#8, 108#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [103#8, 101#8, 116#8, 95#8, 112#8, 114#8, 101#8, 95#8, 115#8, 116#8, 97#8, 116#8, 101#8, 95#8, 97#8, 99#8, 99#8,
        111#8, 117#8, 110#8, 116#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [103#8, 101#8, 116#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 111#8, 112#8, 116#8, 105#8, 111#8,
        110#8, 97#8, 108#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [103#8, 101#8, 116#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 101#8, 116#8, 95#8, 99#8, 111#8, 100#8, 101#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 116#8, 111#8, 114#8, 95#8, 108#8, 111#8, 111#8, 107#8, 117#8, 112#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [103#8, 101#8, 116#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8, 103#8, 101#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [103#8, 101#8, 116#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8, 103#8, 101#8, 95#8, 111#8, 114#8, 105#8, 103#8,
        105#8, 110#8, 97#8, 108#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [103#8, 101#8, 116#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 105#8, 101#8, 110#8, 116#8, 95#8, 115#8, 116#8,
        111#8, 114#8, 97#8, 103#8, 101#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 101#8, 120#8, 105#8, 115#8, 116#8, 115#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 104#8, 97#8, 115#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8,
        103#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 100#8, 101#8, 112#8, 108#8, 111#8, 121#8, 97#8, 98#8, 108#8,
        101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [97#8, 99#8, 99#8, 116#8, 95#8, 105#8, 115#8, 95#8, 101#8, 109#8, 112#8, 116#8, 121#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 101#8, 120#8, 105#8, 115#8, 116#8, 115#8, 95#8, 97#8, 110#8,
        100#8, 95#8, 105#8, 115#8, 95#8, 101#8, 109#8, 112#8, 116#8, 121#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [105#8, 115#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 97#8, 108#8, 105#8, 118#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 101#8, 116#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 101#8, 116#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8, 103#8, 101#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [100#8, 101#8, 115#8, 116#8, 114#8, 111#8, 121#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8, 103#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [100#8, 101#8, 115#8, 116#8, 114#8, 111#8, 121#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [109#8, 111#8, 100#8, 105#8, 102#8, 121#8, 95#8, 115#8, 116#8, 97#8, 116#8, 101#8, 95#8, 99#8, 111#8, 109#8,
        109#8, 105#8, 116#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 108#8, 101#8, 97#8, 114#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 112#8, 114#8, 101#8,
        115#8, 101#8, 114#8, 118#8, 105#8, 110#8, 103#8, 95#8, 98#8, 97#8, 108#8, 97#8, 110#8, 99#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [109#8, 97#8, 114#8, 107#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 99#8, 114#8, 101#8, 97#8,
        116#8, 101#8, 100#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 101#8, 116#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 105#8, 101#8, 110#8, 116#8, 95#8, 115#8, 116#8,
        111#8, 114#8, 97#8, 103#8, 101#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 111#8, 118#8, 101#8, 95#8, 101#8, 116#8, 104#8, 101#8, 114#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 114#8, 101#8, 97#8, 116#8, 101#8, 95#8, 101#8, 116#8, 104#8, 101#8, 114#8],
    [0, 1, 2, 3, 4], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 101#8, 116#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 98#8, 97#8, 108#8, 97#8, 110#8,
        99#8, 101#8],
    [0, 1, 2, 3, 4], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [105#8, 110#8, 99#8, 114#8, 101#8, 109#8, 101#8, 110#8, 116#8, 95#8, 110#8, 111#8, 110#8, 99#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 101#8, 116#8, 95#8, 99#8, 111#8, 100#8, 101#8], [0, 1, 2],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [104#8, 116#8, 97#8, 98#8, 95#8, 117#8, 110#8, 105#8, 111#8, 110#8, 95#8, 105#8, 110#8, 116#8, 111#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [109#8, 101#8, 114#8, 103#8, 101#8, 95#8, 116#8, 120#8, 95#8, 105#8, 110#8, 116#8, 111#8, 95#8, 98#8, 108#8,
        111#8, 99#8, 107#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 114#8, 97#8, 99#8, 107#8, 95#8, 97#8, 110#8, 99#8, 101#8, 115#8, 116#8, 111#8, 114#8, 95#8, 97#8, 99#8,
        99#8, 101#8, 115#8, 115#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [108#8, 115#8, 116#8, 95#8, 110#8, 101#8, 119#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [108#8, 115#8, 116#8, 95#8, 110#8, 101#8, 119#8, 95#8, 115#8, 99#8, 114#8, 97#8, 116#8, 99#8, 104#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [108#8, 115#8, 116#8, 95#8, 112#8, 117#8, 115#8, 104#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 97#8, 108#8, 95#8, 105#8, 110#8, 105#8, 116#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 97#8, 108#8, 95#8, 101#8, 110#8, 115#8, 117#8, 114#8, 101#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8,
        116#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [108#8, 115#8, 116#8, 95#8, 117#8, 112#8, 115#8, 101#8, 114#8, 116#8, 95#8, 105#8, 100#8, 120#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [97#8, 100#8, 100#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8, 103#8, 101#8, 95#8, 119#8, 114#8, 105#8, 116#8,
        101#8],
    [0, 1, 2, 3, 4, 5, 6], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [97#8, 100#8, 100#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8, 103#8, 101#8, 95#8, 114#8, 101#8, 97#8, 100#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [97#8, 100#8, 100#8, 95#8, 98#8, 97#8, 108#8, 97#8, 110#8, 99#8, 101#8, 95#8, 99#8, 104#8, 97#8, 110#8, 103#8,
        101#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [97#8, 100#8, 100#8, 95#8, 110#8, 111#8, 110#8, 99#8, 101#8, 95#8, 99#8, 104#8, 97#8, 110#8, 103#8, 101#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [97#8, 100#8, 100#8, 95#8, 99#8, 111#8, 100#8, 101#8, 95#8, 99#8, 104#8, 97#8, 110#8, 103#8, 101#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [97#8, 100#8, 100#8, 95#8, 116#8, 111#8, 117#8, 99#8, 104#8, 101#8, 100#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8,
        110#8, 116#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [103#8, 101#8, 116#8, 95#8, 112#8, 114#8, 101#8, 95#8, 116#8, 120#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8,
        116#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [103#8, 101#8, 116#8, 95#8, 112#8, 114#8, 101#8, 95#8, 116#8, 120#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8,
        103#8, 101#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [105#8, 100#8, 120#8, 95#8, 115#8, 116#8, 97#8, 114#8, 116#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [105#8, 100#8, 120#8, 95#8, 115#8, 116#8, 97#8, 114#8, 116#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8, 103#8,
        101#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 97#8, 108#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 114#8, 101#8, 109#8, 111#8, 118#8, 101#8, 95#8, 105#8,
        100#8, 120#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 97#8, 108#8, 95#8, 114#8, 101#8, 109#8, 111#8, 118#8, 101#8, 95#8, 99#8, 104#8, 97#8, 110#8, 103#8, 101#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 101#8, 109#8, 111#8, 118#8, 101#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8, 103#8, 101#8, 95#8, 119#8,
        114#8, 105#8, 116#8, 101#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [117#8, 112#8, 100#8, 97#8, 116#8, 101#8, 95#8, 98#8, 117#8, 105#8, 108#8, 100#8, 101#8, 114#8, 95#8, 102#8,
        114#8, 111#8, 109#8, 95#8, 116#8, 120#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [105#8, 110#8, 99#8, 111#8, 114#8, 112#8, 111#8, 114#8, 97#8, 116#8, 101#8, 95#8, 116#8, 120#8, 95#8, 105#8,
        110#8, 116#8, 111#8, 95#8, 98#8, 108#8, 111#8, 99#8, 107#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 97#8, 108#8, 95#8, 115#8, 111#8, 114#8, 116#8, 95#8, 103#8, 116#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 111#8, 114#8, 116#8, 95#8, 101#8, 108#8, 101#8, 109#8, 115#8],
    [0, 1, 2, 3, 4], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 111#8, 114#8, 116#8, 101#8, 100#8, 95#8, 107#8, 101#8, 121#8, 115#8, 51#8, 50#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 97#8, 108#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8,
        116#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 117#8, 105#8, 108#8, 100#8, 95#8, 98#8, 108#8, 111#8, 99#8, 107#8, 95#8, 97#8, 99#8, 99#8, 101#8, 115#8,
        115#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 114#8, 108#8, 112#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [118#8, 97#8, 108#8, 105#8, 100#8, 97#8, 116#8, 101#8, 95#8, 98#8, 108#8, 111#8, 99#8, 107#8, 95#8, 97#8, 99#8,
        99#8, 101#8, 115#8, 115#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 103#8, 97#8, 115#8, 95#8, 108#8, 105#8,
        109#8, 105#8, 116#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 97#8, 116#8, 95#8, 119#8, 111#8, 114#8, 100#8], [0, 1, 2, 3],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 100#8, 100#8, 95#8, 115#8, 97#8, 116#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [99#8, 101#8, 105#8, 108#8, 51#8, 50#8], [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [119#8, 111#8, 114#8, 100#8, 115#8, 95#8, 111#8, 102#8], [0],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 111#8, 95#8, 97#8, 100#8, 100#8, 114#8, 101#8, 115#8, 115#8, 95#8, 109#8, 97#8, 115#8, 107#8, 101#8,
        100#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [97#8, 100#8, 100#8, 114#8, 101#8, 115#8, 115#8, 95#8, 116#8, 111#8, 95#8, 117#8, 50#8, 53#8, 54#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [105#8, 115#8, 95#8, 118#8, 97#8, 108#8, 105#8, 100#8, 95#8, 100#8, 101#8, 108#8, 101#8, 103#8, 97#8, 116#8,
        105#8, 111#8, 110#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [99#8, 104#8, 101#8, 99#8, 107#8, 95#8, 103#8, 97#8, 115#8], [0],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [99#8, 104#8, 97#8, 114#8, 103#8, 101#8, 95#8, 103#8, 97#8, 115#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 104#8, 97#8, 114#8, 103#8, 101#8, 95#8, 115#8, 116#8, 97#8, 116#8, 101#8, 95#8, 103#8, 97#8, 115#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 114#8, 101#8, 100#8, 105#8, 116#8, 95#8, 115#8, 116#8, 97#8, 116#8, 101#8, 95#8, 103#8, 97#8, 115#8, 95#8,
        114#8, 101#8, 102#8, 117#8, 110#8, 100#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 114#8, 97#8, 109#8, 101#8, 95#8, 115#8, 116#8, 97#8, 116#8, 101#8, 95#8, 103#8, 97#8, 115#8, 95#8, 117#8,
        115#8, 101#8, 100#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 101#8, 102#8, 105#8, 108#8, 108#8, 95#8, 102#8, 114#8, 97#8, 109#8, 101#8, 95#8, 115#8, 116#8, 97#8,
        116#8, 101#8, 95#8, 103#8, 97#8, 115#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 116#8, 97#8, 99#8, 107#8, 95#8, 112#8, 111#8, 112#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 116#8, 97#8, 99#8, 107#8, 95#8, 112#8, 117#8, 115#8, 104#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 116#8, 97#8, 99#8, 107#8, 95#8, 112#8, 117#8, 115#8, 104#8, 95#8, 119#8, 111#8, 114#8, 100#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 116#8, 97#8, 99#8, 107#8, 95#8, 112#8, 117#8, 115#8, 104#8, 95#8, 98#8, 111#8, 111#8, 108#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [109#8, 101#8, 109#8, 111#8, 114#8, 121#8, 95#8, 103#8, 97#8, 115#8, 95#8, 99#8, 111#8, 115#8, 116#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 120#8, 116#8, 101#8, 110#8, 100#8, 95#8, 109#8, 101#8, 109#8, 111#8, 114#8, 121#8, 95#8, 99#8, 111#8,
        115#8, 116#8, 49#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 120#8, 116#8, 101#8, 110#8, 100#8, 95#8, 109#8, 101#8, 109#8, 111#8, 114#8, 121#8, 95#8, 99#8, 111#8,
        115#8, 116#8, 50#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 120#8, 116#8, 101#8, 110#8, 100#8, 95#8, 109#8, 101#8, 109#8, 111#8, 114#8, 121#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 104#8, 97#8, 114#8, 103#8, 101#8, 95#8, 119#8, 105#8, 116#8, 104#8, 95#8, 109#8, 101#8, 109#8, 111#8,
        114#8, 121#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 117#8, 102#8, 102#8, 101#8, 114#8, 95#8, 114#8, 101#8, 97#8, 100#8],
    [0, 1, 2, 3, 4], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 111#8, 109#8, 112#8, 117#8, 116#8, 101#8, 95#8, 106#8, 117#8, 109#8, 112#8, 100#8, 101#8, 115#8, 116#8,
        115#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [105#8, 115#8, 95#8, 118#8, 97#8, 108#8, 105#8, 100#8, 95#8, 106#8, 117#8, 109#8, 112#8, 100#8, 101#8, 115#8,
        116#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 115#8, 103#8, 95#8, 110#8, 101#8, 119#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [109#8, 115#8, 103#8, 95#8, 110#8, 101#8, 119#8, 95#8, 115#8, 99#8, 114#8, 97#8, 116#8, 99#8, 104#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 114#8, 97#8, 109#8, 101#8, 95#8, 110#8, 101#8, 119#8], [0],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [112#8, 99#8, 95#8, 97#8, 100#8, 100#8], [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [99#8, 117#8, 114#8, 95#8, 109#8, 115#8, 103#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 101#8, 113#8, 117#8, 105#8, 114#8, 101#8, 95#8, 110#8, 111#8, 116#8, 95#8, 115#8, 116#8, 97#8, 116#8,
        105#8, 99#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [105#8, 115#8, 95#8, 119#8, 97#8, 114#8, 109#8, 95#8, 97#8, 100#8, 100#8, 114#8, 101#8, 115#8, 115#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [119#8, 97#8, 114#8, 109#8, 95#8, 97#8, 100#8, 100#8, 114#8, 101#8, 115#8, 115#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [97#8, 99#8, 99#8, 101#8, 115#8, 115#8, 95#8, 103#8, 97#8, 115#8, 95#8, 99#8, 111#8, 115#8, 116#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [119#8, 97#8, 114#8, 109#8, 95#8, 97#8, 102#8, 116#8, 101#8, 114#8, 95#8, 99#8, 104#8, 97#8, 114#8, 103#8, 101#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 97#8, 100#8, 100#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 109#8, 117#8, 108#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 117#8, 98#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 100#8, 105#8, 118#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 100#8, 105#8, 118#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 109#8, 111#8, 100#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 109#8, 111#8, 100#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 97#8, 100#8, 100#8, 109#8, 111#8, 100#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 109#8, 117#8, 108#8, 109#8, 111#8, 100#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 101#8, 120#8, 112#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 115#8, 105#8, 103#8, 110#8, 101#8, 120#8, 116#8, 101#8, 110#8, 100#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 108#8, 116#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 103#8, 116#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 108#8, 116#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 103#8, 116#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 101#8, 113#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 105#8, 115#8, 122#8, 101#8, 114#8, 111#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 97#8, 110#8, 100#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 111#8, 114#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 120#8, 111#8, 114#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 110#8, 111#8, 116#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 98#8, 121#8, 116#8, 101#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 104#8, 108#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 104#8, 114#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 97#8, 114#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 99#8, 108#8, 122#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 107#8, 101#8, 99#8, 99#8, 97#8, 107#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 116#8, 111#8, 112#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 106#8, 117#8, 109#8, 112#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 106#8, 117#8, 109#8, 112#8, 105#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 112#8, 99#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 103#8, 97#8, 115#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 106#8, 117#8, 109#8, 112#8, 100#8, 101#8, 115#8, 116#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 109#8, 115#8, 116#8, 111#8, 114#8, 101#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 109#8, 115#8, 116#8, 111#8, 114#8, 101#8, 56#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 109#8, 108#8, 111#8, 97#8, 100#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 109#8, 115#8, 105#8, 122#8, 101#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 109#8, 99#8, 111#8, 112#8, 121#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 112#8, 111#8, 112#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 112#8, 117#8, 115#8, 104#8], [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 100#8, 117#8, 112#8], [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 116#8, 97#8, 99#8, 107#8, 95#8, 115#8, 119#8, 97#8, 112#8, 95#8, 112#8, 111#8, 115#8, 105#8, 116#8, 105#8,
        111#8, 110#8, 115#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 119#8, 97#8, 112#8], [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [99#8, 111#8, 100#8, 101#8, 95#8, 105#8, 109#8, 109#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 115#8, 105#8, 110#8, 103#8, 108#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 100#8, 117#8, 112#8, 110#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 119#8, 97#8, 112#8, 110#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 101#8, 120#8, 99#8, 104#8, 97#8, 110#8, 103#8, 101#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [108#8, 111#8, 103#8, 95#8, 97#8, 112#8, 112#8, 101#8, 110#8, 100#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 108#8, 111#8, 103#8], [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [105#8, 115#8, 95#8, 119#8, 97#8, 114#8, 109#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8, 103#8, 101#8, 95#8, 107#8,
        101#8, 121#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [119#8, 97#8, 114#8, 109#8, 95#8, 115#8, 116#8, 111#8, 114#8, 97#8, 103#8, 101#8, 95#8, 107#8, 101#8, 121#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 108#8, 111#8, 97#8, 100#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 115#8, 116#8, 111#8, 114#8, 101#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 116#8, 108#8, 111#8, 97#8, 100#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 116#8, 115#8, 116#8, 111#8, 114#8, 101#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 97#8, 100#8, 100#8, 114#8, 101#8, 115#8, 115#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 98#8, 97#8, 108#8, 97#8, 110#8, 99#8, 101#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 111#8, 114#8, 105#8, 103#8, 105#8, 110#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 99#8, 97#8, 108#8, 108#8, 101#8, 114#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 99#8, 97#8, 108#8, 108#8, 118#8, 97#8, 108#8, 117#8, 101#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 99#8, 97#8, 108#8, 108#8, 100#8, 97#8, 116#8, 97#8, 108#8, 111#8, 97#8, 100#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 99#8, 97#8, 108#8, 108#8, 100#8, 97#8, 116#8, 97#8, 115#8, 105#8, 122#8, 101#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 111#8, 112#8, 121#8, 95#8, 102#8, 114#8, 111#8, 109#8, 95#8, 98#8, 117#8, 102#8, 102#8, 101#8, 114#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 99#8, 97#8, 108#8, 108#8, 100#8, 97#8, 116#8, 97#8, 99#8, 111#8, 112#8, 121#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 99#8, 111#8, 100#8, 101#8, 115#8, 105#8, 122#8, 101#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 99#8, 111#8, 100#8, 101#8, 99#8, 111#8, 112#8, 121#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 103#8, 97#8, 115#8, 112#8, 114#8, 105#8, 99#8, 101#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 120#8, 116#8, 95#8, 99#8, 111#8, 100#8, 101#8, 95#8, 111#8, 102#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 101#8, 120#8, 116#8, 99#8, 111#8, 100#8, 101#8, 115#8, 105#8, 122#8, 101#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 101#8, 120#8, 116#8, 99#8, 111#8, 100#8, 101#8, 99#8, 111#8, 112#8, 121#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 114#8, 101#8, 116#8, 117#8, 114#8, 110#8, 100#8, 97#8, 116#8, 97#8, 115#8, 105#8, 122#8,
        101#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 114#8, 101#8, 116#8, 117#8, 114#8, 110#8, 100#8, 97#8, 116#8, 97#8, 99#8, 111#8, 112#8,
        121#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 101#8, 120#8, 116#8, 99#8, 111#8, 100#8, 101#8, 104#8, 97#8, 115#8, 104#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 115#8, 101#8, 108#8, 102#8, 98#8, 97#8, 108#8, 97#8, 110#8, 99#8, 101#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 108#8, 111#8, 99#8, 107#8, 95#8, 101#8, 110#8, 118#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 98#8, 97#8, 115#8, 101#8, 102#8, 101#8, 101#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 98#8, 108#8, 111#8, 98#8, 104#8, 97#8, 115#8, 104#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 98#8, 108#8, 111#8, 98#8, 98#8, 97#8, 115#8, 101#8, 102#8, 101#8, 101#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 98#8, 108#8, 111#8, 99#8, 107#8, 104#8, 97#8, 115#8, 104#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 99#8, 111#8, 105#8, 110#8, 98#8, 97#8, 115#8, 101#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 116#8, 105#8, 109#8, 101#8, 115#8, 116#8, 97#8, 109#8, 112#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 110#8, 117#8, 109#8, 98#8, 101#8, 114#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 103#8, 97#8, 115#8, 108#8, 105#8, 109#8, 105#8, 116#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 99#8, 104#8, 97#8, 105#8, 110#8, 105#8, 100#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 112#8, 114#8, 101#8, 118#8, 114#8, 97#8, 110#8, 100#8, 97#8, 111#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 108#8, 111#8, 116#8, 110#8, 117#8, 109#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [101#8, 118#8, 109#8, 95#8, 105#8, 110#8, 105#8, 116#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 109#8, 105#8, 116#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 102#8, 101#8, 114#8, 95#8, 108#8, 111#8,
        103#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 114#8, 101#8, 116#8, 117#8, 114#8, 110#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 114#8, 101#8, 118#8, 101#8, 114#8, 116#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 115#8, 101#8, 108#8, 102#8, 100#8, 101#8, 115#8, 116#8, 114#8, 117#8, 99#8, 116#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [103#8, 101#8, 116#8, 95#8, 100#8, 101#8, 108#8, 101#8, 103#8, 97#8, 116#8, 101#8, 100#8, 95#8, 99#8, 111#8,
        100#8, 101#8, 95#8, 97#8, 100#8, 100#8, 114#8, 101#8, 115#8, 115#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 101#8, 99#8, 111#8, 118#8, 101#8, 114#8, 95#8, 97#8, 117#8, 116#8, 104#8, 111#8, 114#8, 105#8, 116#8,
        121#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 97#8, 108#8, 99#8, 117#8, 108#8, 97#8, 116#8, 101#8, 95#8, 100#8, 101#8, 108#8, 101#8, 103#8, 97#8, 116#8,
        105#8, 111#8, 110#8, 95#8, 99#8, 111#8, 115#8, 116#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [118#8, 97#8, 108#8, 105#8, 100#8, 97#8, 116#8, 101#8, 95#8, 97#8, 117#8, 116#8, 104#8, 111#8, 114#8, 105#8,
        122#8, 97#8, 116#8, 105#8, 111#8, 110#8, 95#8, 99#8, 104#8, 101#8, 99#8, 107#8, 115#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 101#8, 116#8, 95#8, 100#8, 101#8, 108#8, 101#8, 103#8, 97#8, 116#8, 105#8, 111#8, 110#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 101#8, 112#8, 97#8, 114#8, 101#8, 95#8, 100#8, 105#8, 115#8, 112#8, 97#8, 116#8, 99#8, 104#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 100#8, 105#8, 115#8, 112#8, 97#8, 116#8, 99#8, 104#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 114#8, 97#8, 109#8, 101#8, 95#8, 111#8, 112#8, 101#8, 110#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 114#8, 97#8, 109#8, 101#8, 95#8, 101#8, 120#8, 99#8, 101#8, 112#8, 116#8, 105#8, 111#8, 110#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 114#8, 97#8, 109#8, 101#8, 95#8, 112#8, 114#8, 111#8, 108#8, 111#8, 103#8, 117#8, 101#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 114#8, 97#8, 109#8, 101#8, 95#8, 115#8, 116#8, 97#8, 114#8, 116#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 114#8, 97#8, 109#8, 101#8, 95#8, 101#8, 112#8, 105#8, 108#8, 111#8, 103#8, 117#8, 101#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 105#8, 110#8, 105#8, 115#8, 104#8, 95#8, 99#8, 104#8, 105#8, 108#8, 100#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [114#8, 117#8, 110#8, 95#8, 102#8, 114#8, 97#8, 109#8, 101#8, 115#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 116#8, 97#8, 114#8, 116#8, 95#8, 99#8, 104#8, 105#8, 108#8, 100#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 114#8, 97#8, 109#8, 101#8, 95#8, 104#8, 97#8, 108#8, 116#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [100#8, 101#8, 112#8, 116#8, 104#8, 48#8, 95#8, 112#8, 114#8, 101#8, 112#8, 97#8, 114#8, 101#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 111#8, 99#8, 101#8, 115#8, 115#8, 95#8, 109#8, 101#8, 115#8, 115#8, 97#8, 103#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 114#8, 101#8, 97#8, 116#8, 101#8, 95#8, 102#8, 105#8, 110#8, 105#8, 115#8, 104#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 111#8, 99#8, 101#8, 115#8, 115#8, 95#8, 99#8, 114#8, 101#8, 97#8, 116#8, 101#8, 95#8, 109#8, 101#8,
        115#8, 115#8, 97#8, 103#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [105#8, 110#8, 99#8, 111#8, 114#8, 112#8, 111#8, 114#8, 97#8, 116#8, 101#8, 95#8, 99#8, 104#8, 105#8, 108#8,
        100#8, 95#8, 111#8, 110#8, 95#8, 101#8, 114#8, 114#8, 111#8, 114#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [105#8, 110#8, 99#8, 111#8, 114#8, 112#8, 111#8, 114#8, 97#8, 116#8, 101#8, 95#8, 99#8, 104#8, 105#8, 108#8,
        100#8, 95#8, 111#8, 110#8, 95#8, 115#8, 117#8, 99#8, 99#8, 101#8, 115#8, 115#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 111#8, 108#8, 108#8, 98#8, 97#8, 99#8, 107#8, 95#8, 99#8, 104#8, 105#8, 108#8, 100#8, 95#8, 97#8, 99#8,
        99#8, 101#8, 115#8, 115#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 104#8, 105#8, 108#8, 100#8, 95#8, 109#8, 101#8, 115#8, 115#8, 97#8, 103#8, 101#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 101#8, 116#8, 95#8, 114#8, 101#8, 116#8, 100#8, 97#8, 116#8, 97#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 111#8, 109#8, 112#8, 117#8, 116#8, 101#8, 95#8, 99#8, 111#8, 110#8, 116#8, 114#8, 97#8, 99#8, 116#8, 95#8,
        97#8, 100#8, 100#8, 114#8, 101#8, 115#8, 115#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 111#8, 109#8, 112#8, 117#8, 116#8, 101#8, 95#8, 99#8, 114#8, 101#8, 97#8, 116#8, 101#8, 50#8, 95#8, 99#8,
        111#8, 110#8, 116#8, 114#8, 97#8, 99#8, 116#8, 95#8, 97#8, 100#8, 100#8, 114#8, 101#8, 115#8, 115#8],
    [0, 1, 2, 3, 4], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [103#8, 101#8, 110#8, 101#8, 114#8, 105#8, 99#8, 95#8, 99#8, 114#8, 101#8, 97#8, 116#8, 101#8],
    [0, 1, 2, 3, 4, 5, 6], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 99#8, 114#8, 101#8, 97#8, 116#8, 101#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 99#8, 114#8, 101#8, 97#8, 116#8, 101#8, 50#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [103#8, 101#8, 110#8, 101#8, 114#8, 105#8, 99#8, 95#8, 99#8, 97#8, 108#8, 108#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 97#8, 108#8, 99#8, 117#8, 108#8, 97#8, 116#8, 101#8, 95#8, 109#8, 101#8, 115#8, 115#8, 97#8, 103#8, 101#8,
        95#8, 99#8, 97#8, 108#8, 108#8, 95#8, 103#8, 97#8, 115#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 99#8, 97#8, 108#8, 108#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 99#8, 97#8, 108#8, 108#8, 99#8, 111#8, 100#8, 101#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 100#8, 101#8, 108#8, 101#8, 103#8, 97#8, 116#8, 101#8, 99#8, 97#8, 108#8, 108#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [111#8, 112#8, 95#8, 115#8, 116#8, 97#8, 116#8, 105#8, 99#8, 99#8, 97#8, 108#8, 108#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 111#8, 99#8, 101#8, 115#8, 115#8, 95#8, 109#8, 101#8, 115#8, 115#8, 97#8, 103#8, 101#8, 95#8, 99#8,
        97#8, 108#8, 108#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 105#8, 112#8, 101#8, 109#8, 100#8, 49#8, 54#8, 48#8, 95#8, 105#8, 110#8, 105#8, 116#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [114#8, 109#8, 100#8, 95#8, 102#8], [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [114#8, 109#8, 100#8, 95#8, 107#8], [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [114#8, 109#8, 100#8, 95#8, 107#8, 112#8], [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 105#8, 112#8, 101#8, 109#8, 100#8, 49#8, 54#8, 48#8, 95#8, 98#8, 108#8, 111#8, 99#8, 107#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [114#8, 105#8, 112#8, 101#8, 109#8, 100#8, 49#8, 54#8, 48#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 97#8, 107#8, 101#8, 50#8, 95#8, 105#8, 110#8, 105#8, 116#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 108#8, 97#8, 107#8, 101#8, 50#8, 95#8, 103#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 108#8, 97#8, 107#8, 101#8, 50#8, 98#8, 95#8, 102#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 110#8, 95#8, 102#8, 114#8, 111#8, 109#8, 95#8, 98#8, 101#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 110#8, 95#8, 116#8, 111#8, 95#8, 98#8, 101#8], [0, 1, 2, 3],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 110#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2, 3, 4], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 110#8, 95#8, 100#8, 105#8, 118#8, 109#8, 110#8, 117#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 110#8, 95#8, 109#8, 111#8, 100#8], [0, 1, 2, 3, 4, 5, 6, 7],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 101#8, 95#8, 116#8, 111#8, 112#8, 95#8, 98#8, 105#8, 116#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 111#8, 100#8, 101#8, 120#8, 112#8], [0, 1, 2, 3, 4, 5, 6],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 50#8, 53#8, 54#8, 95#8, 102#8, 112#8, 95#8, 97#8, 100#8, 100#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 50#8, 53#8, 54#8, 95#8, 102#8, 112#8, 95#8, 115#8, 117#8, 98#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 50#8, 53#8, 54#8, 95#8, 102#8, 112#8, 95#8, 114#8, 101#8, 100#8, 117#8, 99#8, 101#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 50#8, 53#8, 54#8, 95#8, 102#8, 112#8, 95#8, 109#8, 117#8, 108#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 50#8, 53#8, 54#8, 95#8, 102#8, 112#8, 95#8, 115#8, 113#8, 114#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 50#8, 53#8, 54#8, 95#8, 102#8, 112#8, 95#8, 105#8, 110#8, 118#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 50#8, 53#8, 54#8, 95#8, 115#8, 101#8, 116#8, 95#8, 105#8, 110#8, 102#8, 105#8, 110#8, 105#8, 116#8,
        121#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 50#8, 53#8, 54#8, 95#8, 115#8, 101#8, 116#8, 95#8, 97#8, 102#8, 102#8, 105#8, 110#8, 101#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 50#8, 53#8, 54#8, 95#8, 101#8, 99#8, 95#8, 100#8, 111#8, 117#8, 98#8, 108#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 50#8, 53#8, 54#8, 95#8, 101#8, 99#8, 95#8, 97#8, 100#8, 100#8, 95#8, 97#8, 102#8, 102#8, 105#8, 110#8,
        101#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 50#8, 53#8, 54#8, 95#8, 101#8, 99#8, 95#8, 109#8, 117#8, 108#8, 50#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 50#8, 53#8, 54#8, 95#8, 101#8, 99#8, 95#8, 116#8, 111#8, 95#8, 97#8, 102#8, 102#8, 105#8, 110#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 50#8, 53#8, 54#8, 95#8, 111#8, 110#8, 95#8, 99#8, 117#8, 114#8, 118#8, 101#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 50#8, 53#8, 54#8, 95#8, 118#8, 101#8, 114#8, 105#8, 102#8, 121#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 101#8, 95#8, 112#8, 50#8, 53#8, 54#8, 118#8, 101#8, 114#8, 105#8, 102#8, 121#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 110#8, 50#8, 53#8, 52#8, 95#8, 105#8, 110#8, 105#8, 116#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 113#8, 95#8, 97#8, 100#8, 100#8], [0, 1, 2, 3, 4, 5, 6, 7],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 113#8, 95#8, 115#8, 117#8, 98#8], [0, 1, 2, 3, 4, 5, 6, 7],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 113#8, 95#8, 110#8, 101#8, 103#8], [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 113#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2, 3, 4, 5, 6, 7],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 113#8, 95#8, 116#8, 111#8, 95#8, 109#8, 111#8, 110#8, 116#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 113#8, 95#8, 102#8, 114#8, 111#8, 109#8, 95#8, 109#8, 111#8, 110#8, 116#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 113#8, 95#8, 105#8, 110#8, 118#8], [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 113#8, 95#8, 109#8, 117#8, 108#8, 95#8, 115#8, 109#8, 97#8, 108#8, 108#8],
    [0, 1, 2, 3, 4], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 113#8, 50#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 113#8, 49#8, 50#8, 95#8, 114#8, 101#8, 100#8, 117#8, 99#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 113#8, 49#8, 50#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 113#8, 49#8, 50#8, 95#8, 115#8, 113#8, 114#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 101#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 101#8, 95#8, 115#8, 113#8, 114#8], [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 101#8, 95#8, 97#8, 100#8, 100#8], [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 101#8, 95#8, 115#8, 117#8, 98#8], [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 101#8, 95#8, 110#8, 101#8, 103#8], [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 101#8, 95#8, 109#8, 117#8, 108#8, 95#8, 115#8, 109#8, 97#8, 108#8, 108#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 101#8, 95#8, 105#8, 115#8, 95#8, 122#8, 101#8, 114#8, 111#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 101#8, 95#8, 101#8, 113#8], [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 101#8, 95#8, 115#8, 101#8, 116#8, 95#8, 122#8, 101#8, 114#8, 111#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 101#8, 95#8, 115#8, 101#8, 116#8, 95#8, 111#8, 110#8, 101#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 99#8, 112#8, 95#8, 115#8, 101#8, 116#8, 95#8, 105#8, 110#8, 102#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [101#8, 99#8, 112#8, 95#8, 105#8, 115#8, 95#8, 105#8, 110#8, 102#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [101#8, 99#8, 112#8, 95#8, 100#8, 111#8, 117#8, 98#8, 108#8, 101#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [101#8, 99#8, 112#8, 95#8, 97#8, 100#8, 100#8], [0, 1, 2, 3],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [101#8, 99#8, 112#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2, 3, 4, 5, 6],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 99#8, 112#8, 95#8, 108#8, 105#8, 110#8, 101#8, 102#8, 117#8, 110#8, 99#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 113#8, 49#8, 50#8, 95#8, 116#8, 119#8, 105#8, 115#8, 116#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 113#8, 49#8, 50#8, 95#8, 99#8, 97#8, 115#8, 116#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 113#8, 49#8, 50#8, 95#8, 102#8, 114#8, 111#8, 98#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 113#8, 95#8, 112#8, 111#8, 108#8, 121#8, 95#8, 100#8, 101#8, 103#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 113#8, 95#8, 112#8, 111#8, 108#8, 121#8, 95#8, 115#8, 117#8, 98#8, 109#8, 117#8, 108#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 113#8, 49#8, 50#8, 95#8, 105#8, 110#8, 118#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 113#8, 49#8, 50#8, 95#8, 112#8, 111#8, 119#8, 95#8, 119#8, 111#8, 114#8, 100#8, 115#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 110#8, 50#8, 53#8, 52#8, 95#8, 109#8, 105#8, 108#8, 108#8, 101#8, 114#8, 95#8, 114#8, 97#8, 119#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 110#8, 50#8, 53#8, 52#8, 95#8, 112#8, 97#8, 105#8, 114#8, 105#8, 110#8, 103#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 110#8, 50#8, 53#8, 52#8, 95#8, 112#8, 97#8, 114#8, 115#8, 101#8, 95#8, 103#8, 49#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 110#8, 50#8, 53#8, 52#8, 95#8, 112#8, 97#8, 114#8, 115#8, 101#8, 95#8, 103#8, 50#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 110#8, 50#8, 53#8, 52#8, 95#8, 103#8, 49#8, 95#8, 116#8, 111#8, 95#8, 98#8, 121#8, 116#8, 101#8, 115#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 110#8, 50#8, 53#8, 52#8, 95#8, 103#8, 49#8, 95#8, 97#8, 100#8, 100#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 110#8, 50#8, 53#8, 52#8, 95#8, 103#8, 49#8, 95#8, 109#8, 117#8, 108#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 110#8, 50#8, 53#8, 52#8, 95#8, 112#8, 97#8, 105#8, 114#8, 105#8, 110#8, 103#8, 95#8, 99#8, 104#8, 101#8,
        99#8, 107#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 101#8, 95#8, 97#8, 108#8, 116#8, 95#8, 98#8, 110#8, 49#8, 50#8, 56#8, 95#8, 97#8, 100#8, 100#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 101#8, 95#8, 97#8, 108#8, 116#8, 95#8, 98#8, 110#8, 49#8, 50#8, 56#8, 95#8, 109#8, 117#8, 108#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 101#8, 95#8, 97#8, 108#8, 116#8, 95#8, 98#8, 110#8, 49#8, 50#8, 56#8, 95#8, 112#8, 97#8, 105#8,
        114#8, 105#8, 110#8, 103#8, 95#8, 99#8, 104#8, 101#8, 99#8, 107#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 99#8, 111#8, 110#8, 115#8, 116#8, 115#8, 95#8, 105#8, 110#8, 105#8, 116#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 105#8, 115#8, 95#8, 122#8, 101#8, 114#8, 111#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 101#8, 113#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 108#8, 116#8, 95#8, 114#8, 97#8, 119#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 97#8, 100#8, 100#8, 95#8, 114#8, 97#8, 119#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 115#8, 117#8, 98#8, 95#8, 114#8, 97#8, 119#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 97#8, 100#8, 100#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 115#8, 117#8, 98#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 110#8, 101#8, 103#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 100#8, 98#8, 108#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 109#8, 117#8, 108#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 115#8, 113#8, 114#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 116#8, 111#8, 95#8, 109#8, 111#8, 110#8, 116#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 102#8, 114#8, 111#8, 109#8, 95#8, 109#8, 111#8, 110#8, 116#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 115#8, 104#8, 114#8, 49#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 104#8, 97#8, 108#8, 102#8, 95#8, 99#8, 97#8, 110#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 105#8, 110#8, 118#8, 95#8, 114#8, 97#8, 119#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 105#8, 110#8, 118#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 112#8, 111#8, 119#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 115#8, 103#8, 110#8, 48#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 105#8, 115#8, 95#8, 104#8, 105#8, 103#8, 104#8],
    [0, 1, 2, 3, 4, 5], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 102#8, 114#8, 111#8, 109#8, 95#8, 98#8, 101#8, 52#8, 56#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 116#8, 111#8, 95#8, 98#8, 101#8, 52#8, 56#8],
    [0, 1, 2, 3, 4, 5, 6], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 54#8, 52#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 54#8, 52#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 99#8, 111#8, 112#8, 121#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 112#8, 50#8, 95#8, 115#8, 101#8, 116#8, 95#8, 122#8, 101#8, 114#8, 111#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 112#8, 50#8, 95#8, 115#8, 101#8, 116#8, 95#8, 111#8, 110#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 112#8, 50#8, 95#8, 105#8, 115#8, 95#8, 122#8, 101#8, 114#8, 111#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 101#8, 113#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 97#8, 100#8, 100#8], [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 115#8, 117#8, 98#8], [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 110#8, 101#8, 103#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 100#8, 98#8, 108#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 99#8, 111#8, 110#8, 106#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 115#8, 113#8, 114#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 109#8, 117#8, 108#8, 95#8, 120#8, 105#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 115#8, 99#8, 97#8, 108#8, 101#8],
    [0, 1, 2, 3, 4, 5, 6, 7], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 105#8, 110#8, 118#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 112#8, 111#8, 119#8], [0, 1, 2, 3],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 115#8, 103#8, 110#8, 48#8], [0],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 54#8, 95#8, 99#8, 111#8, 112#8, 121#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 112#8, 54#8, 95#8, 115#8, 101#8, 116#8, 95#8, 122#8, 101#8, 114#8, 111#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 112#8, 54#8, 95#8, 115#8, 101#8, 116#8, 95#8, 111#8, 110#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 54#8, 95#8, 97#8, 100#8, 100#8], [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 54#8, 95#8, 115#8, 117#8, 98#8], [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 54#8, 95#8, 110#8, 101#8, 103#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 54#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 54#8, 95#8, 109#8, 117#8, 108#8, 95#8, 118#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 54#8, 95#8, 105#8, 110#8, 118#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 49#8, 50#8, 95#8, 99#8, 111#8, 112#8, 121#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 112#8, 49#8, 50#8, 95#8, 115#8, 101#8, 116#8, 95#8, 111#8, 110#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 112#8, 49#8, 50#8, 95#8, 105#8, 115#8, 95#8, 111#8, 110#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 49#8, 50#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 49#8, 50#8, 95#8, 115#8, 113#8, 114#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 49#8, 50#8, 95#8, 99#8, 111#8, 110#8, 106#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 49#8, 50#8, 95#8, 105#8, 110#8, 118#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 49#8, 50#8, 95#8, 102#8, 114#8, 111#8, 98#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 112#8, 49#8, 50#8, 95#8, 112#8, 111#8, 119#8, 95#8, 97#8, 98#8, 115#8, 120#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 49#8, 50#8, 95#8, 101#8, 120#8, 112#8, 95#8, 120#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [102#8, 112#8, 49#8, 50#8, 95#8, 102#8, 105#8, 110#8, 97#8, 108#8, 95#8, 101#8, 120#8, 112#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 49#8, 95#8, 115#8, 101#8, 116#8, 95#8, 105#8, 110#8, 102#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 49#8, 95#8, 105#8, 115#8, 95#8, 105#8, 110#8, 102#8], [0],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 49#8, 95#8, 99#8, 111#8, 112#8, 121#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 49#8, 95#8, 110#8, 101#8, 103#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 49#8, 95#8, 100#8, 111#8, 117#8, 98#8, 108#8, 101#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 49#8, 95#8, 97#8, 100#8, 100#8], [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 49#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [103#8, 49#8, 95#8, 110#8, 111#8, 114#8, 109#8, 97#8, 108#8, 105#8, 122#8, 101#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [103#8, 49#8, 95#8, 111#8, 110#8, 95#8, 99#8, 117#8, 114#8, 118#8, 101#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 49#8, 95#8, 100#8, 101#8, 99#8, 111#8, 100#8, 101#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 49#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [103#8, 49#8, 95#8, 115#8, 117#8, 98#8, 103#8, 114#8, 111#8, 117#8, 112#8, 95#8, 99#8, 104#8, 101#8, 99#8, 107#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 50#8, 95#8, 115#8, 101#8, 116#8, 95#8, 105#8, 110#8, 102#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 50#8, 95#8, 105#8, 115#8, 95#8, 105#8, 110#8, 102#8], [0],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 50#8, 95#8, 99#8, 111#8, 112#8, 121#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 50#8, 95#8, 110#8, 101#8, 103#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 50#8, 95#8, 100#8, 111#8, 117#8, 98#8, 108#8, 101#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 50#8, 95#8, 97#8, 100#8, 100#8], [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 50#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [103#8, 50#8, 95#8, 110#8, 111#8, 114#8, 109#8, 97#8, 108#8, 105#8, 122#8, 101#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [103#8, 50#8, 95#8, 111#8, 110#8, 95#8, 99#8, 117#8, 114#8, 118#8, 101#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 50#8, 95#8, 100#8, 101#8, 99#8, 111#8, 100#8, 101#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 50#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8], [0, 1],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [103#8, 50#8, 95#8, 115#8, 117#8, 98#8, 103#8, 114#8, 111#8, 117#8, 112#8, 95#8, 99#8, 104#8, 101#8, 99#8, 107#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 97#8, 105#8, 114#8, 95#8, 100#8, 111#8, 117#8, 98#8, 108#8, 105#8, 110#8, 103#8, 95#8, 115#8, 116#8,
        101#8, 112#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 97#8, 105#8, 114#8, 95#8, 97#8, 100#8, 100#8, 105#8, 116#8, 105#8, 111#8, 110#8, 95#8, 115#8, 116#8,
        101#8, 112#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [112#8, 97#8, 105#8, 114#8, 95#8, 101#8, 108#8, 108#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 97#8, 105#8, 114#8, 95#8, 109#8, 105#8, 108#8, 108#8, 101#8, 114#8, 95#8, 108#8, 111#8, 111#8, 112#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 97#8, 105#8, 114#8, 95#8, 97#8, 99#8, 99#8, 117#8, 109#8, 117#8, 108#8, 97#8, 116#8, 101#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 119#8, 117#8, 95#8, 115#8, 113#8, 114#8, 116#8, 95#8, 100#8, 105#8, 118#8, 105#8, 115#8, 105#8, 111#8,
        110#8, 95#8, 102#8, 112#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 119#8, 117#8, 95#8, 103#8, 49#8], [0, 1, 2, 3, 4, 5, 6],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [105#8, 115#8, 111#8, 95#8, 104#8, 111#8, 114#8, 110#8, 101#8, 114#8, 95#8, 102#8, 112#8],
    [0, 1, 2, 3, 4, 5, 6, 7, 8], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [105#8, 115#8, 111#8, 95#8, 109#8, 97#8, 112#8, 95#8, 103#8, 49#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [109#8, 97#8, 112#8, 95#8, 102#8, 112#8, 95#8, 116#8, 111#8, 95#8, 103#8, 49#8],
    [0, 1, 2, 3, 4, 5, 6], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [115#8, 119#8, 117#8, 95#8, 115#8, 113#8, 114#8, 116#8, 95#8, 100#8, 105#8, 118#8, 105#8, 115#8, 105#8, 111#8,
        110#8, 95#8, 102#8, 112#8, 50#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 119#8, 117#8, 95#8, 103#8, 50#8], [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [105#8, 115#8, 111#8, 95#8, 104#8, 111#8, 114#8, 110#8, 101#8, 114#8, 95#8, 102#8, 112#8, 50#8],
    [0, 1, 2, 3, 4], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [105#8, 115#8, 111#8, 95#8, 109#8, 97#8, 112#8, 95#8, 103#8, 50#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [109#8, 97#8, 112#8, 95#8, 102#8, 112#8, 50#8, 95#8, 116#8, 111#8, 95#8, 103#8, 50#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [107#8, 122#8, 103#8, 95#8, 100#8, 101#8, 99#8, 111#8, 109#8, 112#8, 114#8, 101#8, 115#8, 115#8, 95#8, 103#8,
        49#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [107#8, 122#8, 103#8, 95#8, 108#8, 111#8, 97#8, 100#8, 95#8, 103#8, 49#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [107#8, 122#8, 103#8, 95#8, 110#8, 101#8, 103#8, 95#8, 115#8, 99#8, 97#8, 108#8, 97#8, 114#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [107#8, 122#8, 103#8, 95#8, 118#8, 101#8, 114#8, 105#8, 102#8, 121#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 108#8, 105#8, 98#8, 95#8, 105#8, 110#8, 105#8, 116#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 103#8, 49#8, 95#8, 97#8, 100#8, 100#8, 95#8, 101#8, 120#8, 101#8, 99#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 103#8, 49#8, 95#8, 109#8, 115#8, 109#8, 95#8, 101#8, 120#8, 101#8, 99#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 103#8, 50#8, 95#8, 97#8, 100#8, 100#8, 95#8, 101#8, 120#8, 101#8, 99#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 103#8, 50#8, 95#8, 109#8, 115#8, 109#8, 95#8, 101#8, 120#8, 101#8, 99#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 112#8, 97#8, 105#8, 114#8, 105#8, 110#8, 103#8, 95#8, 101#8, 120#8, 101#8, 99#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 109#8, 97#8, 112#8, 95#8, 102#8, 112#8, 95#8, 116#8, 111#8, 95#8, 103#8, 49#8, 95#8,
        101#8, 120#8, 101#8, 99#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 109#8, 97#8, 112#8, 95#8, 102#8, 112#8, 50#8, 95#8, 116#8, 111#8, 95#8, 103#8, 50#8,
        95#8, 101#8, 120#8, 101#8, 99#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [107#8, 122#8, 103#8, 95#8, 112#8, 111#8, 105#8, 110#8, 116#8, 95#8, 101#8, 118#8, 97#8, 108#8, 117#8, 97#8,
        116#8, 105#8, 111#8, 110#8, 95#8, 101#8, 120#8, 101#8, 99#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 112#8, 114#8, 101#8, 99#8, 111#8, 109#8, 112#8, 105#8, 108#8, 101#8, 115#8, 95#8,
        105#8, 110#8, 105#8, 116#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 103#8, 49#8, 95#8, 109#8, 115#8, 109#8, 95#8, 100#8, 105#8, 115#8, 99#8, 111#8, 117#8,
        110#8, 116#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 115#8, 95#8, 103#8, 50#8, 95#8, 109#8, 115#8, 109#8, 95#8, 100#8, 105#8, 115#8, 99#8, 111#8, 117#8,
        110#8, 116#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 101#8, 95#8, 98#8, 108#8, 115#8, 95#8, 103#8, 49#8, 95#8, 97#8, 100#8, 100#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 101#8, 95#8, 98#8, 108#8, 115#8, 95#8, 103#8, 49#8, 95#8, 109#8, 115#8, 109#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 101#8, 95#8, 98#8, 108#8, 115#8, 95#8, 103#8, 50#8, 95#8, 97#8, 100#8, 100#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 101#8, 95#8, 98#8, 108#8, 115#8, 95#8, 103#8, 50#8, 95#8, 109#8, 115#8, 109#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 101#8, 95#8, 98#8, 108#8, 115#8, 95#8, 112#8, 97#8, 105#8, 114#8, 105#8, 110#8, 103#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 101#8, 95#8, 98#8, 108#8, 115#8, 95#8, 109#8, 97#8, 112#8, 95#8, 102#8, 112#8, 95#8, 116#8, 111#8,
        95#8, 103#8, 49#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 101#8, 95#8, 98#8, 108#8, 115#8, 95#8, 109#8, 97#8, 112#8, 95#8, 102#8, 112#8, 50#8, 95#8, 116#8,
        111#8, 95#8, 103#8, 50#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 101#8, 95#8, 107#8, 122#8, 103#8, 95#8, 112#8, 111#8, 105#8, 110#8, 116#8, 95#8, 101#8, 118#8,
        97#8, 108#8, 117#8, 97#8, 116#8, 105#8, 111#8, 110#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 101#8, 99#8, 111#8, 109#8, 112#8, 105#8, 108#8, 101#8, 95#8, 105#8, 110#8, 100#8, 101#8, 120#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 101#8, 95#8, 105#8, 100#8, 101#8, 110#8, 116#8, 105#8, 116#8, 121#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [112#8, 114#8, 101#8, 95#8, 115#8, 104#8, 97#8, 50#8, 53#8, 54#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 101#8, 95#8, 101#8, 99#8, 114#8, 101#8, 99#8, 111#8, 118#8, 101#8, 114#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 101#8, 95#8, 114#8, 105#8, 112#8, 101#8, 109#8, 100#8, 49#8, 54#8, 48#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 101#8, 95#8, 98#8, 108#8, 97#8, 107#8, 101#8, 50#8, 102#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 111#8, 100#8, 101#8, 120#8, 112#8, 95#8, 103#8, 97#8, 115#8],
    [0, 1, 2, 3, 4, 5, 6], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [112#8, 114#8, 101#8, 95#8, 109#8, 111#8, 100#8, 101#8, 120#8, 112#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 117#8, 110#8, 95#8, 112#8, 114#8, 101#8, 99#8, 111#8, 109#8, 112#8, 105#8, 108#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [97#8, 100#8, 100#8, 95#8, 116#8, 111#8, 95#8, 98#8, 108#8, 111#8, 111#8, 109#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [108#8, 111#8, 103#8, 115#8, 95#8, 98#8, 108#8, 111#8, 111#8, 109#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 108#8, 112#8, 95#8, 102#8, 105#8, 110#8, 105#8, 115#8, 104#8, 95#8, 108#8, 105#8, 115#8, 116#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [108#8, 111#8, 103#8, 115#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 100#8, 95#8, 98#8, 111#8, 117#8,
        110#8, 100#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 95#8, 108#8, 111#8, 103#8, 115#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 95#8, 114#8, 101#8, 99#8, 101#8, 105#8, 112#8, 116#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [119#8, 105#8, 116#8, 104#8, 100#8, 114#8, 97#8, 119#8, 97#8, 108#8, 95#8, 114#8, 108#8, 112#8, 95#8, 108#8,
        101#8, 110#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 95#8, 119#8, 105#8, 116#8, 104#8, 100#8, 114#8, 97#8, 119#8, 97#8,
        108#8, 95#8, 114#8, 108#8, 112#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 95#8, 101#8, 120#8, 101#8, 99#8, 117#8, 116#8, 105#8, 111#8, 110#8,
        95#8, 114#8, 101#8, 113#8, 117#8, 101#8, 115#8, 116#8, 115#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 111#8, 109#8, 112#8, 117#8, 116#8, 101#8, 95#8, 114#8, 101#8, 113#8, 117#8, 101#8, 115#8, 116#8, 115#8,
        95#8, 104#8, 97#8, 115#8, 104#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 120#8, 116#8, 114#8, 97#8, 99#8, 116#8, 95#8, 100#8, 101#8, 112#8, 111#8, 115#8, 105#8, 116#8, 95#8,
        100#8, 97#8, 116#8, 97#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 97#8, 99#8, 104#8, 101#8, 95#8, 103#8, 101#8, 116#8, 95#8, 114#8, 111#8, 111#8, 116#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 111#8, 109#8, 112#8, 117#8, 116#8, 101#8, 95#8, 115#8, 116#8, 97#8, 116#8, 101#8, 95#8, 114#8, 111#8,
        111#8, 116#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [97#8, 100#8, 100#8, 114#8, 95#8, 102#8, 114#8, 111#8, 109#8, 95#8, 119#8, 111#8, 114#8, 100#8, 115#8],
    [0, 1, 2, 3], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 111#8, 114#8, 107#8, 95#8, 105#8, 110#8, 105#8, 116#8], [],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [98#8, 108#8, 111#8, 99#8, 107#8, 95#8, 114#8, 108#8, 112#8, 95#8, 108#8, 101#8, 110#8, 103#8, 116#8, 104#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 97#8, 121#8, 108#8, 111#8, 97#8, 100#8, 95#8, 104#8, 101#8, 97#8, 100#8, 101#8, 114#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 120#8, 95#8, 105#8, 115#8, 95#8, 98#8, 108#8, 111#8, 98#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [116#8, 120#8, 95#8, 105#8, 115#8, 95#8, 115#8, 101#8, 116#8, 99#8, 111#8, 100#8, 101#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 101#8, 101#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2, 3, 4],
    PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [105#8, 115#8, 95#8, 118#8, 97#8, 108#8, 105#8, 100#8, 95#8, 118#8, 101#8, 114#8, 115#8, 105#8, 111#8, 110#8,
        101#8, 100#8, 95#8, 104#8, 97#8, 115#8, 104#8, 101#8, 115#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 101#8, 95#8, 110#8, 101#8, 119#8], [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 111#8, 99#8, 101#8, 115#8, 115#8, 95#8, 117#8, 110#8, 99#8, 104#8, 101#8, 99#8, 107#8, 101#8,
        100#8, 95#8, 115#8, 121#8, 115#8, 116#8, 101#8, 109#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 97#8, 99#8,
        116#8, 105#8, 111#8, 110#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 111#8, 99#8, 101#8, 115#8, 115#8, 95#8, 99#8, 104#8, 101#8, 99#8, 107#8, 101#8, 100#8, 95#8, 115#8,
        121#8, 115#8, 116#8, 101#8, 109#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 97#8, 99#8, 116#8, 105#8, 111#8,
        110#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [99#8, 104#8, 101#8, 99#8, 107#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 97#8, 99#8, 116#8, 105#8, 111#8, 110#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 111#8, 99#8, 101#8, 115#8, 115#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 97#8, 99#8, 116#8, 105#8,
        111#8, 110#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [117#8, 100#8, 105#8, 118#8, 95#8, 115#8, 109#8, 97#8, 108#8, 108#8, 53#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 111#8, 99#8, 101#8, 115#8, 115#8, 95#8, 119#8, 105#8, 116#8, 104#8, 100#8, 114#8, 97#8, 119#8,
        97#8, 108#8, 115#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 101#8, 113#8, 117#8, 101#8, 115#8, 116#8, 115#8, 95#8, 97#8, 112#8, 112#8, 101#8, 110#8, 100#8],
    [0, 1, 2], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [112#8, 114#8, 111#8, 99#8, 101#8, 115#8, 115#8, 95#8, 103#8, 101#8, 110#8, 101#8, 114#8, 97#8, 108#8, 95#8,
        112#8, 117#8, 114#8, 112#8, 111#8, 115#8, 101#8, 95#8, 114#8, 101#8, 113#8, 117#8, 101#8, 115#8, 116#8, 115#8],
    [], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [101#8, 120#8, 101#8, 99#8, 117#8, 116#8, 101#8, 95#8, 98#8, 108#8, 111#8, 99#8, 107#8],
    [0, 1], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [114#8, 117#8, 110#8, 95#8, 97#8, 116#8, 116#8, 101#8, 109#8, 112#8, 116#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 116#8, 116#8, 101#8, 109#8, 112#8, 116#8, 95#8, 108#8, 49#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 116#8, 116#8, 101#8, 109#8, 112#8, 116#8, 95#8, 108#8, 50#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 116#8, 116#8, 101#8, 109#8, 112#8, 116#8, 95#8, 108#8, 51#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 116#8, 116#8, 101#8, 109#8, 112#8, 116#8, 95#8, 108#8, 52#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 116#8, 116#8, 101#8, 109#8, 112#8, 116#8, 95#8, 108#8, 53#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 116#8, 116#8, 101#8, 109#8, 112#8, 116#8, 95#8, 108#8, 54#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 116#8, 116#8, 101#8, 109#8, 112#8, 116#8, 95#8, 108#8, 55#8],
    [0], PUnit.unit),
  (Flapjack.Basis.Pure.MlString.MlString.implode
      [118#8, 101#8, 114#8, 105#8, 102#8, 121#8, 95#8, 115#8, 116#8, 97#8, 116#8, 101#8, 108#8, 101#8, 115#8, 115#8,
        95#8, 110#8, 101#8, 119#8, 95#8, 112#8, 97#8, 121#8, 108#8, 111#8, 97#8, 100#8],
    [0], PUnit.unit)]
def functionMap := crepToLoopMakeFuncsExactExecutable signatures
end InitECandidate.Proofs.FrontendStages.Loop
