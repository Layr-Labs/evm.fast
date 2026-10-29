import InitECandidate.Proofs.StackAnalysis.Data274
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
def frame274 : Nat := 5
def slim274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (Option.some
      { fst := List.cons 2 (List.cons 4 (List.cons 6 (List.cons 8 List.nil))),
        snd :=
          {
            fst :=
              {
                fst :=
                  Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln,
                snd := Flapjack.Spt.ln },
            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 2 } } } })
    (Option.some 162) List.nil
    (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 3 } } }))
  (Flapjack.WordLangProgHOL.seq
    (Flapjack.WordLangProgHOL.call
      (Option.some
        { fst := List.cons 2 (List.cons 4 List.nil),
          snd :=
            {
              fst :=
                {
                  fst :=
                    Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln,
                  snd := Flapjack.Spt.ln },
              snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 4 } } } })
      (Option.some 169) List.nil
      (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 5 } } }))
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
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                              Flapjack.Spt.ln)
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                        Flapjack.Spt.ln,
                    snd := Flapjack.Spt.ln },
                snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 6 } } } })
        (Option.some 68) List.nil
        (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 7 } } }))
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
                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                          Flapjack.Spt.ln,
                      snd := Flapjack.Spt.ln },
                  snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 8 } } } })
          (Option.some 272) List.nil
          (Option.some { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 9 } } }))
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
                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                            Flapjack.Spt.ln,
                        snd := Flapjack.Spt.ln },
                    snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 10 } } } })
            (Option.some 272) List.nil
            (Option.some
              { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 11 } } }))
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
                                  (Flapjack.Spt.bn Flapjack.Spt.ln
                                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                              Flapjack.Spt.ln,
                          snd := Flapjack.Spt.ln },
                      snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 12 } } } })
              (Option.some 272) List.nil
              (Option.some
                { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 13 } } }))
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
                                    (Flapjack.Spt.bn Flapjack.Spt.ln
                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                                Flapjack.Spt.ln,
                            snd := Flapjack.Spt.ln },
                        snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 14 } } } })
                (Option.some 272) List.nil
                (Option.some
                  { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 15 } } }))
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
                                      (Flapjack.Spt.bn Flapjack.Spt.ln
                                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                                  Flapjack.Spt.ln,
                              snd := Flapjack.Spt.ln },
                          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 16 } } } })
                  (Option.some 272) List.nil
                  (Option.some
                    { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 17 } } }))
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
                                        (Flapjack.Spt.bn Flapjack.Spt.ln
                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                                    Flapjack.Spt.ln,
                                snd := Flapjack.Spt.ln },
                            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 18 } } } })
                    (Option.some 272) List.nil
                    (Option.some
                      { fst := 2, snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 19 } } }))
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
                              snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 20 } } } })
                      (Option.some 272) List.nil
                      (Option.some
                        { fst := 2,
                          snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 21 } } }))
                    (Flapjack.WordLangProgHOL.seq
                      (Flapjack.WordLangProgHOL.call
                        (Option.some
                          { fst := List.cons 2 (List.cons 4 (List.cons 6 (List.cons 8 List.nil))),
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
                                snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 22 } } } })
                        (Option.some 271) List.nil
                        (Option.some
                          { fst := 2,
                            snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 23 } } }))
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
                                  snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 24 } } } })
                          (Option.some 270) List.nil
                          (Option.some
                            { fst := 2,
                              snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 25 } } }))
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
                                      { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 26 } } } })
                            (Option.some 270) List.nil
                            (Option.some
                              { fst := 2,
                                snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 27 } } }))
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
                                        { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 28 } } } })
                              (Option.some 270) List.nil
                              (Option.some
                                { fst := 2,
                                  snd := { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 29 } } }))
                            (Flapjack.WordLangProgHOL.seq
                              (Flapjack.WordLangProgHOL.call
                                (Option.some
                                  { fst := List.cons 2 (List.cons 4 List.nil),
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
                                          { fst := Flapjack.WordLangProgHOL.skip,
                                            snd := { fst := 274, snd := 30 } } } })
                                (Option.some 269) List.nil
                                (Option.some
                                  { fst := 2,
                                    snd :=
                                      { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 31 } } }))
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
                                                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                          Flapjack.Spt.ln))))
                                                  Flapjack.Spt.ln,
                                              snd := Flapjack.Spt.ln },
                                          snd :=
                                            { fst := Flapjack.WordLangProgHOL.skip,
                                              snd := { fst := 274, snd := 32 } } } })
                                  (Option.some 270) List.nil
                                  (Option.some
                                    { fst := 2,
                                      snd :=
                                        { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 33 } } }))
                                (Flapjack.WordLangProgHOL.seq
                                  (Flapjack.WordLangProgHOL.call
                                    (Option.some
                                      { fst := List.cons 2 (List.cons 4 List.nil),
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
                                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                            Flapjack.Spt.ln)))
                                                      (Flapjack.Spt.bn
                                                        (Flapjack.Spt.bn
                                                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                                                          Flapjack.Spt.ln)
                                                        (Flapjack.Spt.bn Flapjack.Spt.ln
                                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                            Flapjack.Spt.ln))))
                                                    Flapjack.Spt.ln,
                                                snd := Flapjack.Spt.ln },
                                            snd :=
                                              { fst := Flapjack.WordLangProgHOL.skip,
                                                snd := { fst := 274, snd := 34 } } } })
                                    (Option.some 273) List.nil
                                    (Option.some
                                      { fst := 2,
                                        snd :=
                                          { fst := Flapjack.WordLangProgHOL.skip, snd := { fst := 274, snd := 35 } } }))
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
                                                            (Flapjack.Spt.bn Flapjack.Spt.ln
                                                              (Flapjack.Spt.ls PUnit.unit))
                                                            Flapjack.Spt.ln)
                                                          (Flapjack.Spt.bn Flapjack.Spt.ln
                                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                              Flapjack.Spt.ln)))
                                                        (Flapjack.Spt.bn
                                                          (Flapjack.Spt.bn
                                                            (Flapjack.Spt.bn Flapjack.Spt.ln
                                                              (Flapjack.Spt.ls PUnit.unit))
                                                            Flapjack.Spt.ln)
                                                          (Flapjack.Spt.bn Flapjack.Spt.ln
                                                            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                              Flapjack.Spt.ln))))
                                                      Flapjack.Spt.ln,
                                                  snd := Flapjack.Spt.ln },
                                              snd :=
                                                { fst := Flapjack.WordLangProgHOL.skip,
                                                  snd := { fst := 274, snd := 36 } } } })
                                      (Option.some 272) List.nil
                                      (Option.some
                                        { fst := 2,
                                          snd :=
                                            { fst := Flapjack.WordLangProgHOL.skip,
                                              snd := { fst := 274, snd := 37 } } }))
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
                                                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                (Flapjack.Spt.ls PUnit.unit))
                                                              Flapjack.Spt.ln)
                                                            (Flapjack.Spt.bn Flapjack.Spt.ln
                                                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                                Flapjack.Spt.ln)))
                                                          (Flapjack.Spt.bn
                                                            (Flapjack.Spt.bn
                                                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                (Flapjack.Spt.ls PUnit.unit))
                                                              Flapjack.Spt.ln)
                                                            (Flapjack.Spt.bn Flapjack.Spt.ln
                                                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                                Flapjack.Spt.ln))))
                                                        Flapjack.Spt.ln,
                                                    snd := Flapjack.Spt.ln },
                                                snd :=
                                                  { fst := Flapjack.WordLangProgHOL.skip,
                                                    snd := { fst := 274, snd := 38 } } } })
                                        (Option.some 272) List.nil
                                        (Option.some
                                          { fst := 2,
                                            snd :=
                                              { fst := Flapjack.WordLangProgHOL.skip,
                                                snd := { fst := 274, snd := 39 } } }))
                                      (Flapjack.WordLangProgHOL.seq
                                        (Flapjack.WordLangProgHOL.call
                                          (Option.some
                                            { fst := List.cons 2 (List.cons 4 (List.cons 6 (List.cons 8 List.nil))),
                                              snd :=
                                                {
                                                  fst :=
                                                    {
                                                      fst :=
                                                        Flapjack.Spt.bn
                                                          (Flapjack.Spt.bn
                                                            (Flapjack.Spt.bn
                                                              (Flapjack.Spt.bn
                                                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                  (Flapjack.Spt.ls PUnit.unit))
                                                                Flapjack.Spt.ln)
                                                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                                  Flapjack.Spt.ln)))
                                                            (Flapjack.Spt.bn
                                                              (Flapjack.Spt.bn
                                                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                  (Flapjack.Spt.ls PUnit.unit))
                                                                Flapjack.Spt.ln)
                                                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                                  Flapjack.Spt.ln))))
                                                          Flapjack.Spt.ln,
                                                      snd := Flapjack.Spt.ln },
                                                  snd :=
                                                    { fst := Flapjack.WordLangProgHOL.skip,
                                                      snd := { fst := 274, snd := 40 } } } })
                                          (Option.some 271) List.nil
                                          (Option.some
                                            { fst := 2,
                                              snd :=
                                                { fst := Flapjack.WordLangProgHOL.skip,
                                                  snd := { fst := 274, snd := 41 } } }))
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
                                                                  (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                    (Flapjack.Spt.ls PUnit.unit))
                                                                  Flapjack.Spt.ln)
                                                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                                    Flapjack.Spt.ln)))
                                                              (Flapjack.Spt.bn
                                                                (Flapjack.Spt.bn
                                                                  (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                    (Flapjack.Spt.ls PUnit.unit))
                                                                  Flapjack.Spt.ln)
                                                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                                    Flapjack.Spt.ln))))
                                                            Flapjack.Spt.ln,
                                                        snd := Flapjack.Spt.ln },
                                                    snd :=
                                                      { fst := Flapjack.WordLangProgHOL.skip,
                                                        snd := { fst := 274, snd := 42 } } } })
                                            (Option.some 272) List.nil
                                            (Option.some
                                              { fst := 2,
                                                snd :=
                                                  { fst := Flapjack.WordLangProgHOL.skip,
                                                    snd := { fst := 274, snd := 43 } } }))
                                          (Flapjack.WordLangProgHOL.seq
                                            (Flapjack.WordLangProgHOL.call
                                              (Option.some
                                                { fst := List.cons 2 (List.cons 4 List.nil),
                                                  snd :=
                                                    {
                                                      fst :=
                                                        {
                                                          fst :=
                                                            Flapjack.Spt.bn
                                                              (Flapjack.Spt.bn
                                                                (Flapjack.Spt.bn
                                                                  (Flapjack.Spt.bn
                                                                    (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                      (Flapjack.Spt.ls PUnit.unit))
                                                                    Flapjack.Spt.ln)
                                                                  (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                                      Flapjack.Spt.ln)))
                                                                (Flapjack.Spt.bn
                                                                  (Flapjack.Spt.bn
                                                                    (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                      (Flapjack.Spt.ls PUnit.unit))
                                                                    Flapjack.Spt.ln)
                                                                  (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                                      Flapjack.Spt.ln))))
                                                              Flapjack.Spt.ln,
                                                          snd := Flapjack.Spt.ln },
                                                      snd :=
                                                        { fst := Flapjack.WordLangProgHOL.skip,
                                                          snd := { fst := 274, snd := 44 } } } })
                                              (Option.some 269) List.nil
                                              (Option.some
                                                { fst := 2,
                                                  snd :=
                                                    { fst := Flapjack.WordLangProgHOL.skip,
                                                      snd := { fst := 274, snd := 45 } } }))
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
                                                                      (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                        (Flapjack.Spt.ls PUnit.unit))
                                                                      Flapjack.Spt.ln)
                                                                    (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                                        Flapjack.Spt.ln)))
                                                                  (Flapjack.Spt.bn
                                                                    (Flapjack.Spt.bn
                                                                      (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                        (Flapjack.Spt.ls PUnit.unit))
                                                                      Flapjack.Spt.ln)
                                                                    (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                                        Flapjack.Spt.ln))))
                                                                Flapjack.Spt.ln,
                                                            snd := Flapjack.Spt.ln },
                                                        snd :=
                                                          { fst := Flapjack.WordLangProgHOL.skip,
                                                            snd := { fst := 274, snd := 46 } } } })
                                                (Option.some 270) List.nil
                                                (Option.some
                                                  { fst := 2,
                                                    snd :=
                                                      { fst := Flapjack.WordLangProgHOL.skip,
                                                        snd := { fst := 274, snd := 47 } } }))
                                              (Flapjack.WordLangProgHOL.seq
                                                (Flapjack.WordLangProgHOL.call
                                                  (Option.some
                                                    { fst := List.cons 2 (List.cons 4 List.nil),
                                                      snd :=
                                                        {
                                                          fst :=
                                                            {
                                                              fst :=
                                                                Flapjack.Spt.bn
                                                                  (Flapjack.Spt.bn
                                                                    (Flapjack.Spt.bn
                                                                      (Flapjack.Spt.bn
                                                                        (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                          (Flapjack.Spt.ls PUnit.unit))
                                                                        Flapjack.Spt.ln)
                                                                      (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                                          Flapjack.Spt.ln)))
                                                                    (Flapjack.Spt.bn
                                                                      (Flapjack.Spt.bn
                                                                        (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                          (Flapjack.Spt.ls PUnit.unit))
                                                                        Flapjack.Spt.ln)
                                                                      (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                                          Flapjack.Spt.ln))))
                                                                  Flapjack.Spt.ln,
                                                              snd := Flapjack.Spt.ln },
                                                          snd :=
                                                            { fst := Flapjack.WordLangProgHOL.skip,
                                                              snd := { fst := 274, snd := 48 } } } })
                                                  (Option.some 269) List.nil
                                                  (Option.some
                                                    { fst := 2,
                                                      snd :=
                                                        { fst := Flapjack.WordLangProgHOL.skip,
                                                          snd := { fst := 274, snd := 49 } } }))
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
                                                                          (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                            (Flapjack.Spt.ls PUnit.unit))
                                                                          Flapjack.Spt.ln)
                                                                        (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                                            Flapjack.Spt.ln)))
                                                                      (Flapjack.Spt.bn
                                                                        (Flapjack.Spt.bn
                                                                          (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                            (Flapjack.Spt.ls PUnit.unit))
                                                                          Flapjack.Spt.ln)
                                                                        (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                                                                            Flapjack.Spt.ln))))
                                                                    Flapjack.Spt.ln,
                                                                snd := Flapjack.Spt.ln },
                                                            snd :=
                                                              { fst := Flapjack.WordLangProgHOL.skip,
                                                                snd := { fst := 274, snd := 50 } } } })
                                                    (Option.some 270) List.nil
                                                    (Option.some
                                                      { fst := 2,
                                                        snd :=
                                                          { fst := Flapjack.WordLangProgHOL.skip,
                                                            snd := { fst := 274, snd := 51 } } }))
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
                                                                            (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                              (Flapjack.Spt.ls PUnit.unit))
                                                                            Flapjack.Spt.ln)
                                                                          (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                            (Flapjack.Spt.bn
                                                                              (Flapjack.Spt.ls PUnit.unit)
                                                                              Flapjack.Spt.ln)))
                                                                        (Flapjack.Spt.bn
                                                                          (Flapjack.Spt.bn
                                                                            (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                              (Flapjack.Spt.ls PUnit.unit))
                                                                            Flapjack.Spt.ln)
                                                                          (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                            (Flapjack.Spt.bn
                                                                              (Flapjack.Spt.ls PUnit.unit)
                                                                              Flapjack.Spt.ln))))
                                                                      Flapjack.Spt.ln,
                                                                  snd := Flapjack.Spt.ln },
                                                              snd :=
                                                                { fst := Flapjack.WordLangProgHOL.skip,
                                                                  snd := { fst := 274, snd := 52 } } } })
                                                      (Option.some 272) List.nil
                                                      (Option.some
                                                        { fst := 2,
                                                          snd :=
                                                            { fst := Flapjack.WordLangProgHOL.skip,
                                                              snd := { fst := 274, snd := 53 } } }))
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
                                                                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                                (Flapjack.Spt.ls PUnit.unit))
                                                                              Flapjack.Spt.ln)
                                                                            (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                              (Flapjack.Spt.bn
                                                                                (Flapjack.Spt.ls PUnit.unit)
                                                                                Flapjack.Spt.ln)))
                                                                          (Flapjack.Spt.bn
                                                                            (Flapjack.Spt.bn
                                                                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                                (Flapjack.Spt.ls PUnit.unit))
                                                                              Flapjack.Spt.ln)
                                                                            (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                              (Flapjack.Spt.bn
                                                                                (Flapjack.Spt.ls PUnit.unit)
                                                                                Flapjack.Spt.ln))))
                                                                        Flapjack.Spt.ln,
                                                                    snd := Flapjack.Spt.ln },
                                                                snd :=
                                                                  { fst := Flapjack.WordLangProgHOL.skip,
                                                                    snd := { fst := 274, snd := 54 } } } })
                                                        (Option.some 272) List.nil
                                                        (Option.some
                                                          { fst := 2,
                                                            snd :=
                                                              { fst := Flapjack.WordLangProgHOL.skip,
                                                                snd := { fst := 274, snd := 55 } } }))
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
                                                                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                                  (Flapjack.Spt.ls PUnit.unit))
                                                                                Flapjack.Spt.ln)
                                                                              Flapjack.Spt.ln)
                                                                            (Flapjack.Spt.bn
                                                                              (Flapjack.Spt.bn
                                                                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                                  (Flapjack.Spt.ls PUnit.unit))
                                                                                Flapjack.Spt.ln)
                                                                              (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                                (Flapjack.Spt.bn
                                                                                  (Flapjack.Spt.ls PUnit.unit)
                                                                                  Flapjack.Spt.ln))))
                                                                          Flapjack.Spt.ln,
                                                                      snd := Flapjack.Spt.ln },
                                                                  snd :=
                                                                    { fst := Flapjack.WordLangProgHOL.skip,
                                                                      snd := { fst := 274, snd := 56 } } } })
                                                          (Option.some 272) List.nil
                                                          (Option.some
                                                            { fst := 2,
                                                              snd :=
                                                                { fst := Flapjack.WordLangProgHOL.skip,
                                                                  snd := { fst := 274, snd := 57 } } }))
                                                        (Flapjack.WordLangProgHOL.seq
                                                          (Flapjack.WordLangProgHOL.call
                                                            (Option.some
                                                              { fst := List.cons 2 (List.cons 4 List.nil),
                                                                snd :=
                                                                  {
                                                                    fst :=
                                                                      {
                                                                        fst :=
                                                                          Flapjack.Spt.bn
                                                                            (Flapjack.Spt.bn
                                                                              (Flapjack.Spt.bn
                                                                                (Flapjack.Spt.bn
                                                                                  (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                                    (Flapjack.Spt.ls PUnit.unit))
                                                                                  Flapjack.Spt.ln)
                                                                                Flapjack.Spt.ln)
                                                                              (Flapjack.Spt.bn
                                                                                (Flapjack.Spt.bn
                                                                                  (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                                    (Flapjack.Spt.ls PUnit.unit))
                                                                                  Flapjack.Spt.ln)
                                                                                (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                                  (Flapjack.Spt.bn
                                                                                    (Flapjack.Spt.ls PUnit.unit)
                                                                                    Flapjack.Spt.ln))))
                                                                            Flapjack.Spt.ln,
                                                                        snd := Flapjack.Spt.ln },
                                                                    snd :=
                                                                      { fst := Flapjack.WordLangProgHOL.skip,
                                                                        snd := { fst := 274, snd := 58 } } } })
                                                            (Option.some 269) List.nil
                                                            (Option.some
                                                              { fst := 2,
                                                                snd :=
                                                                  { fst := Flapjack.WordLangProgHOL.skip,
                                                                    snd := { fst := 274, snd := 59 } } }))
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
                                                                                  (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                                    (Flapjack.Spt.ls PUnit.unit))
                                                                                  Flapjack.Spt.ln)
                                                                                Flapjack.Spt.ln)
                                                                              (Flapjack.Spt.bn
                                                                                (Flapjack.Spt.bn
                                                                                  (Flapjack.Spt.bn Flapjack.Spt.ln
                                                                                    (Flapjack.Spt.ls PUnit.unit))
                                                                                  Flapjack.Spt.ln)
                                                                                Flapjack.Spt.ln))
                                                                            Flapjack.Spt.ln,
                                                                        snd := Flapjack.Spt.ln },
                                                                    snd :=
                                                                      { fst := Flapjack.WordLangProgHOL.skip,
                                                                        snd := { fst := 274, snd := 60 } } } })
                                                            (Option.some 270) List.nil
                                                            (Option.some
                                                              { fst := 2,
                                                                snd :=
                                                                  { fst := Flapjack.WordLangProgHOL.skip,
                                                                    snd :=
                                                                      { fst := 274,
                                                                        snd := 61 } } }))))))))))))))))))))))))))))))
theorem frame274_eq : InitECandidate.Proofs.StackFrameComputation.frameSize (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) optimized274.2.1 optimized274.2.2 = frame274 := by cbv
theorem slim274_eq : WordDepth.Executable.slim optimized274.2.2 = slim274 := by cbv
theorem frameEntry274_eq : frameEntry optimized274 = (274, frame274) := by
  unfold frameEntry
  rw [frame274_eq]
  rfl
theorem slimEntry274_eq : slimEntry optimized274 = (274, 3, slim274) := by
  unfold slimEntry
  rw [slim274_eq]
  rfl
#print axioms frame274_eq
#print axioms slim274_eq
end InitECandidate.Proofs.StackAnalysis
