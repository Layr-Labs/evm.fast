import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data862
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate830
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody862_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 432#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody862_1 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody862_0

def globalBody862_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 432#64]),
    Flapjack.Exp.const 32#64]

def globalBody862_3 : Prog (BitVec 64) :=
.seq globalBody862_1 globalBody862_2

def globalBody862_4 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 424#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody862_5 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 18#64, Flapjack.Exp.const 20#64]]) globalBody862_4

def globalBody862_6 : Prog (BitVec 64) :=
.seq globalBody862_3 globalBody862_5

def globalBody862_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 424#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 18#64, Flapjack.Exp.const 20#64]]

def globalBody862_8 : Prog (BitVec 64) :=
.seq globalBody862_6 globalBody862_7

def globalBody862_9 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 424#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 20#64],
      Flapjack.Exp.const 19#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody862_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody862_11 : Prog (BitVec 64) :=
.seq globalBody862_9 globalBody862_10

def globalBody862_12 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 17#64)) globalBody862_11

def globalBody862_13 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 424#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 17#64, Flapjack.Exp.const 20#64],
      Flapjack.Exp.const 18#64])
  (Flapjack.Exp.const 1#64)

def globalBody862_14 : Prog (BitVec 64) :=
.seq globalBody862_12 globalBody862_13

def globalBody862_15 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 464#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody862_16 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody862_15

def globalBody862_17 : Prog (BitVec 64) :=
.seq globalBody862_14 globalBody862_16

def globalBody862_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 464#64]),
    Flapjack.Exp.const 998902#64, Flapjack.Exp.const 15506597749690834871#64,
    Flapjack.Exp.const 13311379508201171970#64]

def globalBody862_19 : Prog (BitVec 64) :=
.seq globalBody862_17 globalBody862_18

def globalBody862_20 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 472#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody862_21 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody862_20

def globalBody862_22 : Prog (BitVec 64) :=
.seq globalBody862_19 globalBody862_21

def globalBody862_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 472#64]),
    Flapjack.Exp.const 63752#64, Flapjack.Exp.const 2878298490047003138#64, Flapjack.Exp.const 3700577164601600309#64]

def globalBody862_24 : Prog (BitVec 64) :=
.seq globalBody862_22 globalBody862_23

def globalBody862_25 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 480#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody862_26 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody862_25

def globalBody862_27 : Prog (BitVec 64) :=
.seq globalBody862_24 globalBody862_26

def globalBody862_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 480#64]),
    Flapjack.Exp.const 2401#64, Flapjack.Exp.const 17242047345525313946#64, Flapjack.Exp.const 15579492241104728066#64]

def globalBody862_29 : Prog (BitVec 64) :=
.seq globalBody862_27 globalBody862_28

def globalBody862_30 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 488#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody862_31 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody862_30

def globalBody862_32 : Prog (BitVec 64) :=
.seq globalBody862_29 globalBody862_31

def globalBody862_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 488#64]),
    Flapjack.Exp.const 48093#64, Flapjack.Exp.const 14397524800236640159#64, Flapjack.Exp.const 10016273463683084881#64]

def globalBody862_34 : Prog (BitVec 64) :=
.seq globalBody862_32 globalBody862_33

def globalBody862_35 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 496#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody862_36 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody862_35

def globalBody862_37 : Prog (BitVec 64) :=
.seq globalBody862_34 globalBody862_36

def globalBody862_38 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 496#64]),
    Flapjack.Exp.const 49140#64, Flapjack.Exp.const 7603452151126424148#64, Flapjack.Exp.const 760111669195932290#64]

def globalBody862_39 : Prog (BitVec 64) :=
.seq globalBody862_37 globalBody862_38

def globalBody862_40 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 504#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody862_41 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody862_40

def globalBody862_42 : Prog (BitVec 64) :=
.seq globalBody862_39 globalBody862_41

def globalBody862_43 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 504#64]),
    Flapjack.Exp.const 25814#64, Flapjack.Exp.const 8669529151676140297#64, Flapjack.Exp.const 4307224735379260034#64]

def globalBody862_44 : Prog (BitVec 64) :=
.seq globalBody862_42 globalBody862_43

def globalBody862_45 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 512#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody862_46 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody862_45

def globalBody862_47 : Prog (BitVec 64) :=
.seq globalBody862_44 globalBody862_46

def globalBody862_48 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "addr_from_words"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 512#64]),
    Flapjack.Exp.const 0#64, Flapjack.Exp.const 2421447037043915651#64, Flapjack.Exp.const 11294470620239562234#64]

def globalBody862_49 : Prog (BitVec 64) :=
.seq globalBody862_47 globalBody862_48

def globalBody862_50 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 520#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody862_51 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody862_50

def globalBody862_52 : Prog (BitVec 64) :=
.seq globalBody862_49 globalBody862_51

def globalBody862_53 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 520#64]),
        Flapjack.Exp.const 0#64],
    Flapjack.Exp.const 7249595157780304706#64]

def globalBody862_54 : Prog (BitVec 64) :=
.seq globalBody862_52 globalBody862_53

def globalBody862_55 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 520#64]),
        Flapjack.Exp.const 8#64],
    Flapjack.Exp.const 12676030261858484297#64]

def globalBody862_56 : Prog (BitVec 64) :=
.seq globalBody862_54 globalBody862_55

def globalBody862_57 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 520#64]),
        Flapjack.Exp.const 16#64],
    Flapjack.Exp.const 16708898399860066458#64]

def globalBody862_58 : Prog (BitVec 64) :=
.seq globalBody862_56 globalBody862_57

def globalBody862_59 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 520#64]),
        Flapjack.Exp.const 24#64],
    Flapjack.Exp.const 12074291595689605317#64]

def globalBody862_60 : Prog (BitVec 64) :=
.seq globalBody862_58 globalBody862_59

def globalBody862_61 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody862_62 : Prog (BitVec 64) :=
.seq globalBody862_60 globalBody862_61

def globalBody862_63 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody862_62

def globalBody862_64 : Prog (BitVec 64) :=
.seq globalBody862_8 globalBody862_63

def globalData862 : Decl (BitVec 64) :=
.function { name := "fork_init", inline := false, exported := false, params := [], body := globalBody862_64, returnShape := (Flapjack.Shape.one) }
def globalOutput862 := Pancake.PanLang.declToHOL globalData862
end InitECandidate.Proofs.FrontendStages.Declarations
