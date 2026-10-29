import InitECandidate.Proofs.StackAnalysis.Data694
import InitECandidate.Proofs.StackAnalysis.Entries
import Lean
import Flapjack.RiscV.NativeSource
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.StackAnalysis
def frame694 : Nat := 9
def slim694 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (Option.some
      { fst := List.cons 2 List.nil,
        snd :=
          {
            fst :=
              {
                fst :=
                  Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                    Flapjack.Spt.ln,
                snd := Flapjack.Spt.ln },
            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 2 } } } })
    (Option.some 657) List.nil
    (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 3 } } }))
  (Flapjack.WordLangProgHOL.seq
    (Flapjack.WordLangProgHOL.call
      (Option.some
        { fst := List.cons 2 List.nil,
          snd :=
            {
              fst :=
                {
                  fst :=
                    Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                            Flapjack.Spt.ln)
                          (Flapjack.Spt.bn Flapjack.Spt.ln
                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                            Flapjack.Spt.ln)
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                            Flapjack.Spt.ln)))
                      Flapjack.Spt.ln,
                  snd := Flapjack.Spt.ln },
              snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 4 } } } })
      (Option.some 681) List.nil
      (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 5 } } }))
    (Flapjack.WordLangProgHOL.seq
      (Flapjack.WordLangProgHOL.call
        (Option.some
          { fst := List.cons 2 List.nil,
            snd :=
              {
                fst :=
                  {
                    fst :=
                      Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                              Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                              Flapjack.Spt.ln)
                            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                              Flapjack.Spt.ln)))
                        Flapjack.Spt.ln,
                    snd := Flapjack.Spt.ln },
                snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 6 } } } })
        (Option.some 681) List.nil
        (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 7 } } }))
      (Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.call
          (Option.some
            { fst := List.cons 2 List.nil,
              snd :=
                {
                  fst :=
                    {
                      fst :=
                        Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                Flapjack.Spt.ln)
                              Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln,
                      snd := Flapjack.Spt.ln },
                  snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 8 } } } })
          (Option.some 679) List.nil
          (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 9 } } }))
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.call
            (Option.some
              { fst := List.cons 2 List.nil,
                snd :=
                  {
                    fst :=
                      {
                        fst :=
                          Flapjack.Spt.bn
                            (Flapjack.Spt.bn
                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                  Flapjack.Spt.ln)
                                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                  Flapjack.Spt.ln)))
                            Flapjack.Spt.ln,
                        snd := Flapjack.Spt.ln },
                    snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 10 } } } })
            (Option.some 69) List.nil
            (Option.some
              { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 11 } } }))
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.call
              (Option.some
                { fst := List.cons 2 List.nil,
                  snd :=
                    {
                      fst :=
                        {
                          fst :=
                            Flapjack.Spt.bn
                              (Flapjack.Spt.bn
                                (Flapjack.Spt.bn
                                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                    Flapjack.Spt.ln)
                                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                                (Flapjack.Spt.bn
                                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                    Flapjack.Spt.ln)
                                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                    Flapjack.Spt.ln)))
                              Flapjack.Spt.ln,
                          snd := Flapjack.Spt.ln },
                      snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 12 } } } })
              (Option.some 68) List.nil
              (Option.some
                { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 13 } } }))
            (Flapjack.WordLangProgHOL.seq
              (Flapjack.WordLangProgHOL.call
                (Option.some
                  { fst := List.cons 2 List.nil,
                    snd :=
                      {
                        fst :=
                          {
                            fst :=
                              Flapjack.Spt.bn
                                (Flapjack.Spt.bn
                                  (Flapjack.Spt.bn
                                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                                  (Flapjack.Spt.bn
                                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                      Flapjack.Spt.ln)
                                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                      Flapjack.Spt.ln)))
                                Flapjack.Spt.ln,
                            snd := Flapjack.Spt.ln },
                        snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 14 } } } })
                (Option.some 68) List.nil
                (Option.some
                  { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 15 } } }))
              (Flapjack.WordLangProgHOL.seq
                (Flapjack.WordLangProgHOL.call
                  (Option.some
                    { fst := List.cons 2 List.nil,
                      snd :=
                        {
                          fst :=
                            {
                              fst :=
                                Flapjack.Spt.bn
                                  (Flapjack.Spt.bn
                                    (Flapjack.Spt.bn
                                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                                    (Flapjack.Spt.bn
                                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                        Flapjack.Spt.ln)
                                      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                                  Flapjack.Spt.ln,
                              snd := Flapjack.Spt.ln },
                          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 16 } } } })
                  (Option.some 68) List.nil
                  (Option.some
                    { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 17 } } }))
                (Flapjack.WordLangProgHOL.seq
                  (Flapjack.WordLangProgHOL.call
                    (Option.some
                      { fst := List.cons 2 List.nil,
                        snd :=
                          {
                            fst :=
                              {
                                fst :=
                                  Flapjack.Spt.bn
                                    (Flapjack.Spt.bn
                                      (Flapjack.Spt.bn
                                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                                      (Flapjack.Spt.bn
                                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                                    Flapjack.Spt.ln,
                                snd := Flapjack.Spt.ln },
                            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 18 } } } })
                    (Option.some 68) List.nil
                    (Option.some
                      { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 19 } } }))
                  (Flapjack.WordLangProgHOL.seq
                    (Flapjack.WordLangProgHOL.call
                      (Option.some
                        { fst := List.cons 2 List.nil,
                          snd :=
                            {
                              fst :=
                                {
                                  fst :=
                                    Flapjack.Spt.bn
                                      (Flapjack.Spt.bn
                                        (Flapjack.Spt.bn
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                                        (Flapjack.Spt.bn
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                                      Flapjack.Spt.ln,
                                  snd := Flapjack.Spt.ln },
                              snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 20 } } } })
                      (Option.some 686) List.nil
                      (Option.some
                        { fst := 2,
                          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 21 } } }))
                    (Flapjack.WordLangProgHOL.seq
                      (Flapjack.WordLangProgHOL.call
                        (Option.some
                          { fst := List.cons 2 List.nil,
                            snd :=
                              {
                                fst :=
                                  {
                                    fst :=
                                      Flapjack.Spt.bn
                                        (Flapjack.Spt.bn
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                            (Flapjack.Spt.bn Flapjack.Spt.ln
                                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                                        Flapjack.Spt.ln,
                                    snd := Flapjack.Spt.ln },
                                snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 22 } } } })
                        (Option.some 687) List.nil
                        (Option.some
                          { fst := 2,
                            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 23 } } }))
                      (Flapjack.WordLangProgHOL.seq
                        (Flapjack.WordLangProgHOL.call
                          (Option.some
                            { fst := List.cons 2 List.nil,
                              snd :=
                                {
                                  fst :=
                                    {
                                      fst :=
                                        Flapjack.Spt.bn
                                          (Flapjack.Spt.bn
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                                Flapjack.Spt.ln)
                                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                                          Flapjack.Spt.ln,
                                      snd := Flapjack.Spt.ln },
                                  snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 24 } } } })
                          (Option.some 693) List.nil
                          (Option.some
                            { fst := 2,
                              snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 25 } } }))
                        (Flapjack.WordLangProgHOL.seq
                          (Flapjack.WordLangProgHOL.call
                            (Option.some
                              { fst := List.cons 2 List.nil,
                                snd :=
                                  {
                                    fst :=
                                      {
                                        fst :=
                                          Flapjack.Spt.bn
                                            (Flapjack.Spt.bn
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bn
                                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                                  Flapjack.Spt.ln)
                                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bn
                                                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                                            Flapjack.Spt.ln,
                                        snd := Flapjack.Spt.ln },
                                    snd :=
                                      { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 26 } } } })
                            (Option.some 691) List.nil
                            (Option.some
                              { fst := 2,
                                snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 27 } } }))
                          (Flapjack.WordLangProgHOL.seq
                            (Flapjack.WordLangProgHOL.call
                              (Option.some
                                { fst := List.cons 2 List.nil,
                                  snd :=
                                    {
                                      fst :=
                                        {
                                          fst :=
                                            Flapjack.Spt.bn
                                              (Flapjack.Spt.bn
                                                (Flapjack.Spt.bn
                                                  (Flapjack.Spt.bn
                                                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                                    Flapjack.Spt.ln)
                                                  (Flapjack.Spt.bn Flapjack.Spt.ln
                                                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                                                (Flapjack.Spt.bn
                                                  (Flapjack.Spt.bn
                                                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                                    Flapjack.Spt.ln)
                                                  (Flapjack.Spt.bn Flapjack.Spt.ln
                                                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                                              Flapjack.Spt.ln,
                                          snd := Flapjack.Spt.ln },
                                      snd :=
                                        { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 28 } } } })
                              (Option.some 668) List.nil
                              (Option.some
                                { fst := 2,
                                  snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 29 } } }))
                            (Flapjack.WordLangProgHOL.seq
                              (Flapjack.WordLangProgHOL.call
                                (Option.some
                                  { fst := List.cons 2 List.nil,
                                    snd :=
                                      {
                                        fst :=
                                          {
                                            fst :=
                                              Flapjack.Spt.bn
                                                (Flapjack.Spt.bn
                                                  (Flapjack.Spt.bn
                                                    (Flapjack.Spt.bn
                                                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                                      Flapjack.Spt.ln)
                                                    Flapjack.Spt.ln)
                                                  (Flapjack.Spt.bn
                                                    (Flapjack.Spt.bn
                                                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                                      Flapjack.Spt.ln)
                                                    Flapjack.Spt.ln))
                                                Flapjack.Spt.ln,
                                            snd := Flapjack.Spt.ln },
                                        snd :=
                                          { fst := Flapjack.WordLangProgHOL.skip,
                                            snd := { fst := 694, snd := 30 } } } })
                                (Option.some 692) List.nil
                                (Option.some
                                  { fst := 2,
                                    snd :=
                                      { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 694, snd := 31 } } }))
                              (Flapjack.WordLangProgHOL.call
                                (Option.some
                                  { fst := List.cons 2 List.nil,
                                    snd :=
                                      {
                                        fst :=
                                          {
                                            fst :=
                                              Flapjack.Spt.bn
                                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                                  (Flapjack.Spt.bn
                                                    (Flapjack.Spt.bn
                                                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                                      Flapjack.Spt.ln)
                                                    Flapjack.Spt.ln))
                                                Flapjack.Spt.ln,
                                            snd := Flapjack.Spt.ln },
                                        snd :=
                                          { fst := Flapjack.WordLangProgHOL.skip,
                                            snd := { fst := 694, snd := 32 } } } })
                                (Option.some 70) List.nil
                                (Option.some
                                  { fst := 2,
                                    snd :=
                                      { fst := Flapjack.WordLangProgHOL.skip,
                                        snd := { fst := 694, snd := 33 } } }))))))))))))))))
theorem frame694_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized694.2.1 optimized694.2.2 = frame694 := by cbv
theorem slim694_eq : WordDepth.Executable.slim optimized694.2.2 = slim694 := by cbv
theorem frameEntry694_eq : frameEntry optimized694 = (694, frame694) := by
  unfold frameEntry
  rw [frame694_eq]
  rfl
theorem slimEntry694_eq : slimEntry optimized694 = (694, 4, slim694) := by
  unfold slimEntry
  rw [slim694_eq]
  rfl
#print axioms frame694_eq
#print axioms slim694_eq
end InitECandidate.Proofs.StackAnalysis
