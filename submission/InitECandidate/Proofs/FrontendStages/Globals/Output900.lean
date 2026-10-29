import InitECandidate.Proofs.FrontendStages.Declarations.Data900
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody900_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 640#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody900_1 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody900_0

def globalBody900_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 640#64]),
    Flapjack.Exp.const 32#64]

def globalBody900_3 : Prog (BitVec 64) :=
.seq globalBody900_1 globalBody900_2

def globalBody900_4 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 632#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody900_5 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 18#64, Flapjack.Exp.const 20#64]]) globalBody900_4

def globalBody900_6 : Prog (BitVec 64) :=
.seq globalBody900_3 globalBody900_5

def globalBody900_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 632#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 18#64, Flapjack.Exp.const 20#64]]

def globalBody900_8 : Prog (BitVec 64) :=
.seq globalBody900_6 globalBody900_7

def globalBody900_9 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 632#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 20#64],
      Flapjack.Exp.const 19#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody900_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody900_11 : Prog (BitVec 64) :=
.seq globalBody900_9 globalBody900_10

def globalBody900_12 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 17#64)) globalBody900_11

def globalBody900_13 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 632#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 17#64, Flapjack.Exp.const 20#64],
      Flapjack.Exp.const 18#64])
  (Flapjack.Exp.const 1#64)

def globalBody900_14 : Prog (BitVec 64) :=
.seq globalBody900_12 globalBody900_13

def globalBody900_15 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 672#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody900_16 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody900_15

def globalBody900_17 : Prog (BitVec 64) :=
.seq globalBody900_14 globalBody900_16

def globalBody900_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 672#64]),
    Flapjack.Exp.const 998902#64, Flapjack.Exp.const 15506597749690834871#64,
    Flapjack.Exp.const 13311379508201171970#64]

def globalBody900_19 : Prog (BitVec 64) :=
.seq globalBody900_17 globalBody900_18

def globalBody900_20 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 680#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody900_21 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody900_20

def globalBody900_22 : Prog (BitVec 64) :=
.seq globalBody900_19 globalBody900_21

def globalBody900_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 680#64]),
    Flapjack.Exp.const 63752#64, Flapjack.Exp.const 2878298490047003138#64, Flapjack.Exp.const 3700577164601600309#64]

def globalBody900_24 : Prog (BitVec 64) :=
.seq globalBody900_22 globalBody900_23

def globalBody900_25 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 688#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody900_26 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody900_25

def globalBody900_27 : Prog (BitVec 64) :=
.seq globalBody900_24 globalBody900_26

def globalBody900_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 688#64]),
    Flapjack.Exp.const 2401#64, Flapjack.Exp.const 17242047345525313946#64, Flapjack.Exp.const 15579492241104728066#64]

def globalBody900_29 : Prog (BitVec 64) :=
.seq globalBody900_27 globalBody900_28

def globalBody900_30 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 696#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody900_31 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody900_30

def globalBody900_32 : Prog (BitVec 64) :=
.seq globalBody900_29 globalBody900_31

def globalBody900_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 696#64]),
    Flapjack.Exp.const 48093#64, Flapjack.Exp.const 14397524800236640159#64, Flapjack.Exp.const 10016273463683084881#64]

def globalBody900_34 : Prog (BitVec 64) :=
.seq globalBody900_32 globalBody900_33

def globalBody900_35 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 704#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody900_36 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody900_35

def globalBody900_37 : Prog (BitVec 64) :=
.seq globalBody900_34 globalBody900_36

def globalBody900_38 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 704#64]),
    Flapjack.Exp.const 49140#64, Flapjack.Exp.const 7603452151126424148#64, Flapjack.Exp.const 760111669195932290#64]

def globalBody900_39 : Prog (BitVec 64) :=
.seq globalBody900_37 globalBody900_38

def globalBody900_40 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 712#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody900_41 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody900_40

def globalBody900_42 : Prog (BitVec 64) :=
.seq globalBody900_39 globalBody900_41

def globalBody900_43 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 712#64]),
    Flapjack.Exp.const 25814#64, Flapjack.Exp.const 8669529151676140297#64, Flapjack.Exp.const 4307224735379260034#64]

def globalBody900_44 : Prog (BitVec 64) :=
.seq globalBody900_42 globalBody900_43

def globalBody900_45 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 720#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody900_46 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody900_45

def globalBody900_47 : Prog (BitVec 64) :=
.seq globalBody900_44 globalBody900_46

def globalBody900_48 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 720#64]),
    Flapjack.Exp.const 0#64, Flapjack.Exp.const 2421447037043915651#64, Flapjack.Exp.const 11294470620239562234#64]

def globalBody900_49 : Prog (BitVec 64) :=
.seq globalBody900_47 globalBody900_48

def globalBody900_50 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 728#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody900_51 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody900_50

def globalBody900_52 : Prog (BitVec 64) :=
.seq globalBody900_49 globalBody900_51

def globalBody900_53 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 728#64]),
        Flapjack.Exp.const 0#64],
    Flapjack.Exp.const 7249595157780304706#64]

def globalBody900_54 : Prog (BitVec 64) :=
.seq globalBody900_52 globalBody900_53

def globalBody900_55 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 728#64]),
        Flapjack.Exp.const 8#64],
    Flapjack.Exp.const 12676030261858484297#64]

def globalBody900_56 : Prog (BitVec 64) :=
.seq globalBody900_54 globalBody900_55

def globalBody900_57 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 728#64]),
        Flapjack.Exp.const 16#64],
    Flapjack.Exp.const 16708898399860066458#64]

def globalBody900_58 : Prog (BitVec 64) :=
.seq globalBody900_56 globalBody900_57

def globalBody900_59 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 728#64]),
        Flapjack.Exp.const 24#64],
    Flapjack.Exp.const 12074291595689605317#64]

def globalBody900_60 : Prog (BitVec 64) :=
.seq globalBody900_58 globalBody900_59

def globalBody900_61 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody900_62 : Prog (BitVec 64) :=
.seq globalBody900_60 globalBody900_61

def globalBody900_63 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody900_62

def globalBody900_64 : Prog (BitVec 64) :=
.seq globalBody900_8 globalBody900_63

def globalData900 : Decl (BitVec 64) := .function { name := "fork_init", inline := false, exported := false, params := [], body := globalBody900_64, returnShape := (Flapjack.Shape.one) }
def globalOutput900 := Pancake.PanLang.declToHOL globalData900
end InitECandidate.Proofs.FrontendStages.Declarations
